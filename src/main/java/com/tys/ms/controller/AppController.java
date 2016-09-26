package com.tys.ms.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.tys.ms.model.UserProfile;

import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tys.ms.model.User;
import com.tys.ms.service.UserProfileService;
import com.tys.ms.service.UserService;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {
    @Autowired
    UserService userService;

    @Autowired
    UserProfileService userProfileService;

    @Autowired
    MessageSource messageSource;

    @Autowired
    PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

    @Autowired
    AuthenticationTrustResolver authenticationTrustResolver;

    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

    private boolean isCurrentAuthenticationAnonymous() {
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authenticationTrustResolver.isAnonymous(authentication);
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "login";
        } else {
            return "redirect:/info";
        }
    }

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            //new SecurityContextLogoutHandler().logout(request, response, auth);
            persistentTokenBasedRememberMeServices.logout(request, response, auth);
            SecurityContextHolder.getContext().setAuthentication(null);
        }
        return "redirect:/login?logout";
    }

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String userInfo(ModelMap model) {
        User users = userService.findByJobId(getPrincipal());
        model.addAttribute("users", users);
        model.addAttribute("loginUser", getPrincipal());
        model.addAttribute("loginUserType", users.getUserProfile());
        return "userInfo";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listUsers(ModelMap model) {
        List<User> users = null;
        User loginUser = userService.findByJobId(getPrincipal());
        if (loginUser.getUserProfile().getType().equals("ADMIN")) {
            users = userService.findAllUsers();

            Iterator<User> it = users.iterator();
            while(it.hasNext()) {
                if(it.next().getLeaderId().equals("NONE")) {
                    it.remove();
                }
            }

//            while (users.iterator().hasNext()) {
//                if (users.iterator().next().getLeaderId().equals("NONE")) {
//                    users.iterator().remove();
//                }
//            }
        } else {
            users = userService.findAllDownUsers(getPrincipal());
        }
//        List<User> users = userService.findAllDownUsers(getPrincipal());
        model.addAttribute("users", users);
        model.addAttribute("loginUser", getPrincipal());
        return "userList";
    }

//    @RequestMapping(value = { "/", "/all-list" }, method = RequestMethod.GET)
//    public String listAllUsers(ModelMap model) {
//        List<User> users = userService.findAllUsers();
//        model.addAttribute("users", users);
//        model.addAttribute("loginUser", getPrincipal());
//        return "userList";
//    }

    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String newUser(ModelMap model) {
        User user = new User();
        int upId = userService.findByJobId(getPrincipal()).getUserProfile().getId();
        List<UserProfile> userProfileList = userProfileService.findDownAll(upId);
        model.addAttribute("user", user);
        model.addAttribute("edit", false);
        model.addAttribute("profile", userProfileList);
        model.addAttribute("loginUser", getPrincipal());
        return "registration";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String saveUser(@Valid User user, BindingResult result, ModelMap model) {
        int upId = userService.findByJobId(getPrincipal()).getUserProfile().getId();
        if (result.hasErrors()) {
            List<UserProfile> userProfileList = userProfileService.findDownAll(upId);
            model.addAttribute("profile", userProfileList);
            return "registration";
        }

        if(!userService.isUserJobIdUnique(user.getId(), user.getJobId())){
            List<UserProfile> userProfileList = userProfileService.findDownAll(upId);
            model.addAttribute("profile", userProfileList);
            FieldError jobIdError =new FieldError("user","jobId",messageSource.getMessage("non.unique.jobId", new String[]{user.getJobId()}, Locale.getDefault()));
            result.addError(jobIdError);
            return "registration";
        }

        if(!user.getPassword().equals(user.getRetypePassword() ) ) {
            List<UserProfile> userProfileList = userProfileService.findDownAll(upId);
            model.addAttribute("profile", userProfileList);
            FieldError pwdError =new FieldError("user","jobId",messageSource.getMessage("valid.passwordConfDiff", new String[]{user.getJobId()}, Locale.getDefault()));
            result.addError(pwdError);
            return "registration";
        }

        if (upId == 1) {
            user.setHasPassed(true);
        }
        userService.saveUser(user);

        model.addAttribute("success", "User " + user.getName() + " " + " registered successfully");
        model.addAttribute("loginUser", getPrincipal());
        return "registrationDone";
    }

    @RequestMapping(value = "/edit-user-{jobId}", method = RequestMethod.GET)
    public String editUser(@PathVariable String jobId, ModelMap model) {
        User user = userService.findByJobId(jobId);
        model.addAttribute("user", user);
        model.addAttribute("edit", true);
        int upId = userService.findByJobId(jobId).getUserProfile().getId();
        List<UserProfile> userProfileList = userProfileService.findDownAll(upId);
        model.addAttribute("profile", userProfileList);
        model.addAttribute("loginUser", getPrincipal());
        return "registration";
    }

    @RequestMapping(value = { "/edit-user-{jobId}" }, method = RequestMethod.POST)
    public String updateUser(@Valid User user, BindingResult result, ModelMap model, @PathVariable String jobId) {
        if (result.hasErrors()) {
            model.addAttribute("edit", true);
            int upId = userService.findByJobId(jobId).getUserProfile().getId();
            List<UserProfile> userProfileList = userProfileService.findDownAll(upId);
            model.addAttribute("profile", userProfileList);
            return "registration";
        }

        userService.updateUser(user);

        model.addAttribute("success", "User " + user.getName()  + " updated successfully");
        model.addAttribute("loginUser", getPrincipal());
        return "registrationDone";
    }

    @RequestMapping(value = "/change-pwd-{jobId}", method = RequestMethod.GET)
    public String changePwd(ModelMap model, @PathVariable String jobId) {
        User user = userService.findByJobId(jobId);
        model.addAttribute("user", user);
        return "cp";
    }

    @RequestMapping(value = "/change-pwd-{jobId}", method = RequestMethod.POST)
    public String changePwd(User user, BindingResult result, ModelMap model, @PathVariable String jobId) {
        User user2 = userService.findByJobId(jobId);
        if (!BCrypt.checkpw(user.getOldPassword(), user2.getPassword())) {
            FieldError passwordError =new FieldError("user","password",messageSource.getMessage("valid.oldPassword", new String[]{user.getPassword()}, Locale.getDefault()));
            result.addError(passwordError);
            return "cp";
        } else if(!user.getPassword().equals(user.getRetypePassword())) {
            System.out.println(user.getPassword());
            System.out.println(user.getRetypePassword());
            FieldError passwordError =new FieldError("user","password",messageSource.getMessage("valid.passwordConfDiff", new String[]{user.getPassword()}, Locale.getDefault()));
            result.addError(passwordError);
            return "cp";
        } else {
            user2.setPassword(String.valueOf(user.getPassword()));
            userService.updateUser(user2);
            model.addAttribute("success", "User " + user.getName()  + " updated successfully");
            model.addAttribute("loginUser", getPrincipal());
            return "cpDone";
        }
    }

    @RequestMapping(value = { "/delete-user-{jobId}" }, method = RequestMethod.GET)
    public String deleteUser(@PathVariable String jobId) {
        userService.deleteUserByJobId(jobId);
        return "redirect:/list";
    }

    @ModelAttribute("roles")
    public List<UserProfile> initializeProfiles() {
        return userProfileService.findAll();
    }

    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        model.addAttribute("loginUser", getPrincipal());
        return "accessDenied";
    }
}

package com.tys.ms.security;

import com.tys.ms.dao.UserAttemptsDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class AppAuthenticationFailureHandler implements AuthenticationFailureHandler {
    @Autowired
    UserAttemptsDaoImpl userAttemptsDao;

    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        System.out.println("--> bad Authentication");
        userAttemptsDao.updateFailAttempts(httpServletRequest.getParameter("jobId"));
        httpServletResponse.sendRedirect("/");
    }
}

package com.tys.ms.service;

import com.tys.ms.model.User;
import java.util.List;



public interface UserService {
	
	User findById(int id);
	
	User findBySSO(String sso);
	
	void saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUserBySSO(String sso);

	List<User> findAllUsers();

    List<User> findDownUsers(String upBossId);

	List<User> findTwiceDownUsers(String upBossId);
	
	boolean isUserSSOUnique(Integer id, String sso);

}
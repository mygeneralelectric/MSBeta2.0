package com.tys.ms.dao;

import com.tys.ms.model.User;

import java.util.List;

public interface UserDao {
	User findById(int id);
	
	User findBySSO(String sso);
	
	void save(User user);
	
	void deleteBySSO(String sso);
	
	List<User> findAllUsers();

	List<User> findDownUsers(String upBossId);

	List<User> findTwiceDownUsers(String upBossId);
}


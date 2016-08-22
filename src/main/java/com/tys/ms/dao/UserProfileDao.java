package com.tys.ms.dao;

import java.util.List;
import com.tys.ms.model.UserProfile;

public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}

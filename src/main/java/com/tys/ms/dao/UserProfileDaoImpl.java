package com.tys.ms.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

import com.tys.ms.model.UserProfile;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

@Repository("userProfileDao")
public class UserProfileDaoImpl extends AbstractDao<Integer, UserProfile>implements UserProfileDao{

	public UserProfile findById(int id) {
		return getByKey(id);
	}

	@Override
	public List<UserProfile> findDown(int upId) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.gt("id", upId));
        return (List<UserProfile>)crit.list();
	}

	public UserProfile findByType(String type) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("type", type));
		UserProfile userProfile = (UserProfile) crit.uniqueResult();
		System.out.println(userProfile.getType());
		return (UserProfile) crit.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<UserProfile> findAll(){
		Criteria crit = createEntityCriteria();
		crit.addOrder(Order.asc("type"));
		return (List<UserProfile>)crit.list();
	}

    @SuppressWarnings("unchecked")
    public Set<UserProfile> findAllSet(){
        Set<UserProfile> set = null;
        set.add(getByKey(1));
        set.add(getByKey(2));
        set.add(getByKey(3));
        set.add(getByKey(4));
        return set;
    }


}

package com.tys.ms.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.StringTokenizer;

import com.tys.ms.model.User;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {
    static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    public User findById(int id) {
        User user = getByKey(id);
        if(user!=null){
            Hibernate.initialize(user.getUserProfiles());
        }
        return user;
    }

    public User findBySSO(String sso) {
        logger.info("SSO : {}", sso);
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ssoId", sso));
        User user = (User)crit.uniqueResult();
        if(user!=null){
            Hibernate.initialize(user.getUserProfiles());
        }
        return user;
    }

    @SuppressWarnings("unchecked")
    public List<User> findAllUsers() {
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("name"));
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<User> users = (List<User>) criteria.list();

        // No need to fetch userProfiles since we are not showing them on list page. Let them lazy load.
        // Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
        return users;
    }

    public List<User> findTwiceDownUsers(String upBossId) {
        List<User> targetUsers = null;
        List<User> users1 = findDownUsers(upBossId);
        targetUsers = users1;
        List<User> users2 = null;
        for (User user1 : users1) {
            users2 = findDownUsers(user1.getSsoId());
        }
        for (User user2 : users2) {
            targetUsers.add(user2);
            System.out.println(user2.getSsoId());
            System.out.println(targetUsers.size());
        }
        return targetUsers;
    }

    public List<User> findDownUsers(String upBossId) {
        logger.info("upBossId : {}", upBossId);
        Criteria crit = createEntityCriteria();
        List<User> users  = crit.add(Restrictions.eq("upBossId", upBossId))
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY)
                .list();

        // No need to fetch userProfiles since we are not showing them on list page. Let them lazy load.
        // Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
        return users;
    }

    public void save(User user) {
        persist(user);
    }

    public void deleteBySSO(String sso) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ssoId", sso));
        User user = (User)crit.uniqueResult();
        delete(user);
    }
}

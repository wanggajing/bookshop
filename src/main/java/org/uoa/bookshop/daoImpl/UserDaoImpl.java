package org.uoa.bookshop.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.uoa.bookshop.dao.BaseDao;
import org.uoa.bookshop.dao.UserDao;
import org.uoa.bookshop.domain.User;

public class UserDaoImpl extends BaseDao implements UserDao {
	

	@Override
	public void saveUser(User user) {
		Session session = getSession();
		session.save(user);
	}

	@Override
	public User validateUser(String username, String password) {
		String hql = "from User u where u.username=? and u.password=?";
		Session session = getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, username);
		query.setParameter(1, password);
		List<User> users = (List<User>)query.list();
		if(users.size()!=0)
		{
			User user = (User)users.get(0);
			return user;
		}
		return null;
	}

}

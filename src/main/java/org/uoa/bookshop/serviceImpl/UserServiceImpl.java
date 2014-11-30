package org.uoa.bookshop.serviceImpl;

import org.uoa.bookshop.dao.UserDao;
import org.uoa.bookshop.domain.User;
import org.uoa.bookshop.service.UserService;

public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	@Override
	public void saveUser(User user) {
		userDao.saveUser(user);
	}

	@Override
	public User validateUser(String username, String password) {
		return userDao.validateUser(username, password);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}

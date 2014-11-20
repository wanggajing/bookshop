package org.uoa.bookshop.dao;

import org.uoa.bookshop.domain.User;

public interface UserDao {
	public void saveUser(User user);
	public User validateUser(String username, String password);
}

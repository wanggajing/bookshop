package org.uoa.bookshop.service;

import org.uoa.bookshop.domain.User;

public interface UserService {
	public void saveUser(User user);
	public User validateUser(String username, String password);
}

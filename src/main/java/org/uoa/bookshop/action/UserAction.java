package org.uoa.bookshop.action;

import java.util.Map;

import org.uoa.bookshop.domain.User;
import org.uoa.bookshop.service.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	
	private User user;
	protected UserService userService;
	/**
	 * register an new user
	 */
	public String register() throws Exception {
		userService.saveUser(user);
		return SUCCESS;
	}
	/**
	 * user login
	 */
	public String execute() throws Exception {
		User u = userService.validateUser(user.getUsername(), user.getPassword());
		if(u!=null) {
			Map session = ActionContext.getContext().getSession();
			session.put("user", u);
			return SUCCESS;
		}
		return ERROR;
	}
	
	public String logout() throws Exception {
		Map session = ActionContext.getContext().getSession();
		session.remove("user");
		return SUCCESS;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
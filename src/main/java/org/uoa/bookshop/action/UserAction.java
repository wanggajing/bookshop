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
}
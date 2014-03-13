package amigo.ssh;

import com.opensymphony.xwork2.ActionSupport;

public class RegAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private UserForm user;

	private UserManager userManager;

	public String execute() {
		try {
			// ÓÃ»§×¢²á
			userManager.userReg(user);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}

	}

	public UserForm getUser() {
		return user;
	}

	public void setUser(UserForm user) {
		this.user = user;
	}

	public UserManager getUserManager() {
		return userManager;
	}

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}

}

package amigo.ssh;

import org.apache.commons.beanutils.BeanUtils;

import amigo.ssh.dao.BaseDao;
import amigo.ssh.dao.User;

public class UserManagerImpl implements UserManager {
	private BaseDao dao = null;

	public void userReg(UserForm form) throws Exception {

		User user = new User();
		BeanUtils.copyProperties(user, form);

		dao.saveObject(user);

	}

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}

}

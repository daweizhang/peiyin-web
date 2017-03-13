package voice.com.biz.Impl;

import java.util.List;

import voice.com.biz.UserTypeBiz;
import voice.com.dao.UserTypeDao;
import voice.com.pojo.Dtype;

public class UserTypeBizImpl implements UserTypeBiz {

	// 注入dao类
	private UserTypeDao userTypeDao;

	public void setUserTypeDao(UserTypeDao userTypeDao) {
		this.userTypeDao = userTypeDao;
	}

	/**
	 * 测试查询所有的用户类型
	 */
	public List<Dtype> findUserType() {
		String hql = "from Dtype d";
		List<Dtype> listType = userTypeDao.find(hql);
		return listType;
	}

}

package voice.com.biz.Impl;

import java.util.List;

import voice.com.biz.IfehUsersBiz;
import voice.com.dao.IfehUsersDao;
import voice.com.pojo.IfehUsers;

public class IfehUsersBizImpl implements IfehUsersBiz{
	
	private IfehUsersDao ifehUsersDao;

	public void setIfehUsersDao(IfehUsersDao ifehUsersDao) {
		this.ifehUsersDao = ifehUsersDao;
	}

	//添加用户英文字段
	public String ehusave(IfehUsers ehus) {
		try {
			ifehUsersDao.save(ehus);
			return "222";
		} catch (Exception e) {
			return "333";
			//e.printStackTrace();
		}
		
	}

	//根据Users查询该用户的英文字段
	public List<IfehUsers> findehusers(String users) {
		String hql="from IfehUsers ie where ie.ififts=?";
		List<IfehUsers> ehlist=ifehUsersDao.find(hql, users);
		return ehlist;
	}

	//修改Users字段
	public String updatehus(IfehUsers ehd) {
		try {
			ifehUsersDao.marge(ehd);
			return "222";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			return "333";
		}
	}
    
}

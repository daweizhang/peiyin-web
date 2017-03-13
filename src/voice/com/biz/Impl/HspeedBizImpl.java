package voice.com.biz.Impl;

import java.util.List;

import org.apache.log4j.Logger;

import voice.com.biz.HspeedBiz;
import voice.com.dao.HspeedDao;
import voice.com.pojo.Hspeed;

public class HspeedBizImpl implements HspeedBiz {
	private Logger logger = Logger.getLogger(LgtypeBizImpl.class);
	private HspeedDao hspeedDao;

	public void setHspeedDao(HspeedDao hspeedDao) {
		this.hspeedDao = hspeedDao;
	}

	// 查询所有的语速控制
	public List<Hspeed> findHspeed() {
		List<Hspeed> listhp = null;
		String hql = "from Hspeed h";
		try {
			listhp = hspeedDao.find(hql);
			logger.debug("语言类型查询成功!");
		} catch (Exception e) {
			logger.debug("语言类型查询失败!");
			e.printStackTrace();
		}
		return listhp;
	}

}

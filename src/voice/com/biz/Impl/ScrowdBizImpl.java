package voice.com.biz.Impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import voice.com.biz.ScrowdBiz;
import voice.com.dao.ScrowdDao;
import voice.com.pojo.Scrowd;

/**
 * 人群类型BizImpl
 * 
 * @author dell
 * 
 */
public class ScrowdBizImpl implements ScrowdBiz {
	private Logger logger = Logger.getLogger(ScrowdBizImpl.class);
	private ScrowdDao scrowdDao;

	public void setScrowdDao(ScrowdDao scrowdDao) {
		this.scrowdDao = scrowdDao;
	}

	/**
	 * 查询所有的人群类型(中文)
	 */
	public List<Scrowd> findScrowd() {
		List<Scrowd> listsrcowd = new ArrayList<Scrowd>();
		try {
			listsrcowd = scrowdDao.find("from Scrowd s");
			logger.debug("查询所有人群类型成功!");
		} catch (Exception e) {
			logger.debug("查询所有人群类型失败!");
			e.printStackTrace();
		}
		return listsrcowd;
	}

}

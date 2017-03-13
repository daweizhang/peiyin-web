package voice.com.biz.Impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import voice.com.biz.LgtypeBiz;
import voice.com.dao.LgtypeDao;
import voice.com.pojo.Lgtype;

/**
 * 语言类型BizImpl
 * 
 * @author dell
 */
public class LgtypeBizImpl implements LgtypeBiz {
	private Logger logger = Logger.getLogger(LgtypeBizImpl.class);

	private LgtypeDao lgtypeDao;

	public void setLgtypeDao(LgtypeDao lgtypeDao) {
		this.lgtypeDao = lgtypeDao;
	}

	/**
	 * 查询所有的语言类型(中文)
	 */
	public List<Lgtype> findLgtype() {
		List<Lgtype> listlgtype = new ArrayList<Lgtype>();
		try {
			listlgtype = lgtypeDao.find("from Lgtype l");
			logger.debug("语言类型查询成功!");
		} catch (Exception e) {
			logger.debug("语言类型查询失败!");
			e.printStackTrace();
		}
		return listlgtype;
	}

}

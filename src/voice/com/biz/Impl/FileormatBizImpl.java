package voice.com.biz.Impl;

import java.util.List;

import org.apache.log4j.Logger;

import voice.com.biz.FileormatBiz;
import voice.com.dao.FileormatDao;
import voice.com.pojo.Fileormat;

public class FileormatBizImpl implements FileormatBiz {
	private Logger logger = Logger.getLogger(LgtypeBizImpl.class);
	private FileormatDao fileormatDao;

	public void setFileormatDao(FileormatDao fileormatDao) {
		this.fileormatDao = fileormatDao;
	}

	// 查询所有的文件格式
	public List<Fileormat> findFileormat() {
		List<Fileormat> listfm = null;
		String hql = "from Fileormat f";
		try {
			listfm = fileormatDao.find(hql);
			logger.debug("文件格式查询成功!");
		} catch (Exception e) {
			logger.debug("文件格式查询失败!");
			e.printStackTrace();
		}
		return listfm;
	}

}

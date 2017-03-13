package voice.com.biz.Impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import voice.com.biz.TvoiceBiz;
import voice.com.dao.TvoiceDao;
import voice.com.pojo.Tvoice;

/**
 * 配音类型Biz
 * 
 * @author dell
 * 
 */
public class TvoiceBizImpl implements TvoiceBiz {
	private Logger logger = Logger.getLogger(TvoiceBizImpl.class);

	private TvoiceDao tvoiceDao;

	public void setTvoiceDao(TvoiceDao tvoiceDao) {
		this.tvoiceDao = tvoiceDao;
	}

	/**
	 * 查询所有的配音类型(中文)
	 */
	public List<Tvoice> findtvoice() {
		List<Tvoice> listtvoice = new ArrayList<Tvoice>();
		try {
			listtvoice = tvoiceDao.find("from Tvoice t");
			logger.debug("查询所有的配音类型成功！");
		} catch (Exception e) {
			logger.debug("查询所有的配音类型失败！");
			e.printStackTrace();
		}
		return listtvoice;
	}

}

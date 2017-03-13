package voice.com.biz;

import java.util.List;

import voice.com.pojo.Tvoice;

/**
 * 配音类型Biz
 * 
 * @author dell
 * 
 */
public interface TvoiceBiz {
	/**
	 * 查询所有的配音类型(中文)
	 * 
	 */
	public List<Tvoice> findtvoice();

}

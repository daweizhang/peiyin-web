package voice.com.biz;

import java.util.List;

import voice.com.pojo.Lgtype;

/**
 * 语言类型Biz
 * 
 * @author dell
 * 
 */
public interface LgtypeBiz {

	/**
	 * 查询所有的语言类型(中文)
	 */
	public List<Lgtype> findLgtype();

}

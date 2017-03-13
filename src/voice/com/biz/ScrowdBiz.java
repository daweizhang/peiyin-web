package voice.com.biz;

import java.util.List;

import voice.com.pojo.Scrowd;

/**
 * 人群类型Biz
 * 
 * @author dell
 * 
 */
public interface ScrowdBiz {
	/**
	 * 查询所有的人群类型(中文)
	 */
	public List<Scrowd> findScrowd();

}

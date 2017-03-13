package voice.com.biz;

import java.util.List;
import java.util.Map;

import voice.com.pojo.Works;
import voice.com.util.PaginationSupport;

public interface WorksBiz {
	/**
	 * 配音员作品
	 */
	String isnertworks(Works wo);

	/**
	 * 分页查询配音员作品
	 */
	public PaginationSupport<Works> workslist(String userName, int pageSize,
			int currPageNo);

	/**
	 * 根据作品ID和User查询作品的信息
	 */
	public List<Works> findwoks(String id, String user);

	/**
	 * 根据ID修改
	 */
	public String updateworks(Works wo);

	/**
	 * 根据ID删除作品
	 */
	public String deleteworks(Works wos);

	/**
	 * 配音员主页的作品列表
	 */
	public List<Works> findworksvoice(String sfgk);

	/**
	 * 分页查询公开的作品
	 */
	public PaginationSupport<Works> voiceworklist(String sfgk, int pageSize,
			int currPageNo, Map<String, String> mapwos);

	/**
	 * 根据作品ID查询作品
	 */
	public Works finws(String ids);

}

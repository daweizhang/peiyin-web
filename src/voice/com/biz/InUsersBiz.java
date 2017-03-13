package voice.com.biz;

import java.util.List;
import java.util.Map;

import voice.com.pojo.InUsers;
import voice.com.util.PaginationSupport;

public interface InUsersBiz {

	/**
	 * 登录功能(中英共享)
	 * 
	 * @return
	 */
	public List<InUsers> findUser(InUsers users);

	/**
	 * 判断用户名是否存在(中文)
	 */
	public List<InUsers> findUsersc(String yohm);

	/**
	 * 注册功能(中文)
	 */
	int saveUsers(InUsers u);

	/**
	 * 判断用户名与绑定的邮箱是否绑定
	 */
	public List<InUsers> findUserpd(String iusx, String iuemli);

	/**
	 * 修改用户密码
	 */
	public String updateUser(InUsers us);

	/**
	 * 动态多条件分页查询所有配音员
	 */
	public PaginationSupport<InUsers> userlist(int pageSize, int currPageNo,
			String iutypeid, String its, int pxid, Map<String, String> mapssx);

	/**
	 * 上传用户头像
	 */
	String updatload(InUsers is);

	/**
	 * 根据ID查询配音员
	 */
	InUsers findgetu(String sid);

	/**
	 * 查询ID是否存在
	 */
	List<InUsers> findinuid(String uids);

	/**
	 * 后台查询所有用户列表
	 */
	PaginationSupport<InUsers> findinUsersdate(int pageSize, int currPageNo,
			String ID, String UserName);

}

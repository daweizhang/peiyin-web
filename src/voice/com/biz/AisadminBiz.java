package voice.com.biz;

import java.util.List;
import java.util.Map;

import voice.com.pojo.Aisadmin;
import voice.com.util.PaginationSupport;

public interface AisadminBiz {
	/**
	 * 管理员登录
	 * 
	 * @Title: loginAisadmin
	 * @author xulongfei
	 * @param objects
	 * @return
	 */
	public Aisadmin loginAisadmin(Object[] objects);

	/**
	 * 修改管理员信息
	 * 
	 * @Title: saveAisadMin
	 * @author xulongfei
	 * @param aisadmin
	 */
	public void saveAisadMin(Aisadmin aisadmin);

	/**
	 * 获取所有权限为2的管理员信息
	 * 
	 * @Title: getAisadminList
	 * @author xulongfei
	 * @return
	 */
	public List<Aisadmin> getAisadminList(PaginationSupport<Aisadmin> pageinfo,
			Map<String, String> query);

	/**
	 * 获取符合查询条件的总记录数
	 * 
	 * @Title: getAisadMinCount
	 * @author xulongfei
	 * @param query
	 * @return
	 */
	public int getAisadMinCount(Map<String, String> query);

	/**
	 * 根据id获取管理信息
	 * 
	 * @Title: getAisadminbyId
	 * @author xulongfei
	 * @param aid
	 * @return
	 */
	public Aisadmin getAisadminbyId(String aid);

	/**
	 * 根据IP更新管理员头像图片
	 * 
	 * @Title: updateAisadminbyId
	 * @author xulongfei
	 * @param aisadmin
	 * @return
	 */
	public int updateAisadminbyId(Aisadmin aisadmin);

	/**
	 * 根据管理员信息更新数据
	 * 
	 * @Title: updateAisadminby
	 * @author xulongfei
	 * @param aisadmin
	 */
	public int updateAisadminby(Aisadmin aisadmin);

	/**
	 * 删除管理员信息
	 * 
	 * @Title: deleteAdminData
	 * @author xulongfei
	 * @param aisadmin
	 */
	public void deleteAdminData(Aisadmin aisadmin);

	/**
	 * 添加管理
	 * 
	 * @Title: addAdmin
	 * @author xulongfei
	 * @param aisadmin
	 */
	public void addAdmin(Aisadmin aisadmin);

	/**
	 * 根据管理员账号获取管理员信息是否存在
	 * 
	 * @Title: getAisadminbyAdminName
	 * @author xulongfei
	 * @param aisadmName
	 * @return
	 */
	public Boolean getAisadminbyAdminName(String aisadmName);

	/**
	 * 根据管理员账号更新密码
	 * 
	 * @Title: updateAdminPasswordbyid
	 * @author xulongfei
	 * @param aisadmin
	 * @return
	 */
	public int updateAdminPasswordbyid(Aisadmin aisadmin);

}

package voice.com.biz;

import java.util.List;

import voice.com.pojo.Partpate;
import voice.com.util.PaginationSupport;

public interface PartpateBiz {

	/**
	 * 根据任务ID和竞标状态查询任务条数
	 */
	public int finpartpa(String btenid, String username, String jbzt);

	/**
	 * 竞标人分页查询
	 */
	public PaginationSupport<Partpate> findpartpate(String btenid,
			String username, String jbzt, int pageSize, int currPageNo);

	/**
	 * 参与竞标
	 */
	public String savepartpate(Partpate par);

	/**
	 * 根据ID和当前User查询竞标信息
	 */
	public List<Partpate> findOrder(String pid, String userName);

	/**
	 * 根据ID和当前任务方User修改竞标信息，添加零时订单数据
	 */
	public String updatepartpate(Partpate par);

	/**
	 * 动态条件(后台) 根据支付状态查询所有待支付的订单
	 */
	public PaginationSupport<Partpate> findPendingOrders(String ptemporaryid,
			String paycount, int pageSize, int currPageNo);

	/**
	 * 根据ID查询任务订单
	 */
	public Partpate findPartpate(String pid);

	/**
	 * 更新零时订单(后台管理员)
	 */
	public String updateOrder(Partpate prt);

	/**
	 * 查询未支付的订单 (分页查询)
	 */
	public PaginationSupport<Partpate> findunpaid(String userName, String ztid,
			int pageSize, int currPageNo);

	/**
	 * 查询当前配音员的竞标记录
	 */
	public PaginationSupport<Partpate> findBiddings(String userName,
			String jbzt, int pageSize, int currPageNo);

	/**
	 * 查询竞标成功 客服 支付成功的任务订单
	 */
	public PaginationSupport<Partpate> findbinseccessoders(String userName,
			String jbzt, String zfzt, int pageSize, int currPageNo);

	/**
	 * 删除配音员竞标中的信息
	 */
	public String deleteBidings(Partpate p);

	/**
	 * 根据订单ID 和 临时订单ID 查询订单
	 */
	public List<Partpate> mentsptoders(String pids, String nsids);

	/**
	 * 判读当前配音员是否参与配音
	 */
	public List<Partpate> findperberdd(String bid, String usersid);

	/**
	 * 查询所有支付成功的订单(后台方法)
	 */
	public PaginationSupport<Partpate> findAllpaid(String pids, String pyuser,
			String rwfuser, String lxzt, String tijzt, String dkztint,
			int pageSize, int currPageNo);

	/**
	 * 查询已完成的订单列表
	 */
	public PaginationSupport<Partpate> findywcorders(String rus,
			String userName, String shzt, int pageSize, int currPageNo);
}

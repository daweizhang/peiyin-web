package voice.com.biz;

import java.util.List;
import java.util.Map;

import voice.com.pojo.Btender;
import voice.com.util.PaginationSupport;
import voice.com.vo.BtenderListVO;
import voice.com.vo.BtenderVO;

public interface BtenderBiz {

	// 新增任务
	public String insertBtender(Btender bten);

	// 任务列表(分页展示)
	public PaginationSupport<BtenderVO> selectBtender(String userName,
			String bts, int pageSize, int currPageNo);

	// 总条数
	public int counpten(String userName, String bts);

	// 根据任务ID删除任务
	public String deletebtender(Btender bten);

	// 根据任务ID和User查询任务
	public List<Btender> findbtens(String bid, String users);

	// 修改任务
	public String updaterw(Btender bten);
	
	
	//david add get mail
	public String findEmailbyId(String bid);

	// 多条件动态查询任务展示总条数查询
	public int listcount(Map<String, String> mapbtender);

	// 多条件动态查询任务主页展示
	public PaginationSupport<BtenderListVO> finbtenderlist(int orderbys,
			int pageSize, int currPageNo, Map<String, String> mapbtender,
			String[] ages);

	// 根据ID查询查询任务
	public Btender findbtender(String bid);

	// 根据任务状态和任务交易状态和当前User来查询任务
	public List<BtenderVO> selectBtenderinvitation(String UserName,
			String rwztnts, String ztzid);

	/**
	 * 后台任务列表查询
	 */
	public PaginationSupport<Btender> findtasklist(String taskName,
			String userName, int pageSize, int currPageNo);
}

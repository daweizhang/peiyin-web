package voice.com.biz;

import java.util.List;

import voice.com.pojo.Messge;
import voice.com.util.PaginationSupport;

public interface MessgeBiz {

	/**
	 * 发送消息
	 */
	String sendmessage(Messge e);

	/**
	 * 查询我的消息记录
	 */
	PaginationSupport<Messge> findmessge(String users, String shifroxs,
			int pageSize, int currPageNo);

	/**
	 * 查询游客编号是否存在
	 */
	List<Messge> findmes(String ykuser);

	/**
	 * 根据接收用户的记录者查询用户
	 */
	PaginationSupport<Messge> gourpbymessgeuser(String jsuser, String jilbz,
			int pageSize, int currPageNo);

	/**
	 * 查询记录的那个对象
	 */
	List<Messge> findjiluser(String uName, String jiluz);

	/**
	 * 修改记录者的记录数
	 */
	String updatemessuser(Messge e);

	/**
	 * 动态查询客服的消息数量
	 */
	int kefumessgecont(String glyName, String myName, String meegeqb);

	/**
	 * 查询消息为显示中的总条数
	 */
	int findxscont(String xsids);

	/**
	 * 根据记录数查询被点击者
	 */
	List<Messge> updateclikeuser(int jiludz);

	/**
	 * 查询所有消息记录(后台)
	 */
	PaginationSupport<Messge> findmessgeht(String khName, String gjz,
			int pageSize, int currPageNo);

	/**
	 * 根据用户名删除聊天用户
	 */
	String delemegausers(Messge es);

}

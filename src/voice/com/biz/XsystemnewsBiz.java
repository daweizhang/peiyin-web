package voice.com.biz;

import voice.com.pojo.Xsystemnews;
import voice.com.util.PaginationSupport;

public interface XsystemnewsBiz {

	/**
	 * 系统自动发送消息方法
	 */
	String savenews(Xsystemnews s);

	/**
	 * 根据当前users来查看系统消息
	 */
	PaginationSupport<Xsystemnews> finnews(String userName, int pageSize,
			int currPageNo,String zts);

	/**
	 * 点击查看后改变消息状态
	 */
	String updatenews(Xsystemnews s);

	/**
	 * 根据ID查询消息
	 */
	Xsystemnews findnewscom(String nesid);

}

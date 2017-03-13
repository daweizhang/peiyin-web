package voice.com.biz.Impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

import voice.com.biz.XsystemnewsBiz;
import voice.com.dao.XsystemnewsDao;
import voice.com.pojo.Xsystemnews;
import voice.com.util.PaginationSupport;

public class XsystemnewsBizImpl implements XsystemnewsBiz {

	private XsystemnewsDao xsystemnewsDao;

	public void setXsystemnewsDao(XsystemnewsDao xsystemnewsDao) {
		this.xsystemnewsDao = xsystemnewsDao;
	}

	/**
	 * 自动发送消息
	 */
	public String savenews(Xsystemnews s) {
		try {
			xsystemnewsDao.save(s);
			return "200";
		} catch (Exception e) {
			// e.printStackTrace();
			return "333";
		}

	}

	/**
	 * 根据当前users来查看系统消息
	 */
	public PaginationSupport<Xsystemnews> finnews(String userName,
			int pageSize, int currPageNo,String zts) {
		PaginationSupport<Xsystemnews> partpalist = new PaginationSupport<Xsystemnews>();
		if (currPageNo > 0)
			partpalist.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			partpalist.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria
				.forClass(Xsystemnews.class);
		criteria.add(Restrictions.eq("xfromUser", userName));
		if(!zts.equals("000")){
			criteria.add(Restrictions.eq("xmessagestatus", zts));
		}
		criteria.addOrder(Order.desc("xsendtime"));
		// 统计总条数
		criteria.setProjection(Property.forName("xid").count());
		int concts = xsystemnewsDao.getRowCount(criteria).intValue();
		partpalist.setTotalCount(concts);
		if (concts != 0) {
			// 总页数
			int totalpage = (concts + partpalist.getPageSize() - 1)
					/ partpalist.getPageSize();
			partpalist.setTotalPageCount(totalpage);
			if (partpalist.getCurrPageNo() > totalpage) {
				partpalist.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Xsystemnews> parlist = xsystemnewsDao.findByPage(criteria,
					partpalist.getCurrPageNo(), partpalist.getPageSize());
			System.out.println("-----" + parlist.size());
			partpalist.setItems(parlist);
		}
		return partpalist;
	}

	/**
	 * 点击查看后改变消息状态
	 */
	public String updatenews(Xsystemnews s) {

		try {
			xsystemnewsDao.marge(s);
			return "200";
		} catch (Exception e) {
			return "333";
			// e.printStackTrace();
		}

	}

	/**
	 * 根据ID查询消息
	 */
	public Xsystemnews findnewscom(String nesid) {
		Xsystemnews x = xsystemnewsDao.get(nesid);
		return x;
	}

}

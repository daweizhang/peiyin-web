package voice.com.biz.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

import voice.com.biz.MessgeBiz;
import voice.com.dao.MessgeDao;
import voice.com.pojo.Aisadmin;
import voice.com.pojo.InUsers;
import voice.com.pojo.Messge;
import voice.com.util.PaginationSupport;

public class MessgeBizImpl implements MessgeBiz {

	private MessgeDao messgeDao;

	public void setMessgeDao(MessgeDao messgeDao) {
		this.messgeDao = messgeDao;
	}

	// 发送消息
	public String sendmessage(Messge e) {
		String er = null;
		try {
			messgeDao.save(e);
			er = "222";
		} catch (Exception e1) {
			// e1.printStackTrace();
			er = "333";
		}
		return er;
	}

	/**
	 * 查询消息
	 */
	public PaginationSupport<Messge> findmessge(String users, String shifroxs,
			int pageSize, int currPageNo) {
		PaginationSupport<Messge> partpalist = new PaginationSupport<Messge>();
		if (currPageNo > 0)
			partpalist.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			partpalist.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(Messge.class);
		if (!users.equals(" ")) {
			criteria.add(Restrictions.eq("messagesender", users));
		}
		if (!shifroxs.equals(" ")) {
			criteria.add(Restrictions.eq("mwhetherdisplay", shifroxs));
		}
		criteria.addOrder(Order.asc("mdatesent"));
		// 统计总条数
		criteria.setProjection(Property.forName("mid").count());
		int concts = messgeDao.getRowCount(criteria).intValue();
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
			List<Messge> meslist = messgeDao.findByPage(criteria,
					partpalist.getCurrPageNo(), partpalist.getPageSize());
			partpalist.setItems(meslist);
		}
		return partpalist;
	}

	/**
	 * 查询游客身份是否存在
	 */
	public List<Messge> findmes(String ykuser) {
		String hql = "from Messge m where m.messagesender=?";
		List<Messge> m = messgeDao.find(hql, ykuser);
		return m;
	}

	/**
	 * 分组查询消息标里面的所有用户
	 */
	public PaginationSupport<Messge> gourpbymessgeuser(String jsuser,
			String jilbz, int pageSize, int currPageNo) {
		PaginationSupport<Messge> partpalist = new PaginationSupport<Messge>();
		if (currPageNo > 0)
			partpalist.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			partpalist.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(Messge.class);
		if (!jsuser.equals(" ")) {
			criteria.add(Restrictions.eq("messagereceiver", jsuser));
		}
		if (!jsuser.equals(" ")) {
			criteria.add(Restrictions.eq("msparesan", jilbz));
		}
		criteria.addOrder(Order.desc("mcwTime"));
		// 统计总条数
		criteria.setProjection(Property.forName("mid").count());
		int concts = messgeDao.getRowCount(criteria).intValue();
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
			List<Messge> meslist = messgeDao.findByPage(criteria,
					partpalist.getCurrPageNo(), partpalist.getPageSize());
			partpalist.setItems(meslist);
		}
		return partpalist;
	}

	/**
	 * 查询记录者
	 */
	public List<Messge> findjiluser(String uName, String jiluz) {
		Object[] object = { uName, jiluz };
		String hql = "from Messge m where m.messagesender=? and m.msparesan=?";
		List<Messge> mes = messgeDao.find(hql, object);
		return mes;
	}

	/**
	 * 修改记录者的记录数
	 */
	public String updatemessuser(Messge e) {
		String ers = null;
		try {
			messgeDao.marge(e);
			ers = "200";
		} catch (Exception e1) {
			ers = "333";
			e1.printStackTrace();
		}
		return ers;
	}

	/**
	 * 动态查询客服的消息数量
	 */
	public int kefumessgecont(String glyName, String myName, String meegeqb) {
		DetachedCriteria dc = DetachedCriteria.forClass(Messge.class);
		dc.setProjection(Projections.rowCount());
		if (glyName != null && !"".equals(glyName)) {
			dc.add(Restrictions.eq("messagereceiver", glyName));
		}
		if (myName != null && !"".equals(myName)) {
			dc.add(Restrictions.eq("messagesender", myName));
		}
		if (meegeqb != null && !"".equals(meegeqb)) {
			dc.add(Restrictions.eq("mspareyi", meegeqb));
		}
		dc.add(Restrictions.eq("mwhetherdisplay", "1"));
		@SuppressWarnings("rawtypes")
		List no = messgeDao.findByCriteria(dc);
		int count = 0;
		if (no != null) {
			count = Integer.valueOf(no.get(0).toString());
		}
		return count;
	}

	/**
	 * 查询显示中的总条数
	 */
	public int findxscont(String xsids) {
		DetachedCriteria dc = DetachedCriteria.forClass(Messge.class);
		dc.setProjection(Projections.rowCount());
		if (xsids != null && !"".equals(xsids)) {
			dc.add(Restrictions.eq("mwhetherdisplay", xsids));
			dc.add(Restrictions.eq("mspareyi", "1"));
		}
		@SuppressWarnings("rawtypes")
		List no = messgeDao.findByCriteria(dc);
		int count = 0;
		if (no != null) {
			count = Integer.valueOf(no.get(0).toString());
		}
		return count;
	}

	/**
	 * 修改记录者点击数
	 */
	public List<Messge> updateclikeuser(int jiludz) {
		String hql = "from Messge m where m.mclick=?";
		List<Messge> jlme = messgeDao.find(hql, jiludz);
		return jlme;
	}

	/**
	 * 查询客户所有聊天记录
	 */
	public PaginationSupport<Messge> findmessgeht(String khName, String gjz,
			int pageSize, int currPageNo) {

		PaginationSupport<Messge> sc = new PaginationSupport<Messge>();
		if (currPageNo > 0)
			sc.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			sc.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(Messge.class);
		if (khName != null && !khName.equals("")) {
			criteria.add(Restrictions.like("messagesender", khName,
					MatchMode.ANYWHERE));
		}
		if (gjz != null && !gjz.equals("")) {
			criteria.add(Restrictions.like("messagecontent", gjz,
					MatchMode.ANYWHERE));
		}
		criteria.addOrder(Order.desc("mdatesent"));
		// 统计总条数
		criteria.setProjection(Property.forName("mid").count());
		int conct = messgeDao.getRowCount(criteria).intValue();
		sc.setTotalCount(conct);
		// 总条数不等于0才执行
		if (conct != 0) {
			// 总页数
			int totalpage = (conct + sc.getPageSize() - 1) / sc.getPageSize();
			sc.setTotalPageCount(totalpage);
			if (sc.getCurrPageNo() > totalpage) {
				sc.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Messge> mes = messgeDao.findByPage(criteria,
					sc.getCurrPageNo(), sc.getPageSize());
			sc.setItems(mes);
		}
		return sc;
	}

	/**
	 * 根据用户名删除聊天用户
	 */
	public String delemegausers(Messge es) {
		try {
			messgeDao.delete(es);
			return "222";
		} catch (Exception e) {
			// e.printStackTrace();
			return "333";
		}
	}

}

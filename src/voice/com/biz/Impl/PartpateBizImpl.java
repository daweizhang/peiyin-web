package voice.com.biz.Impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

import voice.com.biz.PartpateBiz;
import voice.com.dao.PartpateDao;
import voice.com.pojo.Partpate;
import voice.com.pojo.Works;
import voice.com.util.PaginationSupport;

public class PartpateBizImpl implements PartpateBiz {

	private PartpateDao partpateDao;

	public void setPartpateDao(PartpateDao partpateDao) {
		this.partpateDao = partpateDao;
	}

	/**
	 * 根据任务ID和竞标状态查询任务条数
	 */
	public int finpartpa(String btenid, String username, String jbzt) {
		Object[] object = { btenid, username, jbzt };
		String hql = "from Partpate p where p.btender.btid=? and p.pusersId=? and p.uzbztb.uzbid=?";
		List<Partpate> list = partpateDao.find(hql, object);
		return list.size();
	}

	/**
	 * 分页查询竞标人员
	 */
	public PaginationSupport<Partpate> findpartpate(String btenid,
			String username, String jbzt, int pageSize, int currPageNo) {
		PaginationSupport<Partpate> partpalist = new PaginationSupport<Partpate>();
		if (currPageNo > 0)
			partpalist.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			partpalist.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(Partpate.class);
		if (!btenid.equals(" ")) {
			criteria.add(Restrictions.eq("btender.btid", btenid));
		}
		if (!username.equals(" ")) {
			criteria.add(Restrictions.eq("pusersId", username));
		}
		if (!jbzt.equals(" ")) {
			criteria.add(Restrictions.eq("uzbztb.uzbid", jbzt));
		}
		criteria.addOrder(Order.desc("pcyTime"));
		// 统计总条数
		criteria.setProjection(Property.forName("pid").count());
		int concts = partpateDao.getRowCount(criteria).intValue();
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
			List<Partpate> parlist = partpateDao.findByPage(criteria,
					partpalist.getCurrPageNo(), partpalist.getPageSize());
			System.out.println("-----" + parlist.size());
			partpalist.setItems(parlist);
		}
		return partpalist;
	}

	/**
	 * 参与竞标
	 */
	public String savepartpate(Partpate par) {
		String erer = "";
		try {
			partpateDao.save(par);
			erer = "1";
		} catch (Exception e) {
			// e.printStackTrace();
			erer = "0";
		}
		return erer;
	}

	/**
	 * 根据ID和当前User查询竞标信息
	 */
	public List<Partpate> findOrder(String pid, String userName) {
		Object[] object = { pid, userName };
		String hql = "from Partpate p where p.pid=? and p.pusersId=?";
		List<Partpate> listp = partpateDao.find(hql, object);
		return listp;
	}

	/**
	 * 根据ID和当前任务方User修改竞标信息，添加零时订单数据
	 */
	public String updatepartpate(Partpate par) {
		try {
			partpateDao.marge(par);
			return "1";
		} catch (Exception e) {
			return "0";
		}

	}

	/**
	 * 动态条件 根据支付状态查询待所有支付的订单
	 */
	public PaginationSupport<Partpate> findPendingOrders(String ptemporaryid,
			String paycount, int pageSize, int currPageNo) {

		PaginationSupport<Partpate> Partpates = new PaginationSupport<Partpate>();
		if (currPageNo > 0)
			Partpates.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			Partpates.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(Partpate.class);
		criteria.add(Restrictions.eq("pzhifuzt", "1"));
		if (ptemporaryid != null && !ptemporaryid.equals("")) {
			criteria.add(Restrictions.eq("ptemporaryid", ptemporaryid));
		}
		if (paycount != null && !paycount.equals("")) {
			criteria.add(Restrictions.eq("paycount", paycount));
		}
		// 统计总条数
		criteria.setProjection(Property.forName("pid").count());
		int concts = partpateDao.getRowCount(criteria).intValue();
		Partpates.setTotalCount(concts);
		if (concts != 0) {
			// 总页数
			int totalpage = (concts + Partpates.getPageSize() - 1)
					/ Partpates.getPageSize();
			Partpates.setTotalPageCount(totalpage);
			if (Partpates.getCurrPageNo() > totalpage) {
				Partpates.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Partpate> parlistorder = partpateDao.findByPage(criteria,
					Partpates.getCurrPageNo(), Partpates.getPageSize());
			Partpates.setItems(parlistorder);
		}
		return Partpates;
	}

	/**
	 * 根据ID查询任务订单
	 */
	public Partpate findPartpate(String pid) {
		Partpate pa;
		try {
			pa = partpateDao.get(pid);
			return pa;
		} catch (Exception e) {
			// e.printStackTrace();
			return null;
		}
	}

	/**
	 * 更新零时订单
	 */
	public String updateOrder(Partpate prt) {

		try {
			partpateDao.marge(prt);
			return "200";
		} catch (Exception e) {
			// e.printStackTrace();
			return "333";
		}
	}

	/**
	 * 查询未支付的订单 (分页查询)
	 */
	public PaginationSupport<Partpate> findunpaid(String userName, String ztid,
			int pageSize, int currPageNo) {
		PaginationSupport<Partpate> plists = new PaginationSupport<Partpate>();

		if (currPageNo > 0)
			plists.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			plists.setPageSize(pageSize);

		DetachedCriteria criteria = DetachedCriteria.forClass(Partpate.class);
		criteria.add(Restrictions.eq("pusersId", userName));
		criteria.add(Restrictions.eq("pzhifuzt", ztid));
		criteria.addOrder(Order.desc("pfqTime"));
		// 统计总条数
		criteria.setProjection(Property.forName("pid").count());
		int concts = partpateDao.getRowCount(criteria).intValue();
		plists.setTotalCount(concts);
		if (concts != 0) {
			// 总页数
			int totalpage = (concts + plists.getPageSize() - 1)
					/ plists.getPageSize();
			plists.setTotalPageCount(totalpage);
			if (plists.getCurrPageNo() > totalpage) {
				plists.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Partpate> parlistorder = partpateDao.findByPage(criteria,
					plists.getCurrPageNo(), plists.getPageSize());
			plists.setItems(parlistorder);
		}
		return plists;
	}

	/**
	 * 查询当前配音员参与的所以任务
	 */
	public PaginationSupport<Partpate> findBiddings(String userName,
			String jbzt, int pageSize, int currPageNo) {

		PaginationSupport<Partpate> plists = new PaginationSupport<Partpate>();

		if (currPageNo > 0)
			plists.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			plists.setPageSize(pageSize);

		DetachedCriteria criteria = DetachedCriteria.forClass(Partpate.class);
		criteria.add(Restrictions.eq("puserId.iid", userName));
		criteria.add(Restrictions.eq("uzbztb.uzbid", jbzt));
		criteria.addOrder(Order.desc("pcyTime"));
		// 统计总条数
		criteria.setProjection(Property.forName("pid").count());
		int concts = partpateDao.getRowCount(criteria).intValue();
		plists.setTotalCount(concts);
		if (concts != 0) {
			// 总页数
			int totalpage = (concts + plists.getPageSize() - 1)
					/ plists.getPageSize();
			plists.setTotalPageCount(totalpage);
			if (plists.getCurrPageNo() > totalpage) {
				plists.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Partpate> parlistorder = partpateDao.findByPage(criteria,
					plists.getCurrPageNo(), plists.getPageSize());
			plists.setItems(parlistorder);
		}
		return plists;
	}

	/**
	 * 查询竞标成功 客服 支付成功的任务订单
	 */
	public PaginationSupport<Partpate> findbinseccessoders(String userName,
			String jbzt, String zfzt, int pageSize, int currPageNo) {

		PaginationSupport<Partpate> plists = new PaginationSupport<Partpate>();

		if (currPageNo > 0)
			plists.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			plists.setPageSize(pageSize);

		DetachedCriteria criteria = DetachedCriteria.forClass(Partpate.class);
		criteria.add(Restrictions.eq("puserId.iid", userName));
		criteria.add(Restrictions.eq("uzbztb.uzbid", jbzt));
		criteria.add(Restrictions.eq("pzhifuzt", zfzt));
		criteria.addOrder(Order.desc("pcyTime"));
		// 统计总条数
		criteria.setProjection(Property.forName("pid").count());
		int concts = partpateDao.getRowCount(criteria).intValue();
		plists.setTotalCount(concts);
		if (concts != 0) {
			// 总页数
			int totalpage = (concts + plists.getPageSize() - 1)
					/ plists.getPageSize();
			plists.setTotalPageCount(totalpage);
			if (plists.getCurrPageNo() > totalpage) {
				plists.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Partpate> parlistorder = partpateDao.findByPage(criteria,
					plists.getCurrPageNo(), plists.getPageSize());
			plists.setItems(parlistorder);
		}
		return plists;
	}

	/**
	 * 删除竞标中的信息
	 */
	public String deleteBidings(Partpate p) {
		try {
			partpateDao.delete(p);
			return "200";
		} catch (Exception e) {
			return "333";
		}

	}

	/**
	 * 查询已付款订单详细
	 */
	public List<Partpate> mentsptoders(String pids, String nsids) {
		Object[] object = { pids };
		String hql = "from Partpate p where p.pid=?";
		List<Partpate> listp = partpateDao.find(hql, object);
		return listp;
	}

	/**
	 * 判读当前配音员是否参与配音
	 */
	public List<Partpate> findperberdd(String bid, String usersid) {
		Object[] object = { bid, usersid };
		String hql = "from Partpate p where p.btender.btid=? and p.puserId.iid=?";
		List<Partpate> userp = partpateDao.find(hql, object);
		return userp;
	}

	/**
	 * 后台查询所有的订单
	 */
	public PaginationSupport<Partpate> findAllpaid(String pids, String pyuser,
			String rwfuser, String lxzt, String tijzt, String dkzt,
			int pageSize, int currPageNo) {
		PaginationSupport<Partpate> plists = new PaginationSupport<Partpate>();

		if (currPageNo > 0)
			plists.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			plists.setPageSize(pageSize);

		DetachedCriteria criteria = DetachedCriteria.forClass(Partpate.class);

		if (pids != null && !pids.equals("")) {
			criteria.add(Restrictions.eq("pjbremail", pids));
		}
		if (pyuser != null && !pyuser.equals("")) {
			criteria.add(Restrictions.eq("puserId.iid", pyuser));
		}
		if (rwfuser != null && !rwfuser.equals("")) {
			criteria.add(Restrictions.eq("pusersId", rwfuser));
		}
		if (lxzt != null && !lxzt.equals("")) {
			criteria.add(Restrictions.eq("pts", lxzt));
		}
		if (tijzt != null && !tijzt.equals("")) {
			criteria.add(Restrictions.eq("prwfemail", tijzt));
		}
		if (dkzt != null && !dkzt.equals("")) {
			criteria.add(Restrictions.eq("pskzt", dkzt));
		}
		criteria.add(Restrictions.eq("complete.cid", "vbaseacsecesa6"));
		criteria.addOrder(Order.desc("pfkTime"));
		// 统计总条数
		criteria.setProjection(Property.forName("pid").count());
		int concts = partpateDao.getRowCount(criteria).intValue();
		plists.setTotalCount(concts);
		if (concts != 0) {
			// 总页数
			int totalpage = (concts + plists.getPageSize() - 1)
					/ plists.getPageSize();
			plists.setTotalPageCount(totalpage);
			if (plists.getCurrPageNo() > totalpage) {
				plists.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Partpate> parlistorder = partpateDao.findByPage(criteria,
					plists.getCurrPageNo(), plists.getPageSize());
			plists.setItems(parlistorder);
		}
		return plists;
	}

	/**
	 * 查看已完成的订单列表
	 */
	public PaginationSupport<Partpate> findywcorders(String rus,
			String userName, String shzt, int pageSize, int currPageNo) {
		PaginationSupport<Partpate> plists = new PaginationSupport<Partpate>();

		if (currPageNo > 0)
			plists.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			plists.setPageSize(pageSize);

		DetachedCriteria criteria = DetachedCriteria.forClass(Partpate.class);
		if (rus.equals("berwartaedfeee")) {
			criteria.add(Restrictions.eq("puserId.iid", userName));
		}
		if (rus.equals("gseaeffasdasc")) {
			criteria.add(Restrictions.eq("pusersId", userName));
			criteria.add(Restrictions.eq("pzhifuzt", "3"));
		}

		criteria.add(Restrictions.eq("prwfemail", shzt));
		// 统计总条数
		criteria.setProjection(Property.forName("pid").count());
		int concts = partpateDao.getRowCount(criteria).intValue();
		plists.setTotalCount(concts);
		if (concts != 0) {
			// 总页数
			int totalpage = (concts + plists.getPageSize() - 1)
					/ plists.getPageSize();
			plists.setTotalPageCount(totalpage);
			if (plists.getCurrPageNo() > totalpage) {
				plists.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Partpate> parlistorder = partpateDao.findByPage(criteria,
					plists.getCurrPageNo(), plists.getPageSize());
			plists.setItems(parlistorder);
		}
		return plists;
	}

}

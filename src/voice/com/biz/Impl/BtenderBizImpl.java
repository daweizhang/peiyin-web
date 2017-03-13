package voice.com.biz.Impl;

import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.hibernate.type.StandardBasicTypes;

import voice.com.biz.BtenderBiz;
import voice.com.dao.BtenderDao;
import voice.com.pojo.Btender;
import voice.com.pojo.Works;
import voice.com.util.PaginationSupport;
import voice.com.vo.BtenderListVO;
import voice.com.vo.BtenderVO;
//import voice.com.dao.InUsersDao;

public class BtenderBizImpl implements BtenderBiz {

	private BtenderDao btenderDao;

	public void setBtenderDao(BtenderDao btenderDao) {
		this.btenderDao = btenderDao;
	}

	/**
	 * 新增任务
	 */
	public String insertBtender(Btender bten) {
		try {
			btenderDao.save(bten);
			return "1";
		} catch (Exception e) {
			return "2";
			// e.printStackTrace();
		}
	}

	/**
	 * 我的任务列表(分页查询)
	 */
	public PaginationSupport<BtenderVO> selectBtender(String userName,
			String bts, int pageSize, int currPageNo) {

		PaginationSupport<BtenderVO> btensups = new PaginationSupport<BtenderVO>();
		if (currPageNo > 0)
			btensups.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			btensups.setPageSize(pageSize);
		if (!userName.equals("")) {

		}
		Object[] ager = { userName, bts };
		try {
			int conunt = this.counpten(userName, bts);
			btensups.setTotalCount(conunt);
			if (conunt != 0) {

				// 总页数
				int totalpage = (conunt + btensups.getPageSize() - 1)
						/ btensups.getPageSize();
				btensups.setTotalPageCount(totalpage);
				if (btensups.getCurrPageNo() > totalpage) {
					btensups.setCurrPageNo(totalpage);
				}
				Session session = btenderDao.getSession();
				String sql = "select b.B_TID as bid,b.B_TName as bname,b.B_Time as btime,b.B_UserID as buser,bf.bf_Names as bnamebf,t.T_vtypeName as bvoicetype,t.T_TS as reTypebf,z.Z_basName as bzt,z.Z_TS as bztbf,b.B_TS as bts,COUNT(p.p_TenderID) as count from  b_tender b LEFT JOIN t_voice t ON t.T_vID=b.B_VoiceID LEFT JOIN z_state z ON z.Z_ID=b.B_stateID LEFT JOIN p_artpate p "
						+ "ON p.p_TenderID=b.b_TID LEFT JOIN bf_translate bf ON bf.bf_ID=b.b_bfid WHERE b.B_UserID=? and b.B_TS=? "
						+ "GROUP BY b.B_TID ORDER BY b.B_Time desc";
				Query q = session.createSQLQuery(sql)
						.addScalar("bid", StandardBasicTypes.STRING)
						.addScalar("bname", StandardBasicTypes.STRING)
						.addScalar("btime", StandardBasicTypes.STRING)
						.addScalar("buser", StandardBasicTypes.STRING)
						.addScalar("bnamebf", StandardBasicTypes.STRING)
						.addScalar("bvoicetype", StandardBasicTypes.STRING)
						.addScalar("reTypebf", StandardBasicTypes.STRING)
						.addScalar("bzt", StandardBasicTypes.STRING)
						.addScalar("bztbf", StandardBasicTypes.STRING)
						.addScalar("bts", StandardBasicTypes.STRING)
						.addScalar("count", StandardBasicTypes.STRING);
				q.setResultTransformer(Transformers
						.aliasToBean(BtenderVO.class));

				for (int i = 0; i < ager.length; i++) {
					q.setParameter(i, ager[i]);
				}
				q.setMaxResults(pageSize);
				q.setFirstResult((currPageNo - 1) * pageSize);
				List<BtenderVO> libten = q.list();

				btensups.setItems(libten);
				session.close();
			}

		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return btensups;
	}

	/**
	 * 查询总条数
	 */
	public int counpten(String userName, String bts) {
		int count = 0;
		DetachedCriteria criteria = DetachedCriteria.forClass(Btender.class);
		criteria.setProjection(Projections.rowCount());
		if (userName != null && !"".equals(userName)) {
			criteria.add(Restrictions.eq("bUserID", userName));
		}
		if (bts != null && !"".equals(bts)) {
			criteria.add(Restrictions.eq("bts", bts));
		}
		List no = btenderDao.findByCriteria(criteria);
		if (no != null) {
			count = Integer.valueOf(no.get(0).toString());
		}
		return count;
	}

	/**
	 * 根据任务ID查询任务
	 */
	public List<Btender> findbtens(String bid, String users) {
		Object[] objects = { bid, users };
		String hql = "from Btender b where b.btid=? and b.bUserID=?";
		List<Btender> listb = btenderDao.find(hql, objects);
		return listb;
	}

	/**
	 * 根据任务ID删除
	 */
	public String deletebtender(Btender bten) {
		String ereer = "";
		try {
			btenderDao.delete(bten);
			ereer = "1";
		} catch (Exception e) {
			ereer = "0";
		}
		return ereer;
	}

	/**
	 * 根据ID更新该任务
	 */
	public String updaterw(Btender bten) {

		try {
			btenderDao.marge(bten);
			return "222";
		} catch (Exception e) {
			return "333";
		}
	}

	/**
	 * 多条件动态查询任务主页展示
	 */
	public PaginationSupport<BtenderListVO> finbtenderlist(int orderbys,
			int pageSize, int currPageNo, Map<String, String> mapbtender,
			String[] ages) {

		PaginationSupport<BtenderListVO> btensups = new PaginationSupport<BtenderListVO>();
		if (currPageNo > 0)
			btensups.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			btensups.setPageSize(pageSize);
		try {
			int count = this.listcount(mapbtender);
			btensups.setTotalCount(count);
			if (count != 0) {
				// 总页数
				int totalpage = (count + btensups.getPageSize() - 1)
						/ btensups.getPageSize();
				btensups.setTotalPageCount(totalpage);
				if (btensups.getCurrPageNo() > totalpage) {
					btensups.setCurrPageNo(totalpage);
				}
				Session session = btenderDao.getSession();
				StringBuilder sqls = new StringBuilder();
				sqls.append("SELECT b.B_TID AS rwbid,b.B_TName AS rwbName,bf.bf_Names AS rwbfName,b.B_Price AS rermb,b.B_Time AS rwTime,b.B_UserID AS rwiUser,b.B_rwtype AS rengj,t.T_vtypeName AS reType,t.T_TS AS reTypebf,b.B_TS AS rwzts,COUNT(p.p_TenderID) AS rwcount ");
				sqls.append("FROM  b_tender b LEFT JOIN t_voice t ON t.T_vID=b.B_VoiceID LEFT JOIN z_state z ON z.Z_ID=b.B_stateID LEFT JOIN p_artpate p ");
				sqls.append("ON p.p_TenderID=b.b_TID LEFT JOIN l_gtype g ON g.L_ID=b.B_GtypeID LEFT JOIN s_crowd s ON s.S_ID=b.B_CrowdID LEFT JOIN bf_translate bf ON bf.bf_ID=b.b_bfid ");
				sqls.append("WHERE z.Z_ID='baefaf758eaecc'");
				if (mapbtender.get("V") != null) {
					sqls.append("AND t.T_vID=? ");
				}
				if (mapbtender.get("S") != null) {
					sqls.append("AND b.B_Sex=? ");
				}
				if (mapbtender.get("L") != null) {
					sqls.append("AND g.L_ID=? ");
				}
				if (mapbtender.get("R") != null) {
					sqls.append("AND s.S_ID=? ");
				}

				sqls.append("GROUP BY b.B_TID ");

				if (orderbys == 1) {
					sqls.append("ORDER BY b.B_Time DESC");
				}
				if (orderbys == 2) {
					sqls.append("ORDER BY b.B_Price DESC");
				}
				if (orderbys == 3) {
					sqls.append("ORDER BY COUNT(p.p_TenderID) DESC");
				}
				Query q = session.createSQLQuery(sqls.toString())
						.addScalar("rwbid", StandardBasicTypes.STRING)
						.addScalar("rwbName", StandardBasicTypes.STRING)
						.addScalar("rwbfName", StandardBasicTypes.STRING)
						.addScalar("rermb", StandardBasicTypes.INTEGER)
						.addScalar("rwTime", StandardBasicTypes.STRING)
						.addScalar("rwiUser", StandardBasicTypes.STRING)
						.addScalar("rengj", StandardBasicTypes.STRING)
						.addScalar("reType", StandardBasicTypes.STRING)
						.addScalar("reTypebf", StandardBasicTypes.STRING)
						.addScalar("rwzts", StandardBasicTypes.STRING)
						.addScalar("rwcount", StandardBasicTypes.STRING);
				q.setResultTransformer(Transformers
						.aliasToBean(BtenderListVO.class));
				for (int i = 0; i < ages.length; i++) {
					if (ages[i] != null) {
						q.setParameter(i, ages[i]);
					}
				}
				q.setMaxResults(pageSize);
				q.setFirstResult((currPageNo - 1) * pageSize);
				List<BtenderListVO> libtens = q.list();
				btensups.setItems(libtens);
				session.close();
			}
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return btensups;
	}

	/**
	 * 多条件动态查询任务展示总条数查询
	 */
	public int listcount(Map<String, String> mapbtender) {
		int count = 0;
		DetachedCriteria criteria = DetachedCriteria.forClass(Btender.class);
		criteria.setProjection(Projections.rowCount());
		criteria.add(Restrictions.eq("zstate.zid", "baefaf758eaecc"));
		if (mapbtender.get("V") != null) {
			criteria.add(Restrictions.eq("tvoice.tvid", mapbtender.get("V")));
		}
		if (mapbtender.get("S") != null) {
			criteria.add(Restrictions.eq("bsex", mapbtender.get("S")));
		}
		if (mapbtender.get("L") != null) {
			criteria.add(Restrictions.eq("lgtype.lid", mapbtender.get("L")));
		}
		if (mapbtender.get("R") != null) {
			criteria.add(Restrictions.eq("scrowd.sid", mapbtender.get("R")));
		}
		List no = btenderDao.findByCriteria(criteria);
		if (no != null) {
			count = Integer.valueOf(no.get(0).toString());
		}
		return count;
	}

	/**
	 * 根据ID查询任务
	 */
	public Btender findbtender(String bid) {
		Btender b = btenderDao.get(bid);
		return b;
	}
	
	/**
	 * 根据ID来查找 user 和use 的mail
	 */
	public String findEmailbyId(String bid){
		Session session = btenderDao.getSession();
		String sql = "select U.I_Email as mail from inusers as U INNER JOIN b_tender as T ON U.I_UserName = T.B_UserID " +
				" where T.B_TID = ?"; 
		//List<Object[]> list
		Query q = session.createSQLQuery(sql).addScalar("mail", StandardBasicTypes.STRING);
		//q.setResultTransformer(Transformers.aliasTo。Bean(BtenderVO.class));
		q.setParameter(0, (Object)bid);
		// q.setResultTransformer(Transformers.aliasToBean(String));
		List<Object[]> list = q.list();
		if (!list.isEmpty()){
			System.out.println(list.get(0));
			Object mail = list.get(0);
			return mail.toString();
		}
		return "";
	}
	
	/*
	 *  增加message 对审核通过的task
	 */
	public void addMessage(String bid, String recv, String Content){
		Session session = btenderDao.getSession();
		String sql = "insert into m_essge value (m_id =?," +
				" ";
	}
	

	/**
	 * 根据任务状态和任务交易状态和当前User来查询任务
	 */
	public List<BtenderVO> selectBtenderinvitation(String UserName,
			String rwztnts, String ztzid) {
		Object[] ager = { UserName, rwztnts, ztzid };
		List<BtenderVO> libtens = null;
		try {
			Session session = btenderDao.getSession();
			String sql = "select b.B_TID as bid,b.B_TName as bname,bf.bf_Names AS bnamebf,b.B_Time as btime,b.B_UserID as buser,t.T_vtypeName as bvoicetype,t.T_TS as reTypebf,z.Z_basName as bzt,b.B_TS as bts,COUNT(p.p_TenderID) as count from  b_tender b LEFT JOIN t_voice t ON t.T_vID=b.B_VoiceID LEFT JOIN z_state z ON z.Z_ID=b.B_stateID LEFT JOIN p_artpate p "
					+ "ON p.p_TenderID=b.b_TID LEFT JOIN bf_translate bf ON bf.bf_ID=b.b_bfid WHERE b.B_UserID=? and b.B_TS=? and b.B_stateID=? "
					+ "GROUP BY b.B_TID HAVING COUNT(p.p_TenderID)<16 ORDER BY b.B_Time desc";
			Query q = session.createSQLQuery(sql)
					.addScalar("bid", StandardBasicTypes.STRING)
					.addScalar("bname", StandardBasicTypes.STRING)
					.addScalar("bnamebf", StandardBasicTypes.STRING)
					.addScalar("btime", StandardBasicTypes.STRING)
					.addScalar("buser", StandardBasicTypes.STRING)
					.addScalar("bvoicetype", StandardBasicTypes.STRING)
					.addScalar("reTypebf", StandardBasicTypes.STRING)
					.addScalar("bzt", StandardBasicTypes.STRING)
					.addScalar("bts", StandardBasicTypes.STRING)
					.addScalar("count", StandardBasicTypes.STRING);
			q.setResultTransformer(Transformers.aliasToBean(BtenderVO.class));
			for (int i = 0; i < ager.length; i++) {
				q.setParameter(i, ager[i]);
			}
			libtens = q.list();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return libtens;
	}

	/**
	 * 后台任务列表查询
	 */
	public PaginationSupport<Btender> findtasklist(String taskName,
			String userName, int pageSize, int currPageNo) {
		PaginationSupport<Btender> sc = new PaginationSupport<Btender>();
		if (currPageNo > 0)
			sc.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			sc.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(Btender.class);
		if (taskName != null && !taskName.equals("")) {
			criteria.add(Restrictions
					.like("btid", taskName, MatchMode.ANYWHERE));
		}
		if (taskName != null && !userName.equals("")) {
			criteria.add(Restrictions.like("bUserID", userName,
					MatchMode.ANYWHERE));
		}
		criteria.addOrder(Order.desc("btime"));
		// 统计总条数
		criteria.setProjection(Property.forName("btid").count());
		int conct = btenderDao.getRowCount(criteria).intValue();
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
			List<Btender> tks = btenderDao.findByPage(criteria,
					sc.getCurrPageNo(), sc.getPageSize());
			sc.setItems(tks);
		}
		return sc;
	}

}

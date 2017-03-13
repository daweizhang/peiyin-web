package voice.com.biz.Impl;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

import voice.com.biz.InUsersBiz;
import voice.com.dao.InUsersDao;
import voice.com.pojo.Btender;
import voice.com.pojo.InUsers;
import voice.com.util.PaginationSupport;

public class InUsersBizImpl implements InUsersBiz {
	private Logger logger = Logger.getLogger(InUsersBizImpl.class);

	// 注入用户Dao
	private InUsersDao inUsersDao;

	public void setInUsersDao(InUsersDao inUsersDao) {
		this.inUsersDao = inUsersDao;
	}

	/**
	 * 登录功能(中英共享)
	 * 
	 * @return
	 */
	public List<InUsers> findUser(InUsers users) {
		String hql = "from InUsers s where iuserName=? and ipassword=?";
		Object[] paramName = new Object[] { users.getIuserName(),
				users.getIpassword() };
		List<InUsers> ulist;
		ulist = inUsersDao.find(hql, paramName);
		return ulist;
	}

	/**
	 * 判断用户名是否存在
	 */
	public List<InUsers> findUsersc(String yohm) {
		List<InUsers> in = null;
		String hql = "from InUsers i where i.iuserName=?";
		in = inUsersDao.find(hql, yohm);
		return in;
	}

	/**
	 * 注册功能(中文)
	 */
	public int saveUsers(InUsers u) {

		try {
			inUsersDao.save(u);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 2;
		}

	}

	/**
	 * 判断用户名和邮箱是否匹配
	 */
	@Override
	public List<InUsers> findUserpd(String iusx, String iuemli) {
		List<InUsers> ins = null;
		Object[] ns = { iusx, iuemli };
		String hql = "from InUsers i where i.iuserName=? and i.iemail=?";
		ins = inUsersDao.find(hql, ns);
		return ins;
	}

	/**
	 * 用户修改密码
	 */
	@Override
	public String updateUser(InUsers us) {

		try {
			inUsersDao.marge(us);
			return "1";
		} catch (Exception e) {
			e.printStackTrace();
			return "2";
		}

	}

	/**
	 * 动态多条件分页查询所有配音员 its为1是公开的配音员
	 */
	public PaginationSupport<InUsers> userlist(int pageSize, int currPageNo,
			String iutypeid, String its, int pxid, Map<String, String> mapssx) {
		PaginationSupport<InUsers> result = new PaginationSupport<InUsers>();
		result.setCurrPageNo(currPageNo);
		result.setPageSize(pageSize);
		// 拼条件
		// 离线查询
		DetachedCriteria criteria = DetachedCriteria.forClass(InUsers.class);
		if (mapssx != null) {
			if (mapssx.get("Y") != null) {
				criteria.add(Restrictions.like("ivoiceLabels", mapssx.get("Y"),
						MatchMode.ANYWHERE));
			}
			if (mapssx.get("X") != null) {
				criteria.add(Restrictions.eq("isex", mapssx.get("X")));
			}
			if (mapssx.get("W") != null) {
				criteria.add(Restrictions.like("ilanguageLabels",
						mapssx.get("W"), MatchMode.ANYWHERE));
			}
			if (mapssx.get("R") != null) {
				criteria.add(Restrictions.eq("scrowd.sid", mapssx.get("R")));
			}
		}
		if (!iutypeid.equals(" ")) {
			criteria.add(Restrictions.eq("dtype.did", iutypeid));
		}
		if (!its.equals(" ")) {
			criteria.add(Restrictions.eq("mxbi", 1));
		}

		if (pxid == 1) {
			criteria.addOrder(Order.asc("iid"));
		}
		if (pxid == 2) {
			criteria.addOrder(Order.asc("iredTime"));
		}
		if (pxid == 3) {
			criteria.addOrder(Order.asc("icredibility"));
		}

		// 统计总条数
		criteria.setProjection(Property.forName("iid").count());
		int totalcot = inUsersDao.getRowCount(criteria).intValue();
		result.setTotalCount(totalcot);
		// 总条数不等于0才执行
		if (totalcot != 0) {
			// 总页数
			int totalpage = (totalcot + result.getPageSize() - 1)
					/ result.getPageSize();
			result.setTotalPageCount(totalpage);
			if (result.getCurrPageNo() > totalpage) {
				result.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<InUsers> pro = inUsersDao.findByPage(criteria,
					result.getCurrPageNo(), result.getPageSize());
			result.setItems(pro);
		}
		return result;
	}

	/**
	 * 上传用户头像
	 */
	public String updatload(InUsers is) {
		try {
			inUsersDao.marge(is);
			return "1";
		} catch (Exception e) {
			e.printStackTrace();
			return "2";
		}

	}

	/**
	 * 根据ID查询配音员资料
	 */
	public InUsers findgetu(String sid) {
		InUsers s = inUsersDao.get(sid);
		return s;
	}

	/**
	 * 查询ID是否存在
	 */
	public List<InUsers> findinuid(String uids) {
		String hql = "from InUsers i where i.iname=?";
		List<InUsers> iusn = inUsersDao.find(hql, uids);
		return iusn;
	}

	/**
	 * 查询所有用户(后台)
	 */
	public PaginationSupport<InUsers> findinUsersdate(int pageSize,
			int currPageNo, String ID, String UserName) {
		PaginationSupport<InUsers> sc = new PaginationSupport<InUsers>();
		if (currPageNo > 0)
			sc.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			sc.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(InUsers.class);
		if (ID != null && !ID.equals("")) {
			criteria.add(Restrictions.like("iname", ID, MatchMode.ANYWHERE));
		}
		if (UserName != null && !UserName.equals("")) {
			criteria.add(Restrictions.like("iuserName", UserName,
					MatchMode.ANYWHERE));
		}
		criteria.addOrder(Order.desc("iredTime"));
		// 统计总条数
		criteria.setProjection(Property.forName("iid").count());
		int conct = inUsersDao.getRowCount(criteria).intValue();
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
			List<InUsers> tks = inUsersDao.findByPage(criteria,
					sc.getCurrPageNo(), sc.getPageSize());
			sc.setItems(tks);
		}
		return sc;
	}

}

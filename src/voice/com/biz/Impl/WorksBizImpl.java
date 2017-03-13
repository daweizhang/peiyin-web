package voice.com.biz.Impl;

import java.util.List;
import java.util.Map;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

import voice.com.biz.WorksBiz;
import voice.com.dao.WorksDao;
import voice.com.pojo.Works;
import voice.com.util.PaginationSupport;

public class WorksBizImpl implements WorksBiz {
	/**
	 * 配音员作品
	 */
	private WorksDao worksDao;

	public void setWorksDao(WorksDao worksDao) {
		this.worksDao = worksDao;
	}

	/**
	 * 上传作品
	 */
	public String isnertworks(Works wo) {
		try {
			worksDao.save(wo);
			return "1";
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
	}

	/**
	 * 分页查询作品
	 */
	public PaginationSupport<Works> workslist(String userName, int pageSize,
			int currPageNo) {
		PaginationSupport<Works> worlst = new PaginationSupport<Works>();
		if (currPageNo > 0)
			worlst.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			worlst.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(Works.class);
		if (!userName.equals(" ")) {
			criteria.add(Restrictions.eq("wuserNames", userName));
		}
		criteria.addOrder(Order.desc("wtime"));
		// 统计总条数
		criteria.setProjection(Property.forName("wid").count());
		int conct = worksDao.getRowCount(criteria).intValue();
		worlst.setTotalCount(conct);
		// 总条数不等于0才执行
		if (conct != 0) {
			// 总页数
			int totalpage = (conct + worlst.getPageSize() - 1)
					/ worlst.getPageSize();
			worlst.setTotalPageCount(totalpage);
			if (worlst.getCurrPageNo() > totalpage) {
				worlst.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Works> wilist = worksDao.findByPage(criteria,
					worlst.getCurrPageNo(), worlst.getPageSize());
			worlst.setItems(wilist);
		}

		return worlst;
	}

	/**
	 * 根据作品的ID查询作品
	 */
	public List<Works> findwoks(String id, String user) {
		Object[] obj = { id, user };
		String hql = "from Works s where s.wid=? and s.wuserNames=?";
		List<Works> w = worksDao.find(hql, obj);
		return w;
	}

	/**
	 * 根据作品ID修改作品
	 */
	public String updateworks(Works wo) {
		try {
			worksDao.marge(wo);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}

	/**
	 * 根据ID删除作品信息
	 */
	public String deleteworks(Works wos) {
		try {
			worksDao.delete(wos);
			return "1";
		} catch (Exception e) {
			return "0";
			// e.printStackTrace();
		}
	}

	/**
	 * 配音员主页的作品列表
	 */
	public List<Works> findworksvoice(String sfgk) {
		String hql = "from Works w where w.wxiebei=?";
		List<Works> listw = worksDao.find(hql, sfgk);
		return listw;
	}

	/**
	 * 多条件分页查询配音员主页的作品列表
	 */
	public PaginationSupport<Works> voiceworklist(String sfgk, int pageSize,
			int currPageNo, Map<String, String> mapwos) {
		PaginationSupport<Works> worlst = new PaginationSupport<Works>();
		if (currPageNo > 0)
			worlst.setCurrPageNo(currPageNo);
		if (pageSize > 0)
			worlst.setPageSize(pageSize);
		DetachedCriteria criteria = DetachedCriteria.forClass(Works.class);

		if (mapwos.get("P") != null) {
			criteria.add(Restrictions.eq("tvoice.tvid", mapwos.get("P")));
		}
		if (mapwos.get("Y") != null) {
			criteria.add(Restrictions.eq("lgtype.lid", mapwos.get("Y")));
		}
		if (mapwos.get("N") != null) {
			criteria.add(Restrictions.eq("scrowd.sid", mapwos.get("N")));
		}
		if (mapwos.get("T") != null) {
			criteria.add(Restrictions.eq("ysyleix.yslid", mapwos.get("T")));
		}
		if (!sfgk.equals(" ")) {
			criteria.add(Restrictions.eq("wxiebei", sfgk));
		}
		criteria.addOrder(Order.desc("wtime"));
		// 统计总条数
		criteria.setProjection(Property.forName("wid").count());
		int conct = worksDao.getRowCount(criteria).intValue();
		worlst.setTotalCount(conct);
		// 总条数不等于0才执行
		if (conct != 0) {
			// 总页数
			int totalpage = (conct + worlst.getPageSize() - 1)
					/ worlst.getPageSize();
			worlst.setTotalPageCount(totalpage);
			if (worlst.getCurrPageNo() > totalpage) {
				worlst.setCurrPageNo(totalpage);
			}
			// 分页查询
			// 清理投影条件
			criteria.setProjection(null);
			List<Works> wilist = worksDao.findByPage(criteria,
					worlst.getCurrPageNo(), worlst.getPageSize());
			worlst.setItems(wilist);
		}

		return worlst;
	}

	/**
	 * 根据作品ID查询作品信息
	 */
	public Works finws(String ids) {
		Works ws = worksDao.get(ids);
		return ws;
	}

}

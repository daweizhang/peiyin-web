package voice.com.biz.Impl;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import voice.com.biz.AisadminBiz;
import voice.com.dao.AisadminDao;
import voice.com.pojo.Aisadmin;
import voice.com.util.PaginationSupport;

public class AisadminBizImpl implements AisadminBiz {

	private AisadminDao aisadminDao;

	public void setAisadminDao(AisadminDao aisadminDao) {
		this.aisadminDao = aisadminDao;
	}

	public Aisadmin loginAisadmin(Object[] objects) {
		List<Aisadmin> aisadmins = aisadminDao.find(
				"from Aisadmin a where a.aisadmName=? and a.aisadpassword=?",
				objects);
		Aisadmin aisadmin = null;
		if (aisadmins != null && aisadmins.size() > 0) {
			aisadmin = aisadmins.get(0);
		}
		return aisadmin;
	}

	@Override
	public void saveAisadMin(Aisadmin aisadmin) {
		aisadminDao.save(aisadmin);
	}

	@Override
	public List<Aisadmin> getAisadminList(PaginationSupport<Aisadmin> pageinfo,
			Map<String, String> query) {
		DetachedCriteria dc = DetachedCriteria.forClass(Aisadmin.class);
		String aisadmName = query.get("aisadmName");
		String aisadName = query.get("aisadName");
		if (aisadmName != null && !"".equals(aisadmName)) {
			dc.add(Restrictions.like("aisadmName", "%" + aisadmName + "%"));
		}
		if (aisadName != null && !"".equals(aisadName)) {
			dc.add(Restrictions.like("aisadName", "%" + aisadName + "%"));
		}

		dc.add(Restrictions.eq("aisadzhiwei", 2));

		List<Aisadmin> aisadmins = aisadminDao.findByPage(dc,
				pageinfo.getCurrPageNo(), pageinfo.getPageSize());
		return aisadmins;
	}

	@Override
	public int getAisadMinCount(Map<String, String> query) {
		DetachedCriteria dc = DetachedCriteria.forClass(Aisadmin.class);
		String aisadmName = query.get("aisadmName");
		String aisadName = query.get("aisadName");
		dc.setProjection(Projections.rowCount());
		if (aisadmName != null && !"".equals(aisadmName)) {
			dc.add(Restrictions.like("aisadmName", "%" + aisadmName + "%"));
		}
		if (aisadName != null && !"".equals(aisadName)) {
			dc.add(Restrictions.like("aisadName", "%" + aisadName + "%"));
		}
		dc.add(Restrictions.eq("aisadzhiwei", 2));
		@SuppressWarnings("rawtypes")
		List no = aisadminDao.findByCriteria(dc);
		int count = 0;
		if (no != null) {
			count = Integer.valueOf(no.get(0).toString());
		}
		return count;
	}

	@Override
	public Aisadmin getAisadminbyId(String aid) {
		Aisadmin aisadmin = null;
		if (!StringUtils.isEmpty(aid)) {
			List<Aisadmin> aisadmins = aisadminDao.find(
					"FROM Aisadmin a where  a.aid=?", aid);
			if (aisadmins != null && aisadmins.size() > 0) {
				aisadmin = aisadmins.get(0);
			}
		}
		return aisadmin;
	}

	public int updateAisadminbyId(Aisadmin aisadmin) {
		Session session = aisadminDao.getSession();
		Query query = session
				.createQuery("update Aisadmin a set a.aisadPortrait=? where a.aid=?");
		query.setParameter(0, aisadmin.getAisadPortrait());
		query.setParameter(1, aisadmin.getAid());
		int count = query.executeUpdate();
		session.close();
		return count;
	}

	@Override
	public int updateAisadminby(Aisadmin aisadmin) {
		int count = 0;
		if (aisadmin != null) {
			Session session = aisadminDao.getSession();
			StringBuilder sb = new StringBuilder(
					"update Aisadmin a set a.aisadmName=?,a.aisadpassword=?,a.aisadName=?");
			sb.append(",a.aisadSex=?,a.aisadEmail=?,a.aisadPhone=?,a.aisadredTime=?,a.aisadlastTime=?,a.aisadloginStus=?");
			sb.append(",a.aisadip=?,a.aisadzhiwei=? where a.aid=?");
			Query query = session.createQuery(sb.toString());
			query.setParameter(0, aisadmin.getAisadmName());
			query.setParameter(1, aisadmin.getAisadpassword());
			query.setParameter(2, aisadmin.getAisadName());
			query.setParameter(3, aisadmin.getAisadSex());
			query.setParameter(4, aisadmin.getAisadEmail());
			query.setParameter(5, aisadmin.getAisadPhone());
			query.setParameter(6, aisadmin.getAisadredTime());
			query.setParameter(7, aisadmin.getAisadlastTime());
			query.setParameter(8, aisadmin.getAisadloginStus());
			query.setParameter(9, aisadmin.getAisadip());
			query.setParameter(10, aisadmin.getAisadzhiwei());
			query.setParameter(11, aisadmin.getAid());
			count = query.executeUpdate();
			session.close();
		}
		return count;
	}

	@Override
	public void deleteAdminData(Aisadmin aisadmin) {
		aisadminDao.delete(aisadmin);

	}

	public void addAdmin(Aisadmin aisadmin) {
		aisadminDao.save(aisadmin);
	}

	public Boolean getAisadminbyAdminName(String aisadmName) {
		Boolean result = true;
		if (!StringUtils.isEmpty(aisadmName)) {
			List<Aisadmin> aisadmins = aisadminDao.find(
					"FROM Aisadmin a where  a.aisadmName=?", aisadmName);
			if (aisadmins != null && aisadmins.size() > 0) {
				result = false;
			}
		}
		return result;
	}

	public int updateAdminPasswordbyid(Aisadmin aisadmin) {
		Session session = aisadminDao.getSession();
		Query query = session
				.createQuery("update Aisadmin a set a.aisadpassword=? where a.aid=?");
		query.setParameter(0, aisadmin.getAisadpassword());
		query.setParameter(1, aisadmin.getAid());
		int count = query.executeUpdate();
		session.close();

		return count;
	}

}

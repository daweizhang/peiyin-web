package voice.com.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.Collection;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import voice.com.dao.BaseDao;

public class BaseDaoImpl<T> implements BaseDao<T> {


	private HibernateTemplate hibernateTemplate;
	
	private Class<T> cls;
	

	@SuppressWarnings("unchecked")
	public BaseDaoImpl(){
	   cls=(Class<T>) ((ParameterizedType)this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
    @Autowired
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void save(T entity) {
	  
		this.getHibernateTemplate().save(entity);
		
	}


	@Override
	public void update(T entity) {
		this.getHibernateTemplate().update(entity);
		
	}

	@Override
	public void saveOrUpdate(T entity) {
		this.getHibernateTemplate().saveOrUpdate(entity);
		
	}

	@Override
	public T marge(T entity) {
		this.getHibernateTemplate().merge(entity);
		return null;
	}

	@Override
	public void delete(T entity) {
		this.getHibernateTemplate().delete(entity);
		
	}

	@Override
	public void deleteAll(Collection<T> entities) {
		this.getHibernateTemplate().deleteAll(entities);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByCriteria(DetachedCriteria criteria) {
		
		return this.getHibernateTemplate().findByCriteria(criteria);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByPage(DetachedCriteria criteria, int pageNo,
			int pageSize) {

		return this.getHibernateTemplate().findByCriteria(criteria, (pageNo-1)*pageSize, pageSize);
	}

	@Override
	public Long getRowCount(DetachedCriteria criteria) {
//		criteria.setProjection(Property.forName("id").count());	
		return (Long)this.getHibernateTemplate().findByCriteria(criteria).get(0);
	   
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByExample(T exampleEntity) {
		
		return this.getHibernateTemplate().findByExample(exampleEntity);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> find(String hql, Object... Objects) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find(hql, Objects);
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<T> getTopResult(DetachedCriteria criteria, int top) {		
		return this.getHibernateTemplate().findByCriteria(criteria, 0, top);
        //����д��:this.findByPage(criteria, 0, top);
        //this.getHibernateTemplate().setMaxResults(top);
	}

	@Override
	public T get(java.io.Serializable id) {
		
		return this.getHibernateTemplate().get(cls,id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() {
		
		return this.getHibernateTemplate().find("from "+cls.getSimpleName());
	}
	
	public  Session getSession(){
		SessionFactory  factory = this.getHibernateTemplate().getSessionFactory();
		Session session=factory.openSession();
		return session;
	}


	public Session getCurrentSessions() {
		SessionFactory  factory = this.getHibernateTemplate().getSessionFactory();
		Session session=factory.getCurrentSession();
		return session;
	}

}

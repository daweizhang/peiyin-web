package voice.com.dao;

import java.util.Collection;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T> {
	
    public void save(T entity);
    
    public T get(java.io.Serializable id);
    
    public void update(T entity);
    
    public void saveOrUpdate(T entity);
    
    public T marge(T entity);
    
    public void delete(T entity);
    
    public void deleteAll(Collection<T> entities);
    
    public List<T> findByCriteria(DetachedCriteria criteria);
    
    public List<T> findByPage(DetachedCriteria criteria,int pageNo,int pageSize);
    
    public Long getRowCount(DetachedCriteria criteria);
    
    public List<T> findByExample(T exampleEntity);
    
    public List<T> find(String hql,Object... Objects);
    
    public List<T> findAll();
    
    public List<T> getTopResult(DetachedCriteria criteria,int top);
    
    public  Session getSession();
    
    public  Session getCurrentSessions();
}

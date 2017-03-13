package voice.com.biz.Impl;

import java.util.List;

import voice.com.biz.YsyleixBiz;
import voice.com.dao.YsyleixDao;
import voice.com.pojo.Ysyleix;

public class YsyleixBizImpl implements YsyleixBiz {

	private YsyleixDao ysyleixDao;

	public void setYsyleixDao(YsyleixDao ysyleixDao) {
		this.ysyleixDao = ysyleixDao;
	}

	/**
	 * 查询所有的声音类型
	 */
	public List<Ysyleix> findylsiex() {
		List<Ysyleix> licysy = ysyleixDao.find("from Ysyleix y");
		return licysy;
	}

}

package voice.com.biz.Impl;

import java.util.List;

import voice.com.biz.BftranslateBiz;
import voice.com.dao.BftranslateDao;
import voice.com.pojo.Bftranslate;

public class BftranslateBizImpl implements BftranslateBiz {

	private BftranslateDao bftranslateDao;

	public void setBftranslateDao(BftranslateDao bftranslateDao) {
		this.bftranslateDao = bftranslateDao;
	}

	/**
	 * 翻译添加
	 */
	public String saveBftan(Bftranslate bf) {

		try {
			bftranslateDao.save(bf);
			return "222";
		} catch (Exception e) {
			return "333";
			// e.printStackTrace();
		}
	}

	/**
	 * 根据临时ID查询翻译ID
	 */
	public Bftranslate findbftran(String finds) {
		Bftranslate bf = null;
		String hql = "from Bftranslate b where b.bftisyi=?";
		List<Bftranslate> bfls = bftranslateDao.find(hql, finds);
		if (bfls.size() > 0) {
			bf = bfls.get(0);
		}
		return bf;
	}

	// 根据ID查询翻译表
	public Bftranslate findbf(String bfid) {

		Bftranslate b = bftranslateDao.get(bfid);

		return b;
	}

	// 修改翻译
	public String updatebf(Bftranslate bfs) {
		try {
			bftranslateDao.marge(bfs);
			return "222";
		} catch (Exception e) {
			return "333";
		}
	}

}

package voice.com.biz;

import voice.com.pojo.Bftranslate;

public interface BftranslateBiz {

	// 添加翻译
	String saveBftan(Bftranslate bf);

	// 根据临时ID查询翻译ID
	Bftranslate findbftran(String finds);

	// 根据ID查询翻译表
	Bftranslate findbf(String bfid);

	// 修改翻译表
	String updatebf(Bftranslate bfs);

}

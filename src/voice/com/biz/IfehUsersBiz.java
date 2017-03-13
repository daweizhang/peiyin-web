package voice.com.biz;

import java.util.List;

import voice.com.pojo.IfehUsers;

public interface IfehUsersBiz {
	
	//添加用户英文字段
	public String ehusave(IfehUsers ehus);
	
	//根据Users查询该用户的英文字段
	public List<IfehUsers> findehusers(String users);
	
	//修改
	public String updatehus(IfehUsers ehd);

}

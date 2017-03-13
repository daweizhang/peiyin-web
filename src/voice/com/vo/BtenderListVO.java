package voice.com.vo;

import java.io.Serializable;

public class BtenderListVO implements Serializable {

	/**
	 * 任务主页的vo类
	 */
	private static final long serialVersionUID = 1L;
	private String rwbid; //任务ID
	private String rwbName;//任务名称
	private String rwbfName;//任务名称中文
	private Integer rermb;//任务价位
	private String rwTime;//发布时间
	private String rwiUser;//任务用户
	private String reType;//任务类型
	private String reTypebf;//任务类型(英文)
	private String rengj;//任务国界
	private String rwcount;//任务竞标人数
	private String rwzts;//任务状态

	public BtenderListVO() {

	}

	public BtenderListVO(String rwbid, String rwbName,String rwbfName, Integer rermb,
			String rwTime, String rwiUser, String reType,String reTypebf,String rengj, String rwcount,String rwzts) {
		this.rwbid = rwbid;
		this.rwbName = rwbName;
		this.rwbfName=rwbfName;
		this.rermb = rermb;
		this.rwTime = rwTime;
		this.rwiUser = rwiUser;
		this.reType = reType;
		this.rwcount = rwcount;
		this.rengj=rengj;
		this.reTypebf=reTypebf;
		this.rwzts=rwzts;
	}

	public String getRwbid() {
		return rwbid;
	}

	public void setRwbid(String rwbid) {
		this.rwbid = rwbid;
	}
    
	public String getRwbfName() {
		return rwbfName;
	}

	public void setRwbfName(String rwbfName) {
		this.rwbfName = rwbfName;
	}

	public String getRwbName() {
		return rwbName;
	}
    
	public String getRengj() {
		return rengj;
	}

	public void setRengj(String rengj) {
		this.rengj = rengj;
	}

	public void setRwbName(String rwbName) {
		this.rwbName = rwbName;
	}

	public Integer getRermb() {
		return rermb;
	}

	public void setRermb(Integer rermb) {
		this.rermb = rermb;
	}

	public String getRwTime() {
		return rwTime;
	}

	public void setRwTime(String rwTime) {
		this.rwTime = rwTime;
	}

	public String getRwiUser() {
		return rwiUser;
	}

	public void setRwiUser(String rwiUser) {
		this.rwiUser = rwiUser;
	}

	public String getReType() {
		return reType;
	}

	public void setReType(String reType) {
		this.reType = reType;
	}
    
	public String getReTypebf() {
		return reTypebf;
	}

	public void setReTypebf(String reTypebf) {
		this.reTypebf = reTypebf;
	}

	public String getRwcount() {
		return rwcount;
	}

	public void setRwcount(String rwcount) {
		this.rwcount = rwcount;
	}

	public String getRwzts() {
		return rwzts;
	}

	public void setRwzts(String rwzts) {
		this.rwzts = rwzts;
	}
    
}

package voice.com.vo;

import java.io.Serializable;



public class BtenderVO implements Serializable{


	/**
	 * VO类用于查询任务方的所有任务的过度信息查询
	 */
	private static final long serialVersionUID = 1L;
	
	private String bid;//任务ID
	private String bname;//任务名称
	private String bnamebf;//中文任务名称
    private String btime;//任务添加时间
    private String buser;//添加人
    private String bvoicetype;//任务类型
    private String bzt;//任务状态
    private String bztbf;//任务状态（英文）
    private String bts;//备注
    private String reTypebf;//任务类型(英文)
    private String count;//参与人的总数量
	public BtenderVO(String bid, String bname, String btime, String buser,String bnamebf,
			String bvoicetype, String bzt,String bztbf, String bts,String reTypebf, String count) {
		this.bid = bid;
		this.bname = bname;
		this.btime = btime;
		this.buser = buser;
		this.bnamebf=bnamebf;
		this.bvoicetype = bvoicetype;
		this.bzt = bzt;
		this.bztbf=bztbf;
		this.bts = bts;
		this.count = count;
		this.reTypebf=reTypebf;
	}
	public BtenderVO() {
		
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBtime() {
		return btime;
	}
	public void setBtime(String btime) {
		this.btime = btime;
	}
	public String getBuser() {
		return buser;
	}
	public void setBuser(String buser) {
		this.buser = buser;
	}
	public String getBvoicetype() {
		return bvoicetype;
	}
	public void setBvoicetype(String bvoicetype) {
		this.bvoicetype = bvoicetype;
	}
	
	
	public String getBnamebf() {
		return bnamebf;
	}
	public void setBnamebf(String bnamebf) {
		this.bnamebf = bnamebf;
	}
	public String getBztbf() {
		return bztbf;
	}
	public void setBztbf(String bztbf) {
		this.bztbf = bztbf;
	}
	public String getBzt() {
		return bzt;
	}
	public void setBzt(String bzt) {
		this.bzt = bzt;
	}
	public String getBts() {
		return bts;
	}
	public void setBts(String bts) {
		this.bts = bts;
	}
	
	public String getReTypebf() {
		return reTypebf;
	}
	public void setReTypebf(String reTypebf) {
		this.reTypebf = reTypebf;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	
	
	
	
	
}

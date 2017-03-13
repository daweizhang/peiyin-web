package voice.com.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;





@Entity
@Table(name="W_works")
public class Works implements Serializable{

	/**
	 * 用户作品
	 */
	private static final long serialVersionUID = 1L;
	
	private String wid;// uniqueidentifier primary key default newid(),--竞标人作品ID
	private String worksName;// nvarchar(50),--竞标人作品名称
	private String worksFile;// nvarchar(250),--音频文件
    private String wtime;// Date,             --上传时间
    private String wuserNames;//W_UserID uniqueidentifier,            --属于哪个人的ID
    private Integer workScore;// int,         --作品评分  
    private String wxiebei;// varchar(5),            --性别(1是男  2是女)
    private Scrowd scrowd;//W_renQunID uniqueidentifier,          --人群类型ID
    private Lgtype lgtype;//W_GtypeID uniqueidentifier,           --语言类型ID
    private Tvoice tvoice;//W_VoiceID uniqueidentifier,           --配音类型ID
    private Ysyleix ysyleix;//W_slID uniqueidentifier,              --声音类型ID
    private Integer wliulanRs;// int,          --浏览人数 
    private String wts;// nvarchar(50),       --备用字段
	private String wpyid;//配音员ID
	private String wehName;//英文作品标题
    
    
    
    public Works() {
		
	}




	public Works(String wid, String worksName, String worksFile, String wtime,
			String wuserNames, Integer workScore, String wxiebei, Scrowd scrowd,
			Lgtype lgtype, Tvoice tvoice, Ysyleix ysyleix, Integer wliulanRs,
			String wts,String wpyid,String wehName) {
		
		this.wid = wid;
		this.worksName = worksName;
		this.worksFile = worksFile;
		this.wtime = wtime;
		this.wuserNames = wuserNames;
		this.workScore = workScore;
		this.wxiebei = wxiebei;
		this.scrowd = scrowd;
		this.lgtype = lgtype;
		this.tvoice = tvoice;
		this.ysyleix = ysyleix;
		this.wliulanRs = wliulanRs;
		this.wts = wts;
		this.wpyid=wpyid;
		this.wehName=wehName;
	}



	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="W_ID")
	public String getWid() {
		return wid;
	}



    
	public void setWid(String wid) {
		this.wid = wid;
	}



	@Column(name="W_worksName",length=50)
	public String getWorksName() {
		return worksName;
	}




	public void setWorksName(String worksName) {
		this.worksName = worksName;
	}



	@Column(name="W_worksFile",length=250)
	public String getWorksFile() {
		return worksFile;
	}




	public void setWorksFile(String worksFile) {
		this.worksFile = worksFile;
	}



	@Column(name="W_Time",length=50)
	public String getWtime() {
		return wtime;
	}




	public void setWtime(String wtime) {
		this.wtime = wtime;
	}



	@Column(name="W_UserID",length=40)
	public String getWuserNames() {
		return wuserNames;
	}




	public void setWuserNames(String wuserNames) {
		this.wuserNames = wuserNames;
	}



	@Column(name="W_workScore")
	public Integer getWorkScore() {
		return workScore;
	}




	public void setWorkScore(Integer workScore) {
		this.workScore = workScore;
	}



	@Column(name="W_xiebei",length=5)
	public String getWxiebei() {
		return wxiebei;
	}




	public void setWxiebei(String wxiebei) {
		this.wxiebei = wxiebei;
	}



	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="W_renQunID")
	public Scrowd getScrowd() {
		return scrowd;
	}




	public void setScrowd(Scrowd scrowd) {
		this.scrowd = scrowd;
	}



	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="W_GtypeID")
	public Lgtype getLgtype() {
		return lgtype;
	}




	public void setLgtype(Lgtype lgtype) {
		this.lgtype = lgtype;
	}



	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="W_VoiceID")
	public Tvoice getTvoice() {
		return tvoice;
	}




	public void setTvoice(Tvoice tvoice) {
		this.tvoice = tvoice;
	}



	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="W_slID")
	public Ysyleix getYsyleix() {
		return ysyleix;
	}



 
	public void setYsyleix(Ysyleix ysyleix) {
		this.ysyleix = ysyleix;
	}



	@Column(name="W_liulanRs")
	public Integer getWliulanRs() {
		return wliulanRs;
	}




	public void setWliulanRs(Integer wliulanRs) {
		this.wliulanRs = wliulanRs;
	}



	@Column(name="W_TS",length=50)
	public String getWts() {
		return wts;
	}




	public void setWts(String wts) {
		this.wts = wts;
	}



	@Column(name="W_pyID",length=40)
	public String getWpyid() {
		return wpyid;
	}




	public void setWpyid(String wpyid) {
		this.wpyid = wpyid;
	}



	@Column(name="W_ehName",length=500)
	public String getWehName() {
		return wehName;
	}




	public void setWehName(String wehName) {
		this.wehName = wehName;
	}
	

}

package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="B_tender")
public class Btender implements Serializable{

	/**
	 * 任务信息表
	 */
	private static final long serialVersionUID = 1L;
	
	private String btid;// uniqueidentifier primary key default newid(),--任务信息ID
	private String btName;// nvarchar(50),--任务信息标题
    private String btime;// Date, --任务发布时间
    private String bUserID;//B_UserID uniqueidentifier, --任务发布人ID
    private Lgtype lgtype;//B_GtypeID uniqueidentifier, --任务语言类型ID
    private Tvoice tvoice;// uniqueidentifier, --任务配音类型ID
    private String bypfile;// nvarchar(300),   --任务音频文件（样音）
    private String bsex;// varchar(5),--任务要求性别(1是男  2是女)
    private Scrowd scrowd;// B_CrowdID uniqueidentifier,--任务要求配音人群ID
    private String btimeLength;// varchar(30), --任务要求配音时间长度//废弃字段
    private String bpygaowen;// nvarchar(500), --试音稿文
    private String bvoicefileName;//正式文稿文件
    private String bxxmiaoshu;// nvarchar(500),--任务要求详细描述
    private String basofTime;// Date,--任务周期//废弃字段改为正式稿文字数
    private Integer bprice;// money,--任务预算价位
    private Zstate zstate;//B_stateID uniqueidentifier,--招标信息状态ID
    private Integer bliuyanNum;// int,          --浏览人数
    private Fileormat bfilegeshi;//  要求文件格式
    private Hspeed bpyyusu;//     配音语速
    private String bts;// 默认为0产生零时订单时已改为1;
    
    //后增加字段
    private String bsffy;//(正式稿文是否需要翻译)(205,不需要--208,需要);
    private String brwtype;//任务类型(111国外，222国内)
    private Bftranslate bftranslate;//字段翻译表
    private Integer bcounts;//竞标人数量
    
    private String brwjdjls;//任务进度记录数
	
    

    public Btender() {
		
	}
	public Btender(String btid, String btName, String btime, String bUserID,
			Lgtype lgtype, Tvoice tvoice, String bypfile, String bsex,
			Scrowd scrowd, String btimeLength, String bpygaowen,String bvoicefileName,
			String bxxmiaoshu, String basofTime, Integer bprice, Zstate zstate,
			Integer bliuyanNum,Fileormat bfilegeshi,Hspeed bpyyusu,String bts,String bsffy,String brwtype,Bftranslate bftranslate,Integer bcounts,String brwjdjls) {
		
		this.btid = btid;
		this.btName = btName;
		this.btime = btime;
		this.bUserID = bUserID;
		this.lgtype = lgtype;
		this.tvoice = tvoice;
		this.bypfile = bypfile;
		this.bsex = bsex;
		this.scrowd = scrowd;
		this.btimeLength = btimeLength;
		this.bpygaowen = bpygaowen;
		this.bvoicefileName = bvoicefileName;
		this.bxxmiaoshu = bxxmiaoshu;
		this.basofTime = basofTime;
		this.bprice = bprice;
		this.zstate = zstate;
		this.bliuyanNum = bliuyanNum;
		this.bfilegeshi=bfilegeshi;
		this.bpyyusu = bpyyusu;
		this.bts = bts;
		this.bsffy=bsffy;
		this.brwtype=brwtype;
		this.bftranslate=bftranslate;
		this.bcounts=bcounts;
		this.brwjdjls=brwjdjls;
	}
	
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
    @Column(name="B_TID")
	public String getBtid() {
		return btid;
	}
	public void setBtid(String btid) {
		this.btid = btid;
	}
	
	@Column(name="B_TName",length=100)
	public String getBtName() {
		return btName;
	}
	public void setBtName(String btName) {
		this.btName = btName;
	}
	
	@Column(name="B_Time",length=50)
	public String getBtime() {
		return btime;
	}
	public void setBtime(String btime) {
		this.btime = btime;
	}
	
	@Column(name="B_UserID",length=50)
	public String getbUserID() {
		return bUserID;
	}
	public void setbUserID(String bUserID) {
		this.bUserID = bUserID;
	}
	
	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="B_GtypeID")
	public Lgtype getLgtype() {
		return lgtype;
	}
	public void setLgtype(Lgtype lgtype) {
		this.lgtype = lgtype;
	}
	
	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="B_VoiceID")
	public Tvoice getTvoice() {
		return tvoice;
	}
	public void setTvoice(Tvoice tvoice) {
		this.tvoice = tvoice;
	}
	
	@Column(name="B_Ypfile",length=300)
	public String getBypfile() {
		return bypfile;
	}
	public void setBypfile(String bypfile) {
		this.bypfile = bypfile;
	}
	
	@Column(name="B_Sex",length=40)
	public String getBsex() {
		return bsex;
	}
	public void setBsex(String bsex) {
		this.bsex = bsex;
	}
	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="B_CrowdID")
	public Scrowd getScrowd() {
		return scrowd;
	}
	public void setScrowd(Scrowd scrowd) {
		this.scrowd = scrowd;
	}
	
	@Column(name="B_TimeLength",length=30)
	public String getBtimeLength() {
		return btimeLength;
	}
	public void setBtimeLength(String btimeLength) {
		this.btimeLength = btimeLength;
	}
	
	@Column(name="B_pygaowen",length=500)
	public String getBpygaowen() {
		return bpygaowen;
	}
	public void setBpygaowen(String bpygaowen) {
		this.bpygaowen = bpygaowen;
	}
	@Column(name="B_voicefileName",length=500)
	public String getBvoicefileName() {
		return bvoicefileName;
	}
	public void setBvoicefileName(String bvoicefileName) {
		this.bvoicefileName = bvoicefileName;
	}
	@Column(name="B_xxmiaoshu",length=500)
	public String getBxxmiaoshu() {
		return bxxmiaoshu;
	}
	public void setBxxmiaoshu(String bxxmiaoshu) {
		this.bxxmiaoshu = bxxmiaoshu;
	}
	@Column(name="B_AsofTime",length=50)
	public String getBasofTime() {
		return basofTime;
	}
	public void setBasofTime(String basofTime) {
		this.basofTime = basofTime;
	}
	@Column(name="B_Price")
	public Integer getBprice() {
		return bprice;
	}
	public void setBprice(Integer bprice) {
		this.bprice = bprice;
	}
	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="B_stateID")
	public Zstate getZstate() {
		return zstate;
	}
	public void setZstate(Zstate zstate) {
		this.zstate = zstate;
	}
	
	@Column(name="B_liuyanNum")
	public Integer getBliuyanNum() {
		return bliuyanNum;
	}
	public void setBliuyanNum(Integer bliuyanNum) {
		this.bliuyanNum = bliuyanNum;
	}
	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="B_filegeshi")
	public Fileormat getBfilegeshi() {
		return bfilegeshi;
	}
	public void setBfilegeshi(Fileormat bfilegeshi) {
		this.bfilegeshi = bfilegeshi;
	}
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="B_pyyusu")
	public Hspeed getBpyyusu() {
		return bpyyusu;
	}
	public void setBpyyusu(Hspeed bpyyusu) {
		this.bpyyusu = bpyyusu;
	}
	@Column(name="B_TS",length=50)
	public String getBts() {
		return bts;
	}
	public void setBts(String bts) {
		this.bts = bts;
	}
	@Column(name="B_sffy",length=50)
	public String getBsffy() {
		return bsffy;
	}
	public void setBsffy(String bsffy) {
		this.bsffy = bsffy;
	}
	@Column(name="B_rwtype",length=50)
	public String getBrwtype() {
		return brwtype;
	}
	public void setBrwtype(String brwtype) {
		this.brwtype = brwtype;
	}
	
	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="b_bfid")
	public Bftranslate getBftranslate() {
		return bftranslate;
	}
	public void setBftranslate(Bftranslate bftranslate) {
		this.bftranslate = bftranslate;
	}
	
	@Column(name="b_counts",length=50)
	public Integer getBcounts() {
		return bcounts;
	}
	public void setBcounts(Integer bcounts) {
		this.bcounts = bcounts;
	}
	@Column(name="b_rwjdjls",length=50)
	public String getBrwjdjls() {
		return brwjdjls;
	}
	public void setBrwjdjls(String brwjdjls) {
		this.brwjdjls = brwjdjls;
	}
     
    
	
}

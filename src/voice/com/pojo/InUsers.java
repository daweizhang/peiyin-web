package voice.com.pojo;

import java.io.Serializable;
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
@Table(name="InUsers")
public class InUsers implements Serializable{

	/**
	 * 用户表
	 */
	private static final long serialVersionUID = 1L;
	private String iid;       // uniqueidentifier primary key default newid(),
	private String iuserName; // nvarchar(50) not NULL unique, --账号
	private String ipassword; // nvarchar(50) not NULL, --用户密码
	private String iname;     // nvarchar(20), --昵称或姓名(改用户ID)
	private String iportrait; // nvarchar(200),--头像
	private String isex;      // varchar(5),--性别
	private String ibirthday; // nvarchar(50),--出身年月
	private String igName;    // nvarchar(20), --公司名称 ---------配音员无该字段
	private String igDetailed;// nvarchar(100),--公司详细地址---------配音员无该字段
	private String igPerson;  // nvarchar(20),--公司法人---------配音员无该字段
	private String iemail;    // nvarchar(100) not NULL,--邮箱地址
	private String iphone;    // nvarchar(50),--手机号码
	private String iregion;   // nvarchar(50),--国家地区
	private String iredTime;    // Date not NULL,--注册时间
	private String ilastTime;   // Date,--最后登录时间
    private Integer iloginStatus;// int,--登录状态
	private Integer icredibility;// int,--信誉度
	private Integer mxbi;         //M虚拟币改为配音员资料是否公开
    private Scrowd scrowd;    // uniqueidentifier,--人群阶段ID-----------任务方无该字段
    private String ilanguageLabels;// nvarchar(400),--语言类型标签-------------任务方无该字段
    private String ivoiceLabels;// nvarchar(400),--配音类型标签----------------任务方无该字段
    private String islID;     // varchar(400), --声音类型标签   -----------任务方无该字段
    private Dtype dtype;   // uniqueidentifier not NULL,--用户类型ID
    
    // its will be stored accent
    private String its;       // nvarchar(50),--备用字段    
	
    //后加字段
    private String ipynx; //配音员的配音年限
    //英文字段表
    private IfehUsers ifehs;
    //交易次数
    private Integer iscoced;//交易次数
    
    public InUsers() {
		
	}

	public InUsers(String iid, String iuserName, String ipassword,
			String iname, String iportrait, String isex, String ibirthday,
			String igName, String igDetailed, String igPerson, String iemail,
			String iphone, String iregion, String iredTime, String ilastTime,
			Integer iloginStatus, Integer icredibility, Integer mxbi, Scrowd scrowd,
			String ilanguageLabels, String ivoiceLabels, String islID,
			Dtype dtype, String its,String ipynx,IfehUsers ifehs,Integer iscoced) {
		this.iid = iid;
		this.iuserName = iuserName;
		this.ipassword = ipassword;
		this.iname = iname;
		this.iportrait = iportrait;
		this.isex = isex;
		this.ibirthday = ibirthday;
		this.igName = igName;
		this.igDetailed = igDetailed;
		this.igPerson = igPerson;
		this.iemail = iemail;
		this.iphone = iphone;
		this.iregion = iregion;
		this.iredTime = iredTime;
		this.ilastTime = ilastTime;
		this.iloginStatus = iloginStatus;
		this.icredibility = icredibility;
		this.mxbi = mxbi;
		this.scrowd = scrowd;
		this.ilanguageLabels = ilanguageLabels;
		this.ivoiceLabels = ivoiceLabels;
		this.islID = islID;
		this.dtype = dtype;
		this.its = its;
		this.ipynx=ipynx;
		this.ifehs=ifehs;
		this.iscoced=iscoced;
	}

	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="I_ID")
	public String getIid() {
		return iid;
	}

	public void setIid(String iid) {
		this.iid = iid;
	}

	@Column(name="I_UserName",length=50)
	public String getIuserName() {
		return iuserName;
	}

	public void setIuserName(String iuserName) {
		this.iuserName = iuserName;
	}
    
	@Column(name="I_Password",length=50)
	public String getIpassword() {
		return ipassword;
	}

	public void setIpassword(String ipassword) {
		this.ipassword = ipassword;
	}

	@Column(name="I_Name",length=50)
	public String getIname() {
		return iname;
	}
    
	public void setIname(String iname) {
		this.iname = iname;
	}
	
	@Column(name="I_Portrait",length=200)
	public String getIportrait() {
		return iportrait;
	}

	public void setIportrait(String iportrait) {
		this.iportrait = iportrait;
	}

	@Column(name="I_Sex",length=5)
	public String getIsex() {
		return isex;
	}

	public void setIsex(String isex) {
		this.isex = isex;
	}

	@Column(name="I_Birthday",length=50)
	public String getIbirthday() {
		return ibirthday;
	}

	public void setIbirthday(String ibirthday) {
		this.ibirthday = ibirthday;
	}
	@Column(name="I_GName",length=20)
	public String getIgName() {
		return igName;
	}

	public void setIgName(String igName) {
		this.igName = igName;
	}
	@Column(name="I_GDetailed",length=100)
	public String getIgDetailed() {
		return igDetailed;
	}

	public void setIgDetailed(String igDetailed) {
		this.igDetailed = igDetailed;
	}
	@Column(name="I_GPerson",length=20)
	public String getIgPerson() {
		return igPerson;
	}

	public void setIgPerson(String igPerson) {
		this.igPerson = igPerson;
	}
	@Column(name="I_Email",length=100)
	public String getIemail() {
		return iemail;
	}

	public void setIemail(String iemail) {
		this.iemail = iemail;
	}
	@Column(name="I_Phone",length=50)
	public String getIphone() {
		return iphone;
	}

	public void setIphone(String iphone) {
		this.iphone = iphone;
	}
	@Column(name="I_Region",length=50)
	public String getIregion() {
		return iregion;
	}
    
	public void setIregion(String iregion) {
		this.iregion = iregion;
	}
	
	@Column(name="I_RedTime",length=50)
	public String getIredTime() {
		return iredTime;
	}

	public void setIredTime(String iredTime) {
		this.iredTime = iredTime;
	}
	
	@Column(name="I_LastTime",length=50)
	public String getIlastTime() {
		return ilastTime;
	}

	public void setIlastTime(String ilastTime) {
		this.ilastTime = ilastTime;
	}
	@Column(name="I_LoginStatus")
	public Integer getIloginStatus() {
		return iloginStatus;
	}

	public void setIloginStatus(Integer iloginStatus) {
		this.iloginStatus = iloginStatus;
	}
	@Column(name="I_Credibility")
	public Integer getIcredibility() {
		return icredibility;
	}

	public void setIcredibility(Integer icredibility) {
		this.icredibility = icredibility;
	}
	@Column(name="I_Mxbi")
	public Integer getMxbi() {
		return mxbi;
	}

	public void setMxbi(Integer mxbi) {
		this.mxbi = mxbi;
	}

	//FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="I_crowd")
	public Scrowd getScrowd() {
		return scrowd;
	}

	public void setScrowd(Scrowd scrowd) {
		this.scrowd = scrowd;
	}

	@Column(name="I_LanguageLabels",length=400)
	public String getIlanguageLabels() {
		return ilanguageLabels;
	}

	public void setIlanguageLabels(String ilanguageLabels) {
		this.ilanguageLabels = ilanguageLabels;
	}
	@Column(name="I_VoiceLabels",length=400)
	public String getIvoiceLabels() {
		return ivoiceLabels;
	}

	public void setIvoiceLabels(String ivoiceLabels) {
		this.ivoiceLabels = ivoiceLabels;
	}
	@Column(name="I_slID",length=400)
	public String getIslID() {
		return islID;
	}
    
	public void setIslID(String islID) {
		this.islID = islID;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="I_yhlxID")
	public Dtype getDtype() {
		return dtype;
	}

	public void setDtype(Dtype dtype) {
		this.dtype = dtype;
	}
	@Column(name="I_TS",length=50)
	public String getIts() {
		return its;
	}

	public void setIts(String its) {
		this.its = its;
	}
	@Column(name="I_pynx",length=50)
	public String getIpynx() {
		return ipynx;
	}

	public void setIpynx(String ipynx) {
		this.ipynx = ipynx;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="I_bfids")
	public IfehUsers getIfehs() {
		return ifehs;
	}

	public void setIfehs(IfehUsers ifehs) {
		this.ifehs = ifehs;
	}
	@Column(name="I_scoced",length=50)
	public Integer getIscoced() {
		return iscoced;
	}

	public void setIscoced(Integer iscoced) {
		this.iscoced = iscoced;
	}
	
	

}

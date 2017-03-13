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
@Table(name = "P_artpate")
public class Partpate implements Serializable {

	/**
	 * 竞标人参与任务订单表 (邀请表多对多)
	 * developers：chen
	 */
	private static final long serialVersionUID = 1L;
	private String pid;//竞标人参与任务ID*
	private InUsers puserId;//竞标人(用户名)*
	private String pusersId;//任务方(用户名)*
	private Btender btender;//任务信息ID*
	private String pcyTime;//参与任务时间*
	private String pwcTime;//任务完成时间*
	private Uzbztb uzbztb;//招，竞标状态ID(竞标中，竞标成功，竞标失败)*

	private String paycount;// 任务方付款账户*
	private String ptotalprice;// 订单总金额*
	private String pzhifuzt;// 支付状态*（1未支付 2已支付 3交易成功,4交易失败）（实时查询字段）',
	private String ptimelimit;//任务时间范围
	private String ptemporaryid;//零时提交订单确认号
	private String pfqTime;//订单发起时间
	private String pmaturityTime;//任务到期时间（改为产品提交时间）
	private String pfkTime;// 付款时间*
	private String pjbrphone;// 改为配音员竞标价格人民币
	private String prwfphone;// 改配音员竞标价格美元
	private String pjbremail;// 改为正式订单号
	private String psyfileName; // 竞标提交的试音文件*
    
	private String prwfemail;//产品是否提交,100代表未提交 150审核中  作品200审核通过
	private String pvire;// 完成后提交的作品*
	private String pcName;// 支付宝实名姓名*
	private String pzfbaccount;// 收款方账户*
	private String pskzt;// 收款状态*(1.未收款 2.收款成功 3收款失败）（实时查询字段）',
	private String pckTime;// 发款时间*
    private String pthefinalfee;//最终获得的酬金
	
	private Complete complete;//完成状态ID*(竞标成功后产生，进行中，已完成，失败)
	private String pts;//备用字段*//改管理员联系配音员状态(0未联系   已联系)
    //是否评分
	private String pwhetherscore;//110未评分  111已评分
	//分数
	private String pscorect;


	public Partpate() {

	}

	public Partpate(String pid, InUsers puserId, String pusersId,
			Btender btender, String pcyTime, String pwcTime, Uzbztb uzbztb,
			String pjbrphone, String pjbremail, String paycount,
			String ptotalprice, String pzhifuzt,String ptimelimit,String ptemporaryid,String pfqTime,String pmaturityTime,String pfkTime,
			String prwfphone, String prwfemail, String psyfileName,
			String pvire, String pcName, String pzfbaccount, String pskzt,
			String pckTime,String pthefinalfee, Complete complete, String pts,String pwhetherscore,String pscorect) {
		this.pid = pid;
		this.puserId = puserId;
		this.pusersId = pusersId;
		this.btender = btender;
		this.pcyTime = pcyTime;
		this.pwcTime = pwcTime;
		this.uzbztb = uzbztb;
		this.pjbrphone = pjbrphone;
		this.pjbremail = pjbremail;
		this.paycount = paycount;
		this.ptotalprice = ptotalprice;
		this.pzhifuzt = pzhifuzt;
		this.ptimelimit=ptimelimit;
		this.ptemporaryid=ptemporaryid;
		this.pfqTime=pfqTime;
		this.pmaturityTime=pmaturityTime;
		this.pfkTime = pfkTime;
		this.prwfphone = prwfphone;
		this.prwfemail = prwfemail;
		this.psyfileName = psyfileName;
		this.pvire = pvire;
		this.pcName = pcName;
		this.pzfbaccount = pzfbaccount;
		this.pskzt = pskzt;
		this.pckTime = pckTime;
		this.pthefinalfee=pthefinalfee;
		this.complete = complete;
		this.pts = pts;
		this.pwhetherscore=pwhetherscore;
		this.pscorect=pscorect;
	}

	@Id
	@GenericGenerator(name = "systemUUID", strategy = "uuid")
	@GeneratedValue(generator = "systemUUID")
	@Column(name = "P_ID")
	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	// FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "P_UserID")
	public InUsers getPuserId() {
		return puserId;
	}

	public void setPuserId(InUsers puserId) {
		this.puserId = puserId;
	}

	@Column(name = "P_UserSID", length = 50)
	public String getPusersId() {
		return pusersId;
	}

	public void setPusersId(String pusersId) {
		this.pusersId = pusersId;
	}

	// FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "P_TenderID")
	public Btender getBtender() {
		return btender;
	}

	public void setBtender(Btender btender) {
		this.btender = btender;
	}

	@Column(name = "P_CyTime", length = 50)
	public String getPcyTime() {
		return pcyTime;
	}

	public void setPcyTime(String pcyTime) {
		this.pcyTime = pcyTime;
	}

	@Column(name = "P_WcTime", length = 50)
	public String getPwcTime() {
		return pwcTime;
	}

	public void setPwcTime(String pwcTime) {
		this.pwcTime = pwcTime;
	}

	// FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "P_zbID")
	public Uzbztb getUzbztb() {
		return uzbztb;
	}

	public void setUzbztb(Uzbztb uzbztb) {
		this.uzbztb = uzbztb;
	}

	@Column(name = "P_jbrphone", length = 50)
	public String getPjbrphone() {
		return pjbrphone;
	}

	public void setPjbrphone(String pjbrphone) {
		this.pjbrphone = pjbrphone;
	}

	@Column(name = "P_jbremail", length = 500)
	public String getPjbremail() {
		return pjbremail;
	}

	public void setPjbremail(String pjbremail) {
		this.pjbremail = pjbremail;
	}

	@Column(name = "P_rwfphone", length = 50)
	public String getPrwfphone() {
		return prwfphone;
	}

	public void setPrwfphone(String prwfphone) {
		this.prwfphone = prwfphone;
	}

	@Column(name = "P_rwfemail", length = 500)
	public String getPrwfemail() {
		return prwfemail;
	}

	public void setPrwfemail(String prwfemail) {
		this.prwfemail = prwfemail;
	}

	@Column(name = "P_syfileName", length = 500)
	public String getPsyfileName() {
		return psyfileName;
	}

	public void setPsyfileName(String psyfileName) {
		this.psyfileName = psyfileName;
	}

	// FetchType.EAGER默认为延迟加载可以改成LAZY立即加载
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "P_omplete")
	public Complete getComplete() {
		return complete;
	}

	public void setComplete(Complete complete) {
		this.complete = complete;
	}

	@Column(name = "P_vire", length = 500)
	public String getPvire() {
		return pvire;
	}

	public void setPvire(String pvire) {
		this.pvire = pvire;
	}

	@Column(name = "P_TS", length = 50)
	public String getPts() {
		return pts;
	}

	public void setPts(String pts) {
		this.pts = pts;
	}

	@Column(name = "P_aycount", length = 500)
	public String getPaycount() {
		return paycount;
	}

	public void setPaycount(String paycount) {
		this.paycount = paycount;
	}

	@Column(name = "P_totalprice", length = 50)
	public String getPtotalprice() {
		return ptotalprice;
	}

	public void setPtotalprice(String ptotalprice) {
		this.ptotalprice = ptotalprice;
	}

	@Column(name = "P_zhifuzt", length = 10)
	public String getPzhifuzt() {
		return pzhifuzt;
	}

	public void setPzhifuzt(String pzhifuzt) {
		this.pzhifuzt = pzhifuzt;
	}
	
	@Column(name = "P_timelimit", length = 50)
	public String getPtimelimit() {
		return ptimelimit;
	}

	public void setPtimelimit(String ptimelimit) {
		this.ptimelimit = ptimelimit;
	}
	@Column(name = "P_temporaryID", length = 100)
	public String getPtemporaryid() {
		return ptemporaryid;
	}

	public void setPtemporaryid(String ptemporaryid) {
		this.ptemporaryid = ptemporaryid;
	}
    
	@Column(name = "P_fqTime", length = 40)
	public String getPfqTime() {
		return pfqTime;
	}
	public void setPfqTime(String pfqTime) {
		this.pfqTime = pfqTime;
	}
	
	@Column(name = "P_maturityTime", length = 40)
	public String getPmaturityTime() {
		return pmaturityTime;
	}

	public void setPmaturityTime(String pmaturityTime) {
		this.pmaturityTime = pmaturityTime;
	}

	@Column(name = "P_fkTime", length = 40)
	public String getPfkTime() {
		return pfkTime;
	}

	public void setPfkTime(String pfkTime) {
		this.pfkTime = pfkTime;
	}

	@Column(name = "P_cName", length = 100)
	public String getPcName() {
		return pcName;
	}

	public void setPcName(String pcName) {
		this.pcName = pcName;
	}

	@Column(name = "P_zfbaccount", length = 100)
	public String getPzfbaccount() {
		return pzfbaccount;
	}

	public void setPzfbaccount(String pzfbaccount) {
		this.pzfbaccount = pzfbaccount;
	}

	@Column(name = "P_skzt", length = 10)
	public String getPskzt() {
		return pskzt;
	}

	public void setPskzt(String pskzt) {
		this.pskzt = pskzt;
	}
	@Column(name = "P_thefinalfee", length = 40)
	public String getPthefinalfee() {
		return pthefinalfee;
	}

	public void setPthefinalfee(String pthefinalfee) {
		this.pthefinalfee = pthefinalfee;
	}

	@Column(name = "P_skTime", length = 40)
	public String getPckTime() {
		return pckTime;
	}

	public void setPckTime(String pckTime) {
		this.pckTime = pckTime;
	}
	@Column(name = "P_whetherscore", length = 50)
	public String getPwhetherscore() {
		return pwhetherscore;
	}

	public void setPwhetherscore(String pwhetherscore) {
		this.pwhetherscore = pwhetherscore;
	}
	@Column(name = "P_scorect", length = 50)
	public String getPscorect() {
		return pscorect;
	}

	public void setPscorect(String pscorect) {
		this.pscorect = pscorect;
	}
    
}

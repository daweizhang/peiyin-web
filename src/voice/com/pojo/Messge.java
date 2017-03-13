package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="m_essge")
public class Messge implements Serializable{

	/**
	 * 聊天记录类
	 */
	private static final long serialVersionUID = 1L;
	private String mid;//流水ID
	private String mrole;//角色类型
	private String messagesender;//消息用户
	private String messagereceiver;//消息管理员
	private String mwhethertoview;//是否查看(222为已查看  333未查看)
	private String mdatesent;//发送日期
	private String messagecontent;//消息内容
	private String mwhetherdisplay;//聊天记录是否显示(1为显示  2为不限)
	private String mspareyi;//备用一改为显示(1客户消息  2管理员消息)
	
	private Integer mcount;//消息记录数
	
	private String mspareer;//备用二//改为消息用户头像或者管理员头像
	private String msparesan;//备用三//这个是记录总条数的某个对象(200为记录者)
	
	private Integer mclick;//点击事件记录数(201代表被点击者)
	
	private String mcwTime;//成为消息记录者的时间!
	
	public Messge() {
	}
	public Messge(String mid, String mrole, String messagesender,
			String messagereceiver, String mwhethertoview, String mdatesent,
			String messagecontent, String mwhetherdisplay, String mspareyi,
			Integer mcount,String mspareer, String msparesan,Integer mclick,String mcwTime) {
		this.mid = mid;
		this.mrole = mrole;
		this.messagesender = messagesender;
		this.messagereceiver = messagereceiver;
		this.mwhethertoview = mwhethertoview;
		this.mdatesent = mdatesent;
		this.messagecontent = messagecontent;
		this.mwhetherdisplay = mwhetherdisplay;
		this.mspareyi = mspareyi;
		this.mcount=mcount;
		this.mspareer = mspareer;
		this.msparesan = msparesan;
		this.mclick=mclick;
		this.mcwTime=mcwTime;
	}
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
    @Column(name="m_id")
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	
	@Column(name="m_role",length=40)
	public String getMrole() {
		return mrole;
	}
	public void setMrole(String mrole) {
		this.mrole = mrole;
	}
	
	@Column(name="m_essagesender",length=50)
	public String getMessagesender() {
		return messagesender;
	}
	public void setMessagesender(String messagesender) {
		this.messagesender = messagesender;
	}
	
	@Column(name="m_essagereceiver",length=50)
	public String getMessagereceiver() {
		return messagereceiver;
	}
	public void setMessagereceiver(String messagereceiver) {
		this.messagereceiver = messagereceiver;
	}
	
	@Column(name="m_whethertoview",length=40)
	public String getMwhethertoview() {
		return mwhethertoview;
	}
	public void setMwhethertoview(String mwhethertoview) {
		this.mwhethertoview = mwhethertoview;
	}
	
	@Column(name="m_datesent",length=50)
	public String getMdatesent() {
		return mdatesent;
	}
	public void setMdatesent(String mdatesent) {
		this.mdatesent = mdatesent;
	}
	
	@Column(name="m_essagecontent",length=5000)
	public String getMessagecontent() {
		return messagecontent;
	}
	public void setMessagecontent(String messagecontent) {
		this.messagecontent = messagecontent;
	}
	
	@Column(name="m_whetherdisplay",length=50)
	public String getMwhetherdisplay() {
		return mwhetherdisplay;
	}
	public void setMwhetherdisplay(String mwhetherdisplay) {
		this.mwhetherdisplay = mwhetherdisplay;
	}
	@Column(name="m_spareyi",length=50)
	public String getMspareyi() {
		return mspareyi;
	}
	public void setMspareyi(String mspareyi) {
		this.mspareyi = mspareyi;
	}
	
	@Column(name="m_count",length=50)
	public Integer getMcount() {
		return mcount;
	}
	public void setMcount(Integer mcount) {
		this.mcount = mcount;
	}
	@Column(name="m_spareer",length=500)
	public String getMspareer() {
		return mspareer;
	}
	
	public void setMspareer(String mspareer) {
		this.mspareer = mspareer;
	}
	@Column(name="m_sparesan",length=50)
	public String getMsparesan() {
		return msparesan;
	}
	public void setMsparesan(String msparesan) {
		this.msparesan = msparesan;
	}
	@Column(name="m_click",length=50)
	public Integer getMclick() {
		return mclick;
	}
	public void setMclick(Integer mclick) {
		this.mclick = mclick;
	}
	@Column(name="m_cwTime",length=50)
	public String getMcwTime() {
		return mcwTime;
	}
	public void setMcwTime(String mcwTime) {
		this.mcwTime = mcwTime;
	}
	
    
}

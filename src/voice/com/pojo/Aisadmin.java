package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "a_isadmin")
public class Aisadmin implements Serializable {

	/**
	 * 超级管理员
	 */
	private static final long serialVersionUID = 4457840218144115446L;
	private String aid;// 主键ID
	private String aisadmName;// 超级管理员账号
	private String aisadpassword;// 用户密码
	private String aisadName;// 姓名
	private String aisadPortrait;// 头像
	private String aisadSex;// 性别
	private String aisadEmail;// 邮箱地址
	private String aisadPhone;// 手机号码
	private String aisadredTime;// 注册时间
	private String aisadlastTime;// 登录时间
	private Integer aisadloginStus;// 登录状态
	private String aisadip;// 登录IP
	private Integer aisadzhiwei;// 职位权限
	private String aisadtsyi;// 备用1
	private String aisadtser;// 备用2
	private String aisadtsan;// 备用3

	public Aisadmin() {

	}

	public Aisadmin(String aid, String aisadmName, String aisadpassword,
			String aisadName, String aisadPortrait, String aisadSex,
			String aisadEmail, String aisadPhone, String aisadredTime,
			String aisadlastTime, Integer aisadloginStus, String aisadip,
			Integer aisadzhiwei, String aisadtsyi, String aisadtser,
			String aisadtsan) {
		this.aid = aid;
		this.aisadmName = aisadmName;
		this.aisadpassword = aisadpassword;
		this.aisadName = aisadName;
		this.aisadPortrait = aisadPortrait;
		this.aisadSex = aisadSex;
		this.aisadEmail = aisadEmail;
		this.aisadPhone = aisadPhone;
		this.aisadredTime = aisadredTime;
		this.aisadlastTime = aisadlastTime;
		this.aisadloginStus = aisadloginStus;
		this.aisadip = aisadip;
		this.aisadzhiwei = aisadzhiwei;
		this.aisadtsyi = aisadtsyi;
		this.aisadtser = aisadtser;
		this.aisadtsan = aisadtsan;
	}

	@Id
	@GenericGenerator(name = "systemUUID", strategy = "uuid")
	@GeneratedValue(generator = "systemUUID")
	@Column(name = "A_ID")
	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	@Column(name = "A_isadmName", length = 50)
	public String getAisadmName() {
		return aisadmName;
	}

	public void setAisadmName(String aisadmName) {
		this.aisadmName = aisadmName;
	}

	@Column(name = "A_isadPassword", length = 100)
	public String getAisadpassword() {
		return aisadpassword;
	}

	public void setAisadpassword(String aisadpassword) {
		this.aisadpassword = aisadpassword;
	}

	@Column(name = "A_isadName", length = 500)
	public String getAisadName() {
		return aisadName;
	}

	public void setAisadName(String aisadName) {
		this.aisadName = aisadName;
	}

	@Column(name = "A_isadPortrait", length = 500)
	public String getAisadPortrait() {
		return aisadPortrait;
	}

	public void setAisadPortrait(String aisadPortrait) {
		this.aisadPortrait = aisadPortrait;
	}

	@Column(name = "A_isadSex", length = 50)
	public String getAisadSex() {
		return aisadSex;
	}

	public void setAisadSex(String aisadSex) {
		this.aisadSex = aisadSex;
	}

	@Column(name = "A_isadEmail", length = 500)
	public String getAisadEmail() {
		return aisadEmail;
	}

	public void setAisadEmail(String aisadEmail) {
		this.aisadEmail = aisadEmail;
	}

	@Column(name = "A_isadPhone", length = 40)
	public String getAisadPhone() {
		return aisadPhone;
	}

	public void setAisadPhone(String aisadPhone) {
		this.aisadPhone = aisadPhone;
	}

	@Column(name = "A_isadredTime", length = 40)
	public String getAisadredTime() {
		return aisadredTime;
	}

	public void setAisadredTime(String aisadredTime) {
		this.aisadredTime = aisadredTime;
	}

	@Column(name = "A_isadLastTime", length = 40)
	public String getAisadlastTime() {
		return aisadlastTime;
	}

	public void setAisadlastTime(String aisadlastTime) {
		this.aisadlastTime = aisadlastTime;
	}

	@Column(name = "A_isadLoginStus")
	public Integer getAisadloginStus() {
		return aisadloginStus;
	}

	public void setAisadloginStus(Integer aisadloginStus) {
		this.aisadloginStus = aisadloginStus;
	}

	@Column(name = "A_isadIP", length = 40)
	public String getAisadip() {
		return aisadip;
	}

	public void setAisadip(String aisadip) {
		this.aisadip = aisadip;
	}

	@Column(name = "A_isadzhiwei")
	public Integer getAisadzhiwei() {
		return aisadzhiwei;
	}

	public void setAisadzhiwei(Integer aisadzhiwei) {
		this.aisadzhiwei = aisadzhiwei;
	}

	@Column(name = "A_isadTSyi", length = 50)
	public String getAisadtsyi() {
		return aisadtsyi;
	}

	public void setAisadtsyi(String aisadtsyi) {
		this.aisadtsyi = aisadtsyi;
	}

	@Column(name = "A_isadTSer", length = 50)
	public String getAisadtser() {
		return aisadtser;
	}

	public void setAisadtser(String aisadtser) {
		this.aisadtser = aisadtser;
	}

	@Column(name = "A_isadTSan", length = 50)
	public String getAisadtsan() {
		return aisadtsan;
	}

	public void setAisadtsan(String aisadtsan) {
		this.aisadtsan = aisadtsan;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}

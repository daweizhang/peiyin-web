﻿package voice.com.english.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import voice.com.biz.InUsersBiz;
import voice.com.biz.PartpateBiz;
import voice.com.biz.UserTypeBiz;
import voice.com.email.MailTest;
import voice.com.pojo.Dtype;
import voice.com.pojo.InUsers;
import voice.com.pojo.Partpate;
import voice.com.util.EncryptionDecryption;
import voice.com.util.PaginationSupport;

public class EhUserAction extends ActionSupport {

	/**
	 * 用户业务Action
	 */
	private static final long serialVersionUID = 1L;
	// 注入用户类型Biz
	private UserTypeBiz userTypeBiz;
	// 注入用Biz
	private InUsersBiz inUsersBiz;
	// 定义用户
	private InUsers inUsers;
	// 定义用户类型
	private List<Dtype> listdtype;

	/**
	 * 登录功能(中音共享)
	 * 
	 * @param inUsersBiz
	 */
	public String UserloginEh()throws Exception {
		// 验证码
		String randomString = (String) ActionContext.getContext().getSession()
				.get("random");
		InUsers iu = new InUsers();

		EncryptionDecryption des = new EncryptionDecryption();
		iu.setIuserName(inUsers.getIuserName());
		iu.setIpassword(des.encrypt(inUsers.getIpassword()));
		List<InUsers> ulist = inUsersBiz.findUser(iu);
		System.out.println("验证码:" + randomString);
		if (jsyzm.equalsIgnoreCase(randomString)) {
			if (ulist.size() == 1) {
				for (InUsers ius : ulist) {
					HttpSession session = ServletActionContext.getRequest()
							.getSession();
					session.setAttribute("users", ius);
				}
				return "logincg";

			} else {
				this.message = "×User name and password do not match！";
				return "loginrequest";
			}
		} else {
			this.message = "×Verification code error！";
			return "loginrequest";
		}

	}

	private String message;// 错误信息输出
	private boolean yanzm;// 验证码检查结果
	private String jsyzm;// 接收的验证码

	/**
	 * 登录的验证码验证(ajax)
	 * 
	 * @return
	 */
	public String seletyamEh()throws Exception {
		String yzm = (String) (ActionContext.getContext().getSession()
				.get("random"));
		if (jsyzm.equalsIgnoreCase(yzm)) {
			this.message = "Verify code correct!";
			yanzm = true;
		} else {
			this.message = "Verification code error!";
			yanzm = false;
		}
		return "findyam";
	}

	/**
	 * 查询所有的用户类型(中文)
	 * 
	 * @return
	 */
	public String findUserTypeEh()throws Exception {
		listdtype = userTypeBiz.findUserType();
		return "listUsetType";
	}

	private String jsdyh;// 接收的用户
	private boolean yamyhm;// 验证用户名

	/**
	 * 判断用户是否存在(中英共享)
	 * 
	 * @return
	 */
	public String findUs() throws Exception {
		List<InUsers> inuser = inUsersBiz.findUsersc(jsdyh);
		if (inuser.size() > 0) {
			yamyhm = false;
		} else {
			yamyhm = true;
		}
		return "requestyhm";
	}

	private Integer nclsn = 1;
	private String zcyzm;// 接收注册页面的验证码
	private boolean zcbr;// 返回的boolean值

	/**
	 * 验证注册页面的验证码是否正确
	 * 
	 * @return
	 */
	public String yzamezEh()throws Exception {
		String yzm = (String) (ActionContext.getContext().getSession()
				.get("random"));
		if (!zcyzm.equalsIgnoreCase(yzm)) {
			this.message = "Verification code error!";
			zcbr = false;
		} else {
			zcbr = true;
		}
		return "requesyaz";
	}

	private String yhleixin;// 用户类型
	private String uskncl;// 用户名
	private String fvssr;// 用户邮箱
	private String upassword;// 用户密码
	private String errorxx;

	public String getErrorxx() {
		return errorxx;
	}

	public void setErrorxx(String errorxx) {
		this.errorxx = errorxx;
	}

	/**
	 * 用户注册(中文)
	 * 
	 * @return
	 */
	public String regesrUserEh()throws Exception {
		Dtype cos = new Dtype();
		cos.setDid(yhleixin);
		InUsers us = new InUsers();
		us.setIuserName(uskncl);
		us.setDtype(cos);
		us.setIemail(fvssr);
		if ("berwartaedfeee".equals(yhleixin)) {
		  us.setIportrait("txtub.png");
		}
		if ("gseaeffasdasc".equals(yhleixin)) {
		  us.setIportrait("renwuf.png");
		}
		us.setMxbi(0);
		us.setIts("0");
		if ("berwartaedfeee".equals(yhleixin)) {
			for (int i = 0; i < 50; i++) {
				int radomInts = new Random().nextInt(9999999) + 1000000;
				String pyy = String.valueOf(radomInts);
				String pyyID = "V" + pyy.substring(0, 6);
				List<InUsers> lsu = inUsersBiz.findinuid(pyyID);
				if (lsu.size() == 0) {
					us.setIname(pyyID);
					break;
				}
			}
		}
		if ("gseaeffasdasc".equals(yhleixin)) {
			for (int i = 0; i < 50; i++) {
				int radomInts = new Random().nextInt(9999999) + 1000000;
				String pyy = String.valueOf(radomInts);
				String pyyID = "C" + pyy.substring(0, 5);
				List<InUsers> lsu = inUsersBiz.findinuid(pyyID);
				if (lsu.size() == 0) {
					us.setIname(pyyID);
					break;
				}
			}
		}

		us.setIcredibility(0);
		//us.setIphone("0");
		try {
			EncryptionDecryption des = new EncryptionDecryption();
			us.setIpassword(des.encrypt(upassword));
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String shijian = dateFormat.format(c.getTime());
		us.setIredTime(shijian);
		String randomString = (String) ActionContext.getContext().getSession()
				.get("random");
		try {
			if (zcyzm.equalsIgnoreCase(randomString)) {
				List<InUsers> vse = inUsersBiz.findUsersc(uskncl);
				if (vse.size() > 0) {
					this.errorxx = "Hello, registration failed! Your registered user name already exists!";
					return "regerschgo";
				} else {
					inUsersBiz.saveUsers(us);
					String tyst = "";
					if (yhleixin.equals("gseaeffasdasc")) {
						tyst = "Voice seeker";
					} else if (yhleixin.equals("berwartaedfeee")) {
						tyst = "Voice staff";
					}
					//this.errorxx = "Registration success! Congratulations to you." + tyst + "!Your registered account number is:" + uskncl
					//		+ ",Please keep in mind your account!";
					this.errorxx = "Congrats! You're signed up! Your user name is:" + uskncl;
					nclsn = 2;
					return "regerschgo";
				}
			} else {
				this.errorxx = "Sorry, you entered the verification code error, please re-enter!";
				return "regerschgo";
			}
		} catch (Exception e) {

			return "error";
		}

	}

	private String zhyam;// 找回密码的验证码
	private String zhUser;// 找回密码的用户名
	private String zhcwxx;// 找回密码的错误信息提示
	private String zhemli;// 找密码的邮箱
	private String InUserzh;

	/**
	 * 找回密码填用户名验证(中文)
	 */
	public String findUseriiEh()throws Exception {
		String randomString = (String) ActionContext.getContext().getSession()
				.get("random");
		if (zhyam.equalsIgnoreCase(randomString)) {
			List<InUsers> inuser = inUsersBiz.findUserpd(zhUser, zhemli);
			if (inuser.size() == 1) {
				for (InUsers us : inuser) {
					MailTest m = new MailTest();
					String jonemli = m.pdemaliseh(us.getIemail());
					String ysnc = jonemli;
					ActionContext.getContext().getSession()
							.put("yzhuser", us.getIuserName());
					ActionContext.getContext().getSession().put("emlis", ysnc);
					InUserzh = us.getIuserName();
				}
				return "tzxzfs";
			} else {
				this.zhcwxx = "Hello, the user name you entered does not exist or does not match the binding mailbox!";
				return "rnlcsl";
			}
		} else {
			this.zhcwxx = "Hello, you enter the verification code is not correct!";
			return "rnlcsl";
		}
	}

	private String jsdcod;// 接收输入的找回密码的验证码
	private String comaess;// 错误信息提示

	/**
	 * 验证接收的找回密码的验证是否正确
	 * 
	 * @return
	 */
	public String VerificationEh()throws Exception {
		String fwqcoid = (String) ActionContext.getContext().getSession()
				.get("emlis");
		if (fwqcoid.equals(jsdcod)) {
			this.comaess = "Hello! Verify success!";
			return "txmimac";
		} else {
			this.comaess = "Hello! Authentication failed, verification code error!";
			return "tzxzfs";
		}
	}

	private String xinmimaer;// 新密码
	private String cuowuxiti;

	/**
	 * 修改用户名密码
	 * 
	 * @return
	 */
	public String updateusEh()throws Exception {
		String xinm = (String) ActionContext.getContext().getSession()
				.get("yzhuser");
		EncryptionDecryption des = new EncryptionDecryption();
		List<InUsers> cs = inUsersBiz.findUsersc(xinm);
		InUsers bs = cs.get(0);
		bs.setIpassword(des.encrypt(xinmimaer));
		String lnc = inUsersBiz.updateUser(bs);
		if ("1".equals(lnc)) {
			this.cuowuxiti = "Congratulations, modify the password successfully!";
			return "toytis";
		} else {
			this.cuowuxiti = "Abnormal password modification!";
			return "txmimac";
		}

	}

	private InUsers uisx;
	private PartpateBiz partpateBiz;
	public void setPartpateBiz(PartpateBiz partpateBiz) {
		this.partpateBiz = partpateBiz;
	}
    private PaginationSupport<Partpate> po;
    
	public PaginationSupport<Partpate> getPo() {
		return po;
	}

	public void setPo(PaginationSupport<Partpate> po) {
		this.po = po;
	}


	/**
	 * 进入我的主页
	 * 
	 * @return
	 */
	public String rupinuzyEh()throws Exception {
		InUsers inuser = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (null != inuser.getDtype().getDid()
				&& inuser.getDtype().getDid().equals("gseaeffasdasc")) {
			List<InUsers> cs = inUsersBiz.findUsersc(inuser.getIuserName());
			if (cs.size() > 0) {
				uisx = cs.get(0);
				po = partpateBiz.findunpaid(inuser.getIuserName(),"2",7,1);
				
			}
			return "iUserehhomepageehrw";
		}
		
		if (null != inuser.getDtype().getDid()
				&& inuser.getDtype().getDid().equals("berwartaedfeee")) {
			List<InUsers> cs = inUsersBiz.findUsersc(inuser.getIuserName());
			if (cs.size() > 0) {
				uisx = cs.get(0);
		}
		   return "iUserehhomepageehpy";
		}
			
		
		return "error";
		

	}

	private String jiupassword;// 旧密码
	private String xingpassword;// 新密码
	private String querenpassword;// 确认密码

	/**
	 * 主页里面修改密码
	 * 
	 * @return
	 * @return
	 */
	public String updatepasswordmmEh()throws Exception {
		System.out.println(jiupassword);
		System.out.println(xingpassword);
		System.out.println(querenpassword);
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers.getIuserName() == null) {
			return "error";
		}
		
		if (jiupassword != null && xingpassword != null
				&& querenpassword != null && !"".equals(jiupassword)
				&& !"".equals(xingpassword) && !"".equals(querenpassword)) {
			if (xingpassword.equals(querenpassword)) {
				InUsers ius = new InUsers();
				EncryptionDecryption des = new EncryptionDecryption();
				ius.setIuserName(iusers.getIuserName());
				ius.setIpassword(des.encrypt(jiupassword));
				List<InUsers> liiu = inUsersBiz.findUser(ius);
				if (liiu != null && liiu.size() > 0) {
					iusers.setIpassword(des.encrypt(querenpassword));
					String er = inUsersBiz.updateUser(iusers);
					if ("1".equals(er)) {
						this.message = "Password modification success!";
					} else {
						this.message = "Password modification failed! Please contact customer service!";
					}
				} else {
					this.message = "The old password is incorrect. Please re-enter!";
				}
			} else {
				this.message = "Two passwords are not consistent, please re-enter!";
			}
		} else {
			this.message = "Information can not be empty!";
		}
		if("berwartaedfeee".equals(iusers.getDtype().getDid())){
			return "updatepassmm";
		}
		if("gseaeffasdasc".equals(iusers.getDtype().getDid())){
			return "updatepassmms";
		}
		return "error";
	}
	
	private String gonk;//资料是否公开
	
	/**
	 * 配音操作是否公开
	 * @return
	 */
	public String publiclyuserEh()throws Exception{
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		InUsers iu=inUsersBiz.findgetu(iusers.getIid());
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			if(gonk!=null && "on".equals(gonk)){
				iu.setMxbi(1);
				inUsersBiz.updateUser(iu);
			}else{
				iu.setMxbi(0);
				inUsersBiz.updateUser(iu);
			}
		} else {
			return "error";
		}
		
		
		return "publiclyus";
	}
	
	
	/**
	 * 跳转主页修改密码
	 * @return
	 */
	public String pageupadpassEh()throws Exception{
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if("berwartaedfeee".equals(iusers.getDtype().getDid())){
			return "pagepassword";
		}
		if("gseaeffasdasc".equals(iusers.getDtype().getDid())){
			return "pagepasswordrwdfs";
		}
		return "error";
	}
	
    
	public String getGonk() {
		return gonk;
	}

	public void setGonk(String gonk) {
		this.gonk = gonk;
	}

	public String getJiupassword() {
		return jiupassword;
	}

	public void setJiupassword(String jiupassword) {
		this.jiupassword = jiupassword;
	}

	public String getXingpassword() {
		return xingpassword;
	}

	public void setXingpassword(String xingpassword) {
		this.xingpassword = xingpassword;
	}

	public String getQuerenpassword() {
		return querenpassword;
	}

	public void setQuerenpassword(String querenpassword) {
		this.querenpassword = querenpassword;
	}

	public InUsers getUisx() {
		return uisx;
	}

	public void setUisx(InUsers uisx) {
		this.uisx = uisx;
	}

	public String getCuowuxiti() {
		return cuowuxiti;
	}

	public void setCuowuxiti(String cuowuxiti) {
		this.cuowuxiti = cuowuxiti;
	}

	public String getXinmimaer() {
		return xinmimaer;
	}

	public void setXinmimaer(String xinmimaer) {
		this.xinmimaer = xinmimaer;
	}

	public String getJsdcod() {
		return jsdcod;
	}

	public void setJsdcod(String jsdcod) {
		this.jsdcod = jsdcod;
	}

	public String getComaess() {
		return comaess;
	}

	public void setComaess(String comaess) {
		this.comaess = comaess;
	}

	public String getZhemli() {
		return zhemli;
	}

	public void setZhemli(String zhemli) {
		this.zhemli = zhemli;
	}

	public String getInUserzh() {
		return InUserzh;
	}

	public void setInUserzh(String inUserzh) {
		InUserzh = inUserzh;
	}

	public String getZhcwxx() {
		return zhcwxx;
	}

	public void setZhcwxx(String zhcwxx) {
		this.zhcwxx = zhcwxx;
	}

	public String getZhyam() {
		return zhyam;
	}

	public void setZhyam(String zhyam) {
		this.zhyam = zhyam;
	}

	public String getZhUser() {
		return zhUser;
	}

	public void setZhUser(String zhUser) {
		this.zhUser = zhUser;
	}

	public String getZcyzm() {
		return zcyzm;
	}

	public void setZcyzm(String zcyzm) {
		this.zcyzm = zcyzm;
	}

	public boolean isZcbr() {
		return zcbr;
	}

	public void setZcbr(boolean zcbr) {
		this.zcbr = zcbr;
	}

	public String getJsdyh() {
		return jsdyh;
	}

	public void setJsdyh(String jsdyh) {
		this.jsdyh = jsdyh;
	}

	public boolean isYamyhm() {
		return yamyhm;
	}

	public void setYamyhm(boolean yamyhm) {
		this.yamyhm = yamyhm;
	}

	public List<Dtype> getListdtype() {
		return listdtype;
	}

	public void setListdtype(List<Dtype> listdtype) {
		this.listdtype = listdtype;
	}

	public InUsers getInUsers() {
		return inUsers;
	}

	public void setInUsers(InUsers inUsers) {
		this.inUsers = inUsers;
	}

	public void setInUsersBiz(InUsersBiz inUsersBiz) {
		this.inUsersBiz = inUsersBiz;
	}

	public void setUserTypeBiz(UserTypeBiz userTypeBiz) {
		this.userTypeBiz = userTypeBiz;
	}

	private List<Dtype> listType;

	public List<Dtype> getListType() {
		return listType;
	}

	public void setListType(List<Dtype> listType) {
		this.listType = listType;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public boolean isYanzm() {
		return yanzm;
	}

	public void setYanzm(boolean yanzm) {
		this.yanzm = yanzm;
	}

	public String getJsyzm() {
		return jsyzm;
	}

	public void setJsyzm(String jsyzm) {
		this.jsyzm = jsyzm;
	}

	public String getYhleixin() {
		return yhleixin;
	}

	public void setYhleixin(String yhleixin) {
		this.yhleixin = yhleixin;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getUskncl() {
		return uskncl;
	}

	public void setUskncl(String uskncl) {
		this.uskncl = uskncl;
	}

	public String getFvssr() {
		return fvssr;
	}

	public void setFvssr(String fvssr) {
		this.fvssr = fvssr;
	}

	public Integer getNclsn() {
		return nclsn;
	}

	public void setNclsn(Integer nclsn) {
		this.nclsn = nclsn;
	}
}

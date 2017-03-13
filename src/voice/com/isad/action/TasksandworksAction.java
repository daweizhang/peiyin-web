package voice.com.isad.action;

import java.util.HashMap;
import java.util.Map;

import voice.com.biz.BftranslateBiz;
import voice.com.biz.BtenderBiz;
import voice.com.biz.XsystemnewsBiz;
import voice.com.pojo.Bftranslate;
import voice.com.pojo.Xsystemnews;
import voice.com.pojo.Btender;
import voice.com.pojo.Zstate;
import voice.com.util.PaginationSupport;
import java.sql.Date;

import com.opensymphony.xwork2.ActionSupport;
import voice.com.email.*;

public class TasksandworksAction extends ActionSupport{
	/**
	 * 任务与作品
	 */
	private static final long serialVersionUID = 1L;
	
	private BtenderBiz btenderBiz;
	private PaginationSupport<Btender> tsks;
	private String tsName;
	private String tsUserName;
	private String pageCurrent;
	private String pageSize;
	private Map<String,String> mapsh;
	
	public void setBtenderBiz(BtenderBiz btenderBiz) {
		this.btenderBiz = btenderBiz;
	}
	/**
	 * 进入任务列表
	 */
	public String tasksandlist()throws Exception{
		Integer pageCurrents = 1;
		Integer pageSizes = 20;
		if (pageCurrent != null && !pageCurrent.equals("")) {
			pageCurrents = Integer.parseInt(pageCurrent);
		}
		if (pageSize != null && !pageSize.equals("")) {
			pageSizes = Integer.parseInt(pageSize);
		}
		
		
		tsks=btenderBiz.findtasklist(tsName,tsUserName, pageSizes, pageCurrents);
		
		return "tasksand";
	}
	
	
	public Map<String, String> getMapsh() {
		return mapsh;
	}
	public void setMapsh(Map<String, String> mapsh) {
		this.mapsh = mapsh;
	}


	private String tid;
	private Btender bt;
	
	private BftranslateBiz bftranslateBiz;
	
	public void setBftranslateBiz(BftranslateBiz bftranslateBiz) {
		this.bftranslateBiz = bftranslateBiz;
	}
	
	private void sendMailNotifyCustomer(String email, String ID) {
		
		// 这个类主要是设置邮件
		if (email == null){
			System.out.println("Email is null");
			return;
		}
		
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.126.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("cvfnoreply@126.com");
		mailInfo.setPassword("654321aA");// 您的邮箱密码
		mailInfo.setFromAddress("cvfnoreply@126.com");
		mailInfo.setToAddress(new String[] { email });
		
		mailInfo.setAttachFileNames(new String[] {});// 附件
		mailInfo.setSubject("chinesevoiceoverfreelancers(CVF)");
		String passText = null;
		// TODO should check English and Chinese version, Now only for Chinese version
		String passFlag = getSftg();
		System.out.println("passFlag " + passFlag);
	    if (passFlag.equals("baefaf758eaecc")){
	    	passText = new String("已经通过审核");
	    }
	    else if (passFlag.equals("bratqaefabasfa324fa")){
	    	passText = new String("审核不通过，请您补充您的资料");
	    }else{
	    	//如果待审核状态应该直接跳过
            return ;
	    }

		
		
		mailInfo.setContent("<div style='width: 600px;height:300px;margin:0px;padding:0px;margin:auto;margin-top:30px;border: 2px solid #ccc;border-radius:10px;overflow: hidden;'>"
				+ "<div style='width: 600px;height: 35px;line-height: 35px;padding-left:20px;font-size: 18px;font-weight: 600;color:#669900;"
				+ "border-bottom: 1px solid #ccc;'>chinesevoiceoverfreelancers(CVF)</div>"
				+ "<div style='width: 600px;height: 260px'>"
				+ "<div style='padding-left:40px;font-size: 14px;height:30px;line-height: 30px;'>Hi，</div>"
				+ "<div style='margin-top: 40px;padding-left:40px;font-size: 14px;'>"
				+ "您的任务"
				+ ID
				+ "  " + passText
				+ "感谢您对Chinesevoicefreelancers网的支持，我们会以更好的服务于您!预祝您验证顺利！"
				+ "</div>"
				+ "<div style='font-size: 11px;margin: auto;width: 600px;margin-top: 20px;border-top: 1px solid #ccc;line-height: 30px;text-align: center;'>Copyright © 2015-2020 s.cn All Rights Reserved. 渝ICP备08106896号经营许可证闽B2-20110061</div>"
				+ "<div style='font-size: 11px;width: 600px;text-align: center;'>chinesevoiceoverfreelancers(CVF)配音网 版权所有</div>"
				+ "</div>" + "</div>");

		// 这个类主要来发送邮件
		SimpleMailSender sms = new SimpleMailSender();
		// sms.sendTextMail(mailInfo);//发送文体格式
		sms.sendHtmlMail(mailInfo);// 发送html格式
	}
	/**
	 * 进入任务详细列表
	 * @return
	 */
	public String findtaksidsxz()throws Exception{
		bt=btenderBiz.findbtender(tid);
		Map<String,String> mapshsd=new HashMap<String, String>();
		//baerawvaecaeade
		//baefaf758eaecc
		//'baefaf758eaecc', '发布中', 'Already released'
		//'bratqaefabasfa', '审核中', 'Under review'
		//'bratqaefabasfa324fa', '不通过', 'Not through'


		mapshsd.put("baefaf758eaecc", "审核通过");
		mapshsd.put("bratqaefabasfa", "待审核");
		mapshsd.put("bratqaefabasfa324fa", "审核不通过");
		
		mapsh=mapshsd;
		if(bt.getBrwtype().equals("111")){
			return "fintaksdate";
		}else{
			return "fintaksdateguonei";
		}
	}
	
	
	private XsystemnewsBiz xsystemnewsBiz;

	public void setXsystemnewsBiz(XsystemnewsBiz xsystemnewsBiz) {
		System.out.println("set setXsystemnewsBiz");
		this.xsystemnewsBiz = xsystemnewsBiz;
	}
	
	public void addXsystemnews(String id, Btender btt, String taskName){
		//String  passText = 
		String passFlag = getSftg();
		System.out.println("addXsystemnews passFlag " + passFlag);
		/*if (passFlag == "baefaf758eaecc")
			String passText = "已经通过审核";
		else if (passFlag == "bratqaefabasfa324fa")
			passText = "审核不通过，请您补充您的资料";
		else
			passText = "待审核";
		*/
		//Xsystemnews xNew = new Xsystemnews();
	    //add message for this customer
	    Xsystemnews xNew = new Xsystemnews();
	    xNew.setXid(btid);
	    xNew.setXrecipientUser("admin");
	    xNew.setXfromUser(btt.getbUserID());
	    if (passFlag.equals("baefaf758eaecc")){
	    	System.out.println("pass");
	        xNew.setXthemessagetitle("您的任务 "+ taskName +" 已经通过审核");
	        xNew.setXfilecontent("您的任务 "+ taskName +" 已经通过审核, 您可以去找相应的配音员了");
	    }
	    else if (passFlag.equals("bratqaefabasfa324fa")){
	    	System.out.println("don't pass");
	        xNew.setXthemessagetitle("您的任务 "+ taskName +" 未能通过审核");
	        xNew.setXfilecontent("您的任务 "+ taskName +" 未能通过审核, 您需要补充资料");
	    }else{
	    	//如果待审核状态应该直接跳过
            return ;
	    }
	    xNew.setXmessagecontent("");
	    System.out.println("java date:" + new java.util.Date().toString());
	    System.out.println("java date:" );
	    xNew.setXsendtime(new java.util.Date().toString());
	    //xNew.setXfilecontent(passText); 200 meaning haven't been message, 333 meaning have been read
	    xNew.setXmessagestatus("200");
	    xNew.setXts("");
		xsystemnewsBiz.savenews(xNew);
		
	}
	
	private String btid;//任务ID
	private String bfid;//翻译表ID
	private String sftg;//是否通过审核
	private Bftranslate bfs;
	private String fumeass;//服务消息
	private String gj;//任务类型
	/**
	 * 修改翻译表字段
	 * @return
	 */
	public String updatebfcs()throws Exception{
		System.out.println("任务ID:"+btid);
		System.out.println("bfid:"+bfid);
		System.out.println("是否通过审核ID:"+sftg);
		if(gj.equals("111")){   //111 国外业务
		Btender btt=btenderBiz.findbtender(btid);
		Zstate z=new Zstate();
		z.setZid(sftg);
		btt.setZstate(z);
		btenderBiz.updaterw(btt);
		
		Bftranslate bfy=bftranslateBiz.findbf(bfid);
		bfy.setBfNames(bfs.getBfNames());
		bfy.setBfsygw(bfs.getBfsygw());
		bfy.setBftiser(bfs.getBftiser());
		fumeass=bftranslateBiz.updatebf(bfy);
		return "updatebf";
		}
		if(gj.equals("222")){   ///2 国内业务
			Btender btt=btenderBiz.findbtender(btid);
			Zstate z=new Zstate();
			if (sftg.equals(btt.getZstate().getZid())){
				System.out.println("state unchange, so don't need update");
				return "updatebf";
			}
			//Zstate z=new Zstate();
			z.setZid(sftg);
			btt.setZstate(z);
			btt.setBtName(bfs.getBfNames());
			btt.setBpygaowen(bfs.getBfsygw());
			btt.setBxxmiaoshu(bfs.getBftiser());
			btt.setBrwjdjls("1");
			fumeass=btenderBiz.updaterw(btt);
		    String mail = btenderBiz.findEmailbyId(btid);
		    System.out.println("mail " + mail);

		    addXsystemnews(btid, btt, bfs.getBfNames());
		    sendMailNotifyCustomer(mail, bfs.getBfNames());
		    // send mail to 
			return "updatebf";
		}else{
			return "";
		}
	}

	
	public String getGj() {
		return gj;
	}
	public void setGj(String gj) {
		this.gj = gj;
	}
	public String getFumeass() {
		return fumeass;
	}
	public void setFumeass(String fumeass) {
		this.fumeass = fumeass;
	}
	public String getBtid() {
		return btid;
	}
	public void setBtid(String btid) {
		this.btid = btid;
	}
	public String getSftg() {
		return sftg;
	}
	public void setSftg(String sftg) {
		this.sftg = sftg;
	}
	public String getBfid() {
		return bfid;
	}
	public void setBfid(String bfid) {
		this.bfid = bfid;
	}
	public Bftranslate getBfs() {
		return bfs;
	}
	public void setBfs(Bftranslate bfs) {
		this.bfs = bfs;
	}
	public Btender getBt() {
		return bt;
	}
	public void setBt(Btender bt) {
		this.bt = bt;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public PaginationSupport<Btender> getTsks() {
		return tsks;
	}
	public void setTsks(PaginationSupport<Btender> tsks) {
		this.tsks = tsks;
	}
	public String getTsName() {
		return tsName;
	}
	public void setTsName(String tsName) {
		this.tsName = tsName;
	}
	public String getTsUserName() {
		return tsUserName;
	}
	public void setTsUserName(String tsUserName) {
		this.tsUserName = tsUserName;
	}
	public String getPageCurrent() {
		return pageCurrent;
	}
	public void setPageCurrent(String pageCurrent) {
		this.pageCurrent = pageCurrent;
	}
	public String getPageSize() {
		return pageSize;
	}
	public void setPageSize(String pageSize) {
		this.pageSize = pageSize;
	}
    
	
	
}

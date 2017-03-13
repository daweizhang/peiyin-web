package voice.com.email;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class MailTest {
	@SuppressWarnings("static-access")
	public String pdemalis(String email) {
		String date = null;
		String yzms = null;
		int radomInts = new Random().nextInt(9999999) + 1000000;
		String pyysd = String.valueOf(radomInts);
		yzms = pyysd.substring(0, 6);


		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		date = dateFormat.format(now);
		// 这个类主要是设置邮件
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.126.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("meiyinking@126.com");
		mailInfo.setPassword("meiyin126");// 您的邮箱密码
		mailInfo.setFromAddress("meiyinking@126.com");
		mailInfo.setToAddress(new String[] { email });
		// 设置自定义发件人昵称
		
		  /*String nick="";
		  try {
		 nick=javax.mail.internet.MimeUtility.encodeText("我的昵称"); } catch
		  (UnsupportedEncodingException e) { e.printStackTrace(); }*/
		 
		mailInfo.setAttachFileNames(new String[] {});// 附件
		mailInfo.setSubject("chinesevoiceoverfreelancers(CVF)");

		// mailInfo.setContent("我加动车从那后!");
		// mailInfo.setContent("<font style='BACKGROUND-COLOR: #666699;margin-left:250px;border: 10px solid #ccc;' color='#ff0000' size='5' >测试格式化内容测试<a href='http://www.baidu.com'>格式化内容</a>测试格<em>式化</em>内容</font><img src='http://www.google.cn/intl/zh-CN/images/logo_cn.gif'></img>");
		mailInfo.setContent("<div style='width: 600px;height:300px;margin:0px;padding:0px;margin:auto;margin-top:30px;border: 2px solid #ccc;border-radius:10px;overflow: hidden;'>"
				+ "<div style='width: 600px;height: 35px;line-height: 35px;padding-left:20px;font-size: 18px;font-weight: 600;color:#669900;"
				+ "border-bottom: 1px solid #ccc;'>chinesevoiceoverfreelancers(CVF)</div>"
				+ "<div style='width: 600px;height: 260px'>"
				+ "<div style='padding-left:40px;font-size: 14px;height:30px;line-height: 30px;'>Hi，</div>"
				+ "<div style='margin-top: 40px;padding-left:40px;font-size: 14px;'>"
				+ "您于"
				+ date
				+ "，使用了邮箱验证服务，您的验证码是<span style='font-weight: 600;font-size: 18px;color: #F16700;'> "
				+ yzms
				+ " </span>。<br/>"
				+ "请填入邮箱验证页面对应输入框。"
				+ "<br/><br/>"
				+ "感谢您对Chinesevoicefreelancers网的支持，我们会以更好的服务于您!预祝您验证顺利！"
				+ "</div>"
				+ "<div style='font-size: 11px;margin: auto;width: 600px;margin-top: 20px;border-top: 1px solid #ccc;line-height: 30px;text-align: center;'>Copyright © 2015-2020 s.cn All Rights Reserved. 渝ICP备08106896号经营许可证闽B2-20110061</div>"
				+ "<div style='font-size: 11px;width: 600px;text-align: center;'>chinesevoiceoverfreelancers(CVF)配音网 版权所有</div>"
				+ "</div>" + "</div>");

		// 这个类主要来发送邮件
		SimpleMailSender sms = new SimpleMailSender();
		// sms.sendTextMail(mailInfo);//发送文体格式
		sms.sendHtmlMail(mailInfo);// 发送html格式
		return yzms;
	}
	
	
	
	
	
	@SuppressWarnings("static-access")
	public String pdemaliseh(String email) {
		String date = null;
		String yzms = null;
		int radomInts = new Random().nextInt(9999999) + 1000000;
		String pyysd = String.valueOf(radomInts);
		yzms = pyysd.substring(0, 6);


		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		date = dateFormat.format(now);
		// 这个类主要是设置邮件
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.126.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("meiyinking@126.com");
		mailInfo.setPassword("meiyin126");// 您的邮箱密码
		mailInfo.setFromAddress("meiyinking@126.com");
		mailInfo.setToAddress(new String[] { email });
		// 设置自定义发件人昵称
		
		  /*String nick="";
		  try {
		 nick=javax.mail.internet.MimeUtility.encodeText("我的昵称"); } catch
		  (UnsupportedEncodingException e) { e.printStackTrace(); }*/
		 
		mailInfo.setAttachFileNames(new String[] {});// 附件
		mailInfo.setSubject("chinesevoiceoverfreelancers(CVF)");

		// mailInfo.setContent("我加动车从那后!");
		// mailInfo.setContent("<font style='BACKGROUND-COLOR: #666699;margin-left:250px;border: 10px solid #ccc;' color='#ff0000' size='5' >测试格式化内容测试<a href='http://www.baidu.com'>格式化内容</a>测试格<em>式化</em>内容</font><img src='http://www.google.cn/intl/zh-CN/images/logo_cn.gif'></img>");
		mailInfo.setContent("<div style='width: 600px;height:300px;margin:0px;padding:0px;margin:auto;margin-top:30px;border: 2px solid #ccc;border-radius:10px;overflow: hidden;'>"
				+ "<div style='width: 600px;height: 35px;line-height: 35px;padding-left:20px;font-size: 18px;font-weight: 600;color:#669900;"
				+ "border-bottom: 1px solid #ccc;'>chinesevoiceoverfreelancers(CVF)</div>"
				+ "<div style='width: 600px;height: 260px'>"
				+ "<div style='padding-left:40px;font-size: 14px;height:30px;line-height: 30px;'>Hi，</div>"
				+ "<div style='margin-top: 40px;padding-left:40px;font-size: 14px;'>"
				+ "You in"
				+ date
				+ "，Using the mailbox authentication service, your verification code is<span style='font-weight: 600;font-size: 18px;color: #F16700;'> "
				+ yzms
				+ " </span>。<br/>"
				+ "Please fill in the corresponding input box."
				+ "<br/><br/>"
				+ "Thank you for your support of chinesevoiceoverfreelancers network, we will be better service to you! I wish you a smooth!"
				+ "</div>"
				+ "<div style='font-size: 11px;margin: auto;width: 600px;margin-top: 20px;border-top: 1px solid #ccc;line-height: 30px;text-align: center;'>Copyright © 2015-2020 s.cn All Rights Reserved. Yu ICP business license to prepare 08106896 min B2-20110061</div>"
				+ "<div style='font-size: 11px;width: 600px;text-align: center;'>chinesevoiceoverfreelancers(CVF)All rights reserved.</div>"
				+ "</div>" + "</div>");

		// 这个类主要来发送邮件
		SimpleMailSender sms = new SimpleMailSender();
		// sms.sendTextMail(mailInfo);//发送文体格式
		sms.sendHtmlMail(mailInfo);// 发送html格式
		return yzms;
	}
	
	
	
	
	
	
	
	
	
	
	
	@SuppressWarnings("static-access")
	public void notification(String email,String messges) {
		
		// 这个类主要是设置邮件
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.126.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("meiyinking@126.com");
		mailInfo.setPassword("meiyin126");// 您的邮箱密码
		mailInfo.setFromAddress("meiyinking@126.com");
		mailInfo.setToAddress(new String[] { email });
		// 设置自定义发件人昵称
		
		  /*String nick="";
		  try {
		 nick=javax.mail.internet.MimeUtility.encodeText("我的昵称"); } catch
		  (UnsupportedEncodingException e) { e.printStackTrace(); }*/
		 
		mailInfo.setAttachFileNames(new String[] {});// 附件
		mailInfo.setSubject("chinesevoiceoverfreelancers(CVF)");

		// mailInfo.setContent("我加动车从那后!");
		// mailInfo.setContent("<font style='BACKGROUND-COLOR: #666699;margin-left:250px;border: 10px solid #ccc;' color='#ff0000' size='5' >测试格式化内容测试<a href='http://www.baidu.com'>格式化内容</a>测试格<em>式化</em>内容</font><img src='http://www.google.cn/intl/zh-CN/images/logo_cn.gif'></img>");
		mailInfo.setContent("<div style='width: 600px;height:400px;margin:0px;padding:0px;margin:auto;margin-top:30px;border: 2px solid #ccc;border-radius:10px;overflow: hidden;'>"
				+ "<div style='width: 600px;height: 35px;line-height: 35px;padding-left:20px;font-size: 18px;font-weight: 600;color:#669900;"
				+ "border-bottom: 1px solid #ccc;'>Chinesevoicefreelancers(CVF)</div>"
				+ "<div style='width: 600px;height: 260px'>"
				+ "<div style='padding-left:40px;font-size: 14px;height:30px;line-height: 30px;'>Hi，</div>"
				+ "<div style='margin-top: 40px;padding-left:40px;font-size: 14px;'>"
				+ ""+messges+""
				+ "<br/><br/>"
				+ "感谢您对chinesevoiceoverfreelancers网的支持，我们会以更好的服务于您!"
				+ "</div>"
				+ "<div style='font-size: 11px;margin: auto;width: 600px;margin-top: 20px;border-top: 1px solid #ccc;line-height: 30px;text-align: center;'>Copyright © 2015-2020 s.cn All Rights Reserved. 渝ICP备08106896号经营许可证闽B2-20110061</div>"
				+ "<div style='font-size: 11px;width: 600px;text-align: center;'>chinesevoiceoverfreelancers(CVF)配音网 版权所有</div>"
				+ "</div>" + "</div>");

		// 这个类主要来发送邮件
		SimpleMailSender sms = new SimpleMailSender();
		// sms.sendTextMail(mailInfo);//发送文体格式
		sms.sendHtmlMail(mailInfo);// 发送html格式
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
package voice.com.action;

import java.io.ByteArrayInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import voice.com.gif.util.Captcha;
import voice.com.gif.util.GifCaptcha;

import com.opensymphony.xwork2.ActionContext;

/**
 * 生成验证码的类
 * 
 */
public class RandomAction {

	private ByteArrayInputStream inputStream;
	private OutputStream outputinages;

	public void execute() throws Exception {
		/*
		 * RandomNumUtil rdnu = RandomNumUtil.Instance();
		 * this.setInputStream(rdnu.getImage());
		 * ActionContext.getContext().getSession().put("random",
		 * rdnu.getString());
		 */
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("image/gif");
		this.outputinages = response.getOutputStream();
		Captcha captcha = new GifCaptcha(150, 40, 5);// gif格式动画验证码

		captcha.out(outputinages);
		if (outputinages != null) {
			outputinages.close();
		}
		// System.out.println("---"+captcha.text());
		ActionContext.getContext().getSession().put("random", captcha.text());
		// return "SUCCESS";
	}

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

	public OutputStream getOutputinages() {
		return outputinages;
	}

	public void setOutputinages(OutputStream outputinages) {
		this.outputinages = outputinages;
	}

}

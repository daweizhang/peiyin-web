package voice.com.gif.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;

public class Test {

	/**
	 * @param args
	 */
	public void mainyazm()throws FileNotFoundException{
		
		 Captcha captcha = new SpecCaptcha(150,40,5);// png格式验证码
		 captcha.out(new FileOutputStream("F:/yam/yzm.png"));
		 captcha = new GifCaptcha(150,40,5);//   gif格式动画验证码
		 captcha.out(new FileOutputStream("F:/yam/yzm.png"));
		 System.out.println("我的验证码为:"+captcha.text());
         
	}
	public static void main(String[] args) throws FileNotFoundException {
		 Captcha captcha = null;//new SpecCaptcha(150,40,5);// png格式验证码
		// captcha.out(new FileOutputStream("F:/yam/yzm.png"));
		 captcha = new GifCaptcha(150,40,5);//   gif格式动画验证码
		 //captcha.out(new FileOutputStream("F:/yam/yzm.gif"));
		 System.out.println("我的验证码为:"+captcha.text());
	}
	

}

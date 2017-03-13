package voice.com.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;

import voice.com.gif.util.Captcha;
import voice.com.gif.util.GifCaptcha;

public class RandomNumUtil {
	
	private ByteArrayInputStream image;// 图像
	
	private String str;// 验证�?
	
	public static final char[] CHARS = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        '0','1','2','3','4','5','6','7','8','9',
        'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
	private RandomNumUtil() {
		init();// 初始化属�?
	}

	/*
	 * 取得RandomNumUtil实例
	 */
	public static RandomNumUtil Instance() {
		return new RandomNumUtil();
	}

	/*
	 * 取得验证码图�?
	 */
	public ByteArrayInputStream getImage() {
		return this.image;
	}

	/*
	 * 取得图片的验证码
	 */
	public String getString() {
		return this.str;
	}

	private void init() {
		
		// 在内存中创建图象
		int width = 82, height = 32;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 获取图形上下文?
		Graphics g = image.getGraphics();
		// 生成随机数?
		Random random = new Random();
		// 设置背景颜色?
		g.setColor(new Color(0xDCDCDC));
		g.fillRect(0, 0, width, height);
		// 设定字体
		Font mfont=new Font("楷体",Font.BOLD,25);
		g.setFont(mfont);
		// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测�?
		g.setColor(getRandColor());
		for (int i = 0; i < 100; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			/*int xl = random.nextInt(12);
			int yl = random.nextInt(12);*/
			g.drawOval(x, y, 1, 1);
			//g.drawLine(x, y, x + xl, y + yl);
		}
		// 取随机产生的认证6位数?
		String sRand = "";
		for (int i = 0; i < 4; i++) {
			String rand = String.valueOf(CHARS[random.nextInt(CHARS.length)]);
			sRand += rand;
		}
		String strs = sRand.substring(0, 1);
		g.drawString(strs,3, 20);
        strs = sRand.substring(1, 2);
        //g.setColor(Color.BLUE);
        g.setColor(getRandColor());
        g.drawString(strs, 20, 23);
        strs = sRand.substring(2, 3);
        //g.setColor(Color.GRAY);
        g.setColor(getRandColor());
        g.drawString(strs, 35, 21);
        strs = sRand.substring(3, 4);
       // g.setColor(Color.RED);
        g.setColor(getRandColor());
        g.drawString(strs, 50, 24);

		this.str = sRand;

		// 图象生效
		g.dispose();
		ByteArrayInputStream input = null;
		// image > output > imput
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		try {
			ImageOutputStream imageOut = ImageIO
					.createImageOutputStream(output);
			ImageIO.write(image, "JPEG", imageOut);
			imageOut.close();
			input = new ByteArrayInputStream(output.toByteArray());
			
  		    
  		    
			
		} catch (Exception e) {
			System.out.println("验证码图片产生出现错误：" + e.toString());
		}

		this.image = input;/* 赋值图像 */
	}

	/**
	  * 随机产生定义的颜色
	  * 
	  * @return
	  */
	 private static Color getRandColor() {
		  Random random = new Random();
		  Color color[] = new Color[10];
		  color[0] = new Color(32, 158, 25);
		  color[1] = new Color(218, 42, 19);
		  color[2] = new Color(31, 75, 208);
		  color[3] = new Color(0, 102, 182);
		  color[4] = new Color(171, 0, 85);
		  return color[random.nextInt(5)];
		 }
}
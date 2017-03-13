package voice.com.vo.test;

import java.util.ArrayList;
import java.util.List;

import voice.com.translation.webpojoutli;
import voice.com.vo.BtenderVO;

public class fanyitest {
   public static void main(String[] args) {
	   
	   BtenderVO b=new BtenderVO();
	   b.setBid("123456");
	   b.setBname("这是任务测试");
	   b.setBtime("2016-05-29 08:55:55");
	   b.setBuser("xiaochao");
	   b.setBvoicetype("广告配音");
	   b.setBts("发布中");
	   b.setBts("备注");
	   b.setCount("20");
	   List<BtenderVO> bd=new ArrayList<BtenderVO>();
	   for (int i = 0; i < 20; i++) {
		   bd.add(b);
	   }
	   
	   String[] asdx={"rwbid","bname","bvoicetype","rwiUser","rwcount"};
	   webpojoutli w=new webpojoutli();
	   List<BtenderVO> oo=w.webUlit(bd, asdx, BtenderVO.class);
	   for (BtenderVO v: oo) {
		System.out.println(v.getBname()+"--"+v.getBvoicetype());
	}
	   
   }
}

package voice.com.vo.test;

import java.text.SimpleDateFormat;
import java.util.Random;

public class ordernumbertest {
  public static void main(String[] args) {
	
	  String id="MD36220322420161013163209209329389610";
	  String odeid="";
	  String oid="";
	  for (int i = 0; i < id.length(); i++) {
		  if(i%2!=0){
			  String order=id.substring(i, i+1);
			  oid=oid+order;
			  String sj=new SimpleDateFormat("yyyyMMddHHmmssms")
					.format(new java.util.Date());
			  odeid=oid+sj;
		  }
	  }
	  int radomInt = new Random().nextInt(999999)+100000;
	  String OrderID=odeid.substring(odeid.length()-6,odeid.length());
	  String od=OrderID+String.valueOf(radomInt);
	  String wer=odeid.substring(0,odeid.length()/2);
	  String zkdnl=wer+new SimpleDateFormat("yyyyMMddHHmmss")
					.format(new java.util.Date())+od;
	  String lsknl=zkdnl.substring(8,zkdnl.length());
	  String TemporaryID="MD"+lsknl;
	  System.out.println(TemporaryID);
  }
}

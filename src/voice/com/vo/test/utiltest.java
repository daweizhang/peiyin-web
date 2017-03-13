package voice.com.vo.test;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class utiltest {
	public static void main(String[] args) {
	   
//	   Map<String,String> mapssx=new HashMap<String,String>();
//	   String uuu="f564f5a15sf541Y,男X,fasgbe84964a1feR,ull";
//	   String[] sourceStrArray = uuu.split(",");
//	   String[] arrays = new String[4];
//	   
//       for (int i = 0; i < sourceStrArray.length; i++) {
//    	   //获取类型
//    	   String type=sourceStrArray[i].substring(sourceStrArray[i].length()-1,sourceStrArray[i].length());
//    	   //获取值
//    	   String value=sourceStrArray[i].substring(0,sourceStrArray[i].length()-1);
//           System.out.println(type+"----"+value);
//           mapssx.put(type,value);
//           if(!value.equals("ul")){
//           arrays[i]=value;
//           }
//       }
////       for (String key : mapssx.keySet()) {
////    	   System.out.println(mapssx.get(key));
////    	  }
//       for (String s : arrays) {
//		   System.out.println(s);
//	   }
		
      int bb=300;
      Double dbs=Double.valueOf(bb);
      DecimalFormat df = new DecimalFormat("0.00"); 
      String db = df.format(dbs-(dbs*0.15));
      System.out.println(db);
		/*int radomInt = new Random().nextInt(9999999)+1000000;
		String rwf=String.valueOf(radomInt);
		String rwfID="C"+rwf.substring(0,5);
		
		int radomInts = new Random().nextInt(9999999)+1000000;
		String pyy=String.valueOf(radomInts);
		String pyyID="V"+pyy.substring(0,6);
		System.out.println(rwfID);
		System.out.println(pyyID);
		
		for (int i = 0; i < 100; i++) {
			if(i==5){
				break;
			}
			System.out.println(i);
		}
		System.out.println("我叫陈超！");*/
		
		
		
		
		
		
		
		
		
	}
}

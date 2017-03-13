package voice.com.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5test {
	
	
	public String setget(String plainText){ 
		String cc=null;
	  try { 
		MessageDigest md = MessageDigest.getInstance("MD5"); 
		  md.update(plainText.getBytes()); 
		  byte b[] = md.digest(); 

		  int i; 

		  StringBuffer buf = new StringBuffer(""); 
		for (int offset = 0; offset < b.length; offset++) { 
		   i = b[offset]; 
		  if(i<0) i+= 256; 
		  if(i<16) 
		  buf.append("0"); 
		  buf.append(Integer.toHexString(i)); 
		} 

		   cc=buf.toString();//32λ�ļ��� 
  
		 // System.out.println("result: " + buf.toString().substring(8,24));//16λ�ļ��� 


		  
		  } catch (NoSuchAlgorithmException e) { 
		// TODO Auto-generated catch block 
		e.printStackTrace(); 
		} 
	  return cc;
   } 
	
}

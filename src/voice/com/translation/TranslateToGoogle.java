package voice.com.translation;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;



/**
 * 使用google进行翻译
 * @author lfd 
 * 2013-10-01
*/
public class TranslateToGoogle implements TranslateUtil {



private final String ID_RESULTBOX ="result_box";



private String type ="";


public void setContentType(String type) {


this.type = type ;

}


public String translate(String text, String targetLang) throws Exception {


return translate(text,"", targetLang) ;

}


public String[] translate(String[] texts, String targetLang)



throws Exception {


return translate(texts,"", targetLang) ;

}


public String translate(String text, String srcLang, String targetLang)



throws Exception {


return execute(text, srcLang, targetLang) ;

}


public String[] translate(String[] texts, String srcLang, String targetLang)



throws Exception {





StringBuilder content = new StringBuilder() ;


int size = texts.length ;


for(int i = 0 ; i < size ; i++) {



if(i < size-1) {




content.append(texts[i]).append("{*}") ;



} else {




content.append(texts[i]) ;



}


}


String[] temps = execute(content.toString(),srcLang , targetLang).split("{*}") ;


size = temps.length ;


//去除左右空白字符


for (int i = 0; i < size; i++) {



temps[i] = temps[i].trim() ;


}


return temps ;

}



/**

 * 发送翻译请求

 * @param text 要翻译的内容

 * @param srcLang 源语言

 * @param targetLang 目标语言

 * @return 目标语言

 * @throws Exception 翻译失败

*/

private String execute(final String text, final String srcLang,



final String targetLang) throws Exception {


inspection(srcLang, targetLang) ;


Document document = Jsoup.connect("http://translate.google.cn/")


 .data("sl", srcLang)


 .data("ie","UTF-8")


 .data("oe","UTF-8")


 .data("text", text)


 .data("tl", targetLang)


 .data("ie","UTF-8")


 .userAgent("Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.77 Safari/535.7")


 .cookie("Cookie","CookiePREF=ID=8daa1f767f10d1fe:U=f5ac701cf7d3f2e0:FF=0:LD=en:CR=2:TM=1277174286:LM=1289370601:S=q7yslRWEZs3uK1H8; NID=39=UO-TWo9HzzjHc-d_wYm7BVR1cH33KpqaN5h5877_i29nERA93FeG1GSuV3ZSvsOx8D-TnHKpB9m0KhZRH8U9uPwoE-arYd0bAyAlILyXZxLO2_TyGQhJpcMiOLVEuCpq; SID=DQAAAHoAAADMlGzeKhnGkbkIJ36tVO0ZPXgmQ6Cth7Oa6geyyE1WJooW8P01uKUHNrsRkjggvFMAWIWB9J5i18z0F6GjC_oV79mSwXEDGuRFGhRnDyJdid3ptjFW0pIyt4_2D6AMIqtOWF71aWdvY7IvAU1AWMNs8fBZHAOgRqtf3aCUkr36ZA; HSID=A6-YJTnhjBdFWukoR")


.timeout(2000000)


.get();


Element element = document.getElementById(ID_RESULTBOX);

//System.out.println("==="+element.text());
return element.text();

}



/**

 * 检查Google是否支持语言.

*/

private void inspection(String srcLang, String targetLang) {


if(!"".equals(this.type)) setContentType(type) ;


if(GoogleLanguage.fromString(srcLang) == null || GoogleLanguage.fromString(targetLang) == null) {



System.out.println("Google不支持的语言") ;

}

}
}

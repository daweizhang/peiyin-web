package voice.com.translation;


import java.util.ArrayList;
import java.util.List;
/**
 * 翻译（只限单个字段的翻译）
 * @author dell
 *
 */
public class Translation {

	//这里我是传入的List<Object> 这种方式   但是我想要传入一个List<集合>  翻译后返回回来也是当前传入的集合 对象
	public List<Object> Transl(List<Object> lisc) {
		TranslateUtil translate = new TranslateToGoogle() ;
		List<Object> lisob=new ArrayList<Object>();
		try {
			for(int i=0;i<lisc.size();i++){
				//这里就是循环翻译  中文翻译英文--en     英文翻译中文  zh
				String jg=translate.translate(lisc.get(i).toString(),"zh");
				lisob.add((Object)jg);
			}
		} catch (Exception e) {
		        e.printStackTrace();
		}
		return lisob;
	}
	
	
		//英文翻译中文
		public String TranStu(String Name){
			TranslateUtil translate = new TranslateToGoogle() ;
			String  trName="";
			try {
				trName=translate.translate(Name,"zh");
			} catch (Exception e) {
				System.out.println("翻译出错!");
				e.printStackTrace();
			}
			return trName;
		}
	
	   //中文翻译英文
		public String TranStuy(String Name){
			TranslateUtil translate = new TranslateToGoogle() ;
			String  trName="";
			try {
				trName=translate.translate(Name,"en");
			} catch (Exception e) {
				System.out.println("翻译出错!");
				e.printStackTrace();
			}
			return trName;
		}
	
	/*public static void main(String[] args) {
		List<Object> li=new ArrayList<Object>();
		//li.add("Chinese naval fleet visits Cambodia to boost naval ties");
		//li.add("As the US has lost more international status and influence since the global financial crisis in 2008, the international community is raising doubts about its leadership and ability to contribute to the world.");
		//li.add("lessons, the US never gave up every opportunity to start “color revolutions.” Its attacks on Libya and Syria, once again, dragged these nations into raging wars. What’s worse, as a result of the wars, a number of regulation vacuums provided ISIS and other religious extremist organizations a bed in which to grow stronger.According to the scholar, apart from its frequent diplomatic mistakes, its economy, politics and society, in which the Americans once took pride, are all in a predicament, arising more doubts over the superiority of the US system.The global financial crisis breaking out in 2008 exposed the defects of capitalism once again. It brought to light not only the failure of Keynesian policy to narrow the wealth gap and boost effective demand, but the greed and corruption of financial executives, the ineffectiveness of financial supervision, plus the government’s shielding of tycoons.The US public felt shock, despair and anger towards such defects, and the ensuing “Occupy Wall Street” movement is one of their ways to express dissatisfaction. The protest wave later spilled to other part of the world, triggering worldwide query over the US system and its values.Zhang also criticized US domestic politics, citing its notorious presidential election system as an example.Manipulated by capital, the “winner takes all” election system in many states gives no chance to other newborn parties besides the two major parties. The American elections of the past two to three decades have been more like technical games.");
		Translation lc=new Translation();
		List<Object> css=lc.Transl(li);
		for (Object t : css) {
			System.out.println(t);
		}
	}*/
}

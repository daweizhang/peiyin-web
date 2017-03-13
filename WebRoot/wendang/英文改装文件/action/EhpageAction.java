package voice.com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.struts2.ServletActionContext;

import voice.com.biz.BtenderBiz;
import voice.com.biz.InUsersBiz;
import voice.com.biz.LgtypeBiz;
import voice.com.biz.PartpateBiz;
import voice.com.biz.ScrowdBiz;
import voice.com.biz.TvoiceBiz;
import voice.com.biz.WorksBiz;
import voice.com.biz.YsyleixBiz;
import voice.com.pojo.Btender;
import voice.com.pojo.Complete;
import voice.com.pojo.InUsers;
import voice.com.pojo.Lgtype;
import voice.com.pojo.Partpate;
import voice.com.pojo.Scrowd;
import voice.com.pojo.Tvoice;
import voice.com.pojo.Uzbztb;
import voice.com.pojo.Works;
import voice.com.pojo.Ysyleix;
import voice.com.util.MD5test;
import voice.com.util.PaginationSupport;
import voice.com.vo.BtenderListVO;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EhpageAction extends ActionSupport {

	/**
	 * 公共页面及功能
	 */
	private static final long serialVersionUID = 1L;

	private LgtypeBiz lgtypeBiz;
	private ScrowdBiz scrowdBiz;
	private TvoiceBiz tvoiceBiz;
	private InUsersBiz inUsersBiz;
	private WorksBiz worksBiz;

	public void setInUsersBiz(InUsersBiz inUsersBiz) {
		this.inUsersBiz = inUsersBiz;
	}

	public void setLgtypeBiz(LgtypeBiz lgtypeBiz) {
		this.lgtypeBiz = lgtypeBiz;
	}

	public void setScrowdBiz(ScrowdBiz scrowdBiz) {
		this.scrowdBiz = scrowdBiz;
	}

	public void setTvoiceBiz(TvoiceBiz tvoiceBiz) {
		this.tvoiceBiz = tvoiceBiz;
	}

	public void setWorksBiz(WorksBiz worksBiz) {
		this.worksBiz = worksBiz;
	}

	private List<Lgtype> tlistl;
	private List<Scrowd> tlists;
	private List<Tvoice> tlistT;
	private List<Works> wlist;
	private Map<String, String> sexslist;// 性别
	private PaginationSupport<InUsers> vlist;
	private int pxids;// 排序
	private int tdjy;// 页码
	private int paxm;// 分页排序码
	private String screeid;// 筛选的字符字符串

	/**
	 * 中文进入配音员展示页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String thevoicefindEh()throws Exception {
		Map<String, String> mapssx = new HashMap<String, String>();
		if (tdjy == 0) {
			if (pxids == 0) {
				if (screeid == null || screeid.equals("")) {
					tdjy = 1;
					pxids = 1;
					Map<String, String> maps = new HashMap<String, String>();
					maps.put("男", "男");
					maps.put("女", "女");
					sexslist = maps;
					tlistl = lgtypeBiz.findLgtype();
					tlists = scrowdBiz.findScrowd();
					tlistT = tvoiceBiz.findtvoice();
					// 查询所有公开的作品---1
					wlist = worksBiz.findworksvoice("1");

					vlist = inUsersBiz.userlist(20, tdjy, "berwartaedfeee",
							"1", pxids, mapssx);
					return "thevoicelist";
				} else {
					System.out.println("字符串为：pxids：" + pxids);
					System.out.println("字符串为：dug：" + screeid);
					String[] sourceStrArray = screeid.split(",");
					for (int i = 0; i < sourceStrArray.length; i++) {
						// 获取类型
						String type = sourceStrArray[i].substring(
								sourceStrArray[i].length() - 1,
								sourceStrArray[i].length());
						// 获取值
						String value = sourceStrArray[i].substring(0,
								sourceStrArray[i].length() - 1);
						System.out.println(type + "----" + value);
						mapssx.put(type, value);
					}
					vlist = inUsersBiz.userlist(20, tdjy, "berwartaedfeee",
							"1", pxids, mapssx);
					return "thevoicejson";

				}
			} else {
				System.out.println("bug执行排序----：" + pxids);
				System.out.println("bug执行字符串----：" + screeid);
				String[] sourceStrArray = screeid.split(",");
				for (int i = 0; i < sourceStrArray.length; i++) {
					// 获取类型
					String type = sourceStrArray[i].substring(
							sourceStrArray[i].length() - 1,
							sourceStrArray[i].length());
					// 获取值
					String value = sourceStrArray[i].substring(0,
							sourceStrArray[i].length() - 1);
					System.out.println(type + "----" + value);
					mapssx.put(type, value);
				}
				vlist = inUsersBiz.userlist(20, tdjy, "berwartaedfeee", "1",
						pxids, mapssx);
				return "thevoicejson";
			}
		} else {
			System.out.println("字符串为-------：" + screeid);
			String[] sourceStrArray = screeid.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				// 获取类型
				String type = sourceStrArray[i].substring(
						sourceStrArray[i].length() - 1,
						sourceStrArray[i].length());
				// 获取值
				String value = sourceStrArray[i].substring(0,
						sourceStrArray[i].length() - 1);
				System.out.println(type + "----" + value);
				mapssx.put(type, value);
			}
			vlist = inUsersBiz.userlist(20, tdjy, "berwartaedfeee", "1", paxm,
					mapssx);
			return "thevoicejson";
		}

	}

	private String uid;
	private int iudjys;
	private InUsers rs;
	private PaginationSupport<Works> iuworks;

	/**
	 * 进入配音员详细主页
	 */
	public String inuservoiwEh()throws Exception {
		System.out.println("音员详细主页");
		rs = inUsersBiz.findgetu(uid);
		System.out.println("-------" + rs.getIuserName());
		if (iudjys == 0) {
			iuworks = worksBiz.workslist(rs.getIuserName(), 19, 1);
		} else {
			iuworks = worksBiz.workslist(rs.getIuserName(), 19, iudjys);
		}
		return "inuservoiws";
	}

	private PaginationSupport<Works> vowos;

	private List<Ysyleix> yslist;
	private YsyleixBiz ysyleixBiz;
	private int wordjy;// 第几页
	private String condition;// 条件字符串

	public void setYsyleixBiz(YsyleixBiz ysyleixBiz) {
		this.ysyleixBiz = ysyleixBiz;
	}

	/**
	 * 主页的作品展示
	 * 
	 * @return
	 */
	public String viowlist() {
		Map<String, String> mapvs = new HashMap<String, String>();

		if (wordjy == 0) {
			if (condition == null || condition.equals("")) {
				tlistl = lgtypeBiz.findLgtype();
				tlists = scrowdBiz.findScrowd();
				tlistT = tvoiceBiz.findtvoice();
				yslist = ysyleixBiz.findylsiex();
				vowos = worksBiz.voiceworklist("1", 10, 1, mapvs);
				return "vioworkslist";
			} else {

				String[] sourceStrArray = condition.split(",");
				for (int i = 0; i < sourceStrArray.length; i++) {
					// 获取类型
					String type = sourceStrArray[i].substring(
							sourceStrArray[i].length() - 1,
							sourceStrArray[i].length());
					// 获取值
					String value = sourceStrArray[i].substring(0,
							sourceStrArray[i].length() - 1);
					System.out.println(type + "----" + value);
					mapvs.put(type, value);
				}

				vowos = worksBiz.voiceworklist("1", 20, wordjy, mapvs);
				return "vioworksjson";
			}
		} else {

			String[] sourceStrArray = condition.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				// 获取类型
				String type = sourceStrArray[i].substring(
						sourceStrArray[i].length() - 1,
						sourceStrArray[i].length());
				// 获取值
				String value = sourceStrArray[i].substring(0,
						sourceStrArray[i].length() - 1);
				System.out.println(type + "----" + value);
				mapvs.put(type, value);
			}
			vowos = worksBiz.voiceworklist("1", 20, wordjy, mapvs);
			return "vioworksjson";
		}
	}

	private String wid;// 作品ID
	private Works wrks;
	private InUsers inus;

	/**
	 * 作品详细
	 * 
	 * @return
	 */
	public String worksdetailedsEh()throws Exception {
		Works w = worksBiz.finws(wid);
		w.setWliulanRs(w.getWliulanRs() + 1);
		worksBiz.updateworks(w);
		wrks = worksBiz.finws(wid);
		System.out.println(wrks.getWorksName());
		List<InUsers> lius = inUsersBiz.findUsersc(wrks.getWuserNames());
		System.out.println(lius.size());
		for (InUsers is : lius) {
			inus = is;
			System.out.println(inus.getIid());
		}
		return "worksdetailed";
	}

	private BtenderBiz btenderBiz;

	public void setBtenderBiz(BtenderBiz btenderBiz) {
		this.btenderBiz = btenderBiz;
	}

	private PaginationSupport<BtenderListVO> btenlist;
	private int pagenumber;// 分页页码
	private int oderma;// 排序码
	private String conditionsber;// 条件
	
	private String hcyy;//语言ID
	private String hcpe;//配音类型ID
	private String hcxbID;//性别
	private String hcyd;//声音段
	private String zhitj;//条件值

	/**
	 * 多条件动态查询任务展示主页
	 * 
	 * @return
	 */
	public String voiwbtenderlistEh()throws Exception {
		System.out.println("任务展示主页");
		Map<String, String> mapbter = new HashMap<String, String>();
		
		
		String[] arrays = new String[4];

		if (pagenumber == 0) {
			if (oderma == 0) {
				if (conditionsber == null) {
					oderma = 1;
					pagenumber = 1;
					Map<String, String> maps = new HashMap<String, String>();
					maps.put("男", "男");
					maps.put("女", "女");
					maps.put("男女混合", "男女混合");
					maps.put("男女不限", "男女不限");
					sexslist = maps;
					tlistl = lgtypeBiz.findLgtype();
					tlists = scrowdBiz.findScrowd();
					tlistT = tvoiceBiz.findtvoice();
					
					StringBuilder sb=new StringBuilder();
					if(hcyy!=null && !"1".equals(hcyy)){
					  sb.append(hcyy+"L,");
					}
					if(hcpe!=null && !"1".equals(hcpe)){
						  sb.append(hcpe+"V,");
						}
					if(hcxbID!=null && !"1".equals(hcxbID)){
						  sb.append(hcxbID+"S,");
						}
					if(hcyd!=null && !"1".equals(hcyd)){
						  sb.append(hcyd+"R,");
						}
					sb.append("ull");
					
					zhitj=sb.toString();
					btenlist = btenderBiz.finbtenderlist(oderma, 17,
							pagenumber, mapbter, arrays);
					for (BtenderListVO t : btenlist.getItems()) {
						System.out.println(t.getRwbName() + "----"
								+ t.getRermb() + "---" + t.getRwcount());
					}
					return "voiwbtender";
				} else {
					String[] sourceStrArray = conditionsber.split(",");
					for (int i = 0; i < sourceStrArray.length; i++) {
						// 获取类型
						String type = sourceStrArray[i].substring(
								sourceStrArray[i].length() - 1,
								sourceStrArray[i].length());
						// 获取值
						String value = sourceStrArray[i].substring(0,
								sourceStrArray[i].length() - 1);
						System.out.println(type + "----" + value);
						mapbter.put(type, value);
						if (!value.equals("ul")) {
							arrays[i] = value;
						}
					}
					btenlist = btenderBiz.finbtenderlist(oderma, 17,
							pagenumber, mapbter, arrays);
					return "voiwbtenderjson";

				}

			} else {
				String[] sourceStrArray = conditionsber.split(",");
				for (int i = 0; i < sourceStrArray.length; i++) {
					// 获取类型
					String type = sourceStrArray[i].substring(
							sourceStrArray[i].length() - 1,
							sourceStrArray[i].length());
					// 获取值
					String value = sourceStrArray[i].substring(0,
							sourceStrArray[i].length() - 1);
					mapbter.put(type, value);
					if (!value.equals("ul")) {
						arrays[i] = value;
					}
				}
				btenlist = btenderBiz.finbtenderlist(oderma, 17, pagenumber,
						mapbter, arrays);
				return "voiwbtenderjson";

			}

		} else {


			String[] sourceStrArray = conditionsber.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				// 获取类型
				String type = sourceStrArray[i].substring(
						sourceStrArray[i].length() - 1,
						sourceStrArray[i].length());
				// 获取值
				String value = sourceStrArray[i].substring(0,
						sourceStrArray[i].length() - 1);
				mapbter.put(type, value);
				if (!value.equals("ul")) {
					arrays[i] = value;
				}
			}
			
			btenlist = btenderBiz.finbtenderlist(oderma, 17, pagenumber,
					mapbter, arrays);
			return "voiwbtenderjson";
		}

	}

	
	
	
	public String getZhitj() {
		return zhitj;
	}

	public void setZhitj(String zhitj) {
		this.zhitj = zhitj;
	}

	public String getHcyy() {
		return hcyy;
	}

	public void setHcyy(String hcyy) {
		this.hcyy = hcyy;
	}

	public String getHcpe() {
		return hcpe;
	}

	public void setHcpe(String hcpe) {
		this.hcpe = hcpe;
	}

	public String getHcxbID() {
		return hcxbID;
	}

	public void setHcxbID(String hcxbID) {
		this.hcxbID = hcxbID;
	}

	public String getHcyd() {
		return hcyd;
	}

	public void setHcyd(String hcyd) {
		this.hcyd = hcyd;
	}

	private String bid;
	private Btender bder;
	private InUsers bdus;
    private String oderid;//订单ID
    private Partpate ps;
    
    private int ersers;
    
	public int getErsers() {
		return ersers;
	}

	public void setErsers(int ersers) {
		this.ersers = ersers;
	}

	/**
	 * 进入任务详细页面
	 * 
	 * @return
	 */
	public String voiwtaskEh()throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
        //查询当前配音员是否参与配音
		if(null!=iusers && "berwartaedfeee".equals(iusers.getDtype().getDid())){
			List<Partpate> puses=partpateBiz.findperberdd(bid, iusers.getIid());
			if(puses!=null && puses.size()>0){
				ersers=200;
			}else{
				ersers=333;
			}
		}
        /*if(oderid!=null){
        	System.out.println("订单ID:"+oderid);
        	ps = partpateBiz.findPartpate(oderid);
        }*/
		
		
		Btender br = btenderBiz.findbtender(bid);
		br.setBliuyanNum(br.getBliuyanNum() + 1);
		btenderBiz.updaterw(br);

		bder = btenderBiz.findbtender(bid);

		System.out.println(bder.getBtid());
		List<InUsers> bs = inUsersBiz.findUsersc(bder.getbUserID());
		
		for (InUsers ers : bs) {
			bdus = ers;
			System.out.println("任务方:" + bdus.getIuserName());
		}

		return "viowtasks";
	}

	
	
	
	public Partpate getPs() {
		return ps;
	}

	public void setPs(Partpate ps) {
		this.ps = ps;
	}

	// 上传文件
	private File filesy;
	// 上传文件名
	private String filesyFileName;
	// 上传文件内容类型
	private String filesyContentType;
	// 上传文件存放路径
	private final static String UPLOADDIRS = "/yinyue";
   
	private String bteids;// 任务ID
    
    private Partpate partpate;//竞标信息
	private PartpateBiz partpateBiz;
	public void setPartpateBiz(PartpateBiz partpateBiz) {
		this.partpateBiz = partpateBiz;
	}

	/**
	 * 上传试音
	 * 
	 * @return
	 */
	public String uploadsyinEh()throws Exception {
		System.out.println("接收到的任务为:" + bteids);
		System.out.println("得到的文件是:" + filesy + "文件名称为:" + filesyFileName);
		InUsers isnvice = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (isnvice.getDtype().getDid().equals("gseaeffasdasc")) {
			return "error";
		}
		Btender brs = btenderBiz.findbtender(bteids);
		Partpate par = new Partpate();
		par.setPuserId(isnvice);// 竞标人
		par.setPusersId(brs.getbUserID());// 任务方
		par.setBtender(brs);
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String shijian = dateFormat.format(c.getTime());
		par.setPcyTime(shijian);
		Uzbztb u = new Uzbztb();
		u.setUzbid("baseecasef");
		par.setUzbztb(u);
		String filenamevo = this.uploadFiless(filesy, UPLOADDIRS,
				filesyFileName);
		par.setPjbrphone(partpate.getPjbrphone());
		//换算成美元
		Double dbs=Double.valueOf(partpate.getPjbrphone());
	    DecimalFormat df = new DecimalFormat("0.00"); 
	    String db = df.format(dbs/6);
		par.setPrwfphone(db);
		par.setPsyfileName(filenamevo);
		Complete co = new Complete();
		co.setCid("vbflkenlkbdklrmv2240");
		par.setComplete(co);
		String e = partpateBiz.savepartpate(par);
		if (e.equals("1")) {
			System.out.println("竞标成功!");
		} else {
			System.out.println("竞标失败!");
		}
		
		return "uploadjinbiao";
	}

	
	
	
	public String getOderid() {
		return oderid;
	}

	public void setOderid(String oderid) {
		this.oderid = oderid;
	}

	public Partpate getPartpate() {
		return partpate;
	}

	public void setPartpate(Partpate partpate) {
		this.partpate = partpate;
	}

	// 执行上传功能
	private String uploadFiless(File file, String fileurl, String fileNamesf)
			throws FileNotFoundException, IOException {
		String wjname = "";
		try {
			InputStream in = new FileInputStream(file);
			String dir = ServletActionContext.getServletContext().getRealPath(
					fileurl);
			File fileLocation = new File(dir);
			// 此处也可以在应用根目录手动建立目标上传目录
			if (!fileLocation.exists()) {
				boolean isCreated = fileLocation.mkdir();
				if (!isCreated) {
					// 目标上传目录创建失败,可做其他处理,例如抛出自定义异常等,一般应该不会出现这种情况。
				}
			}
			String fileName = fileNamesf;
			Random random = new Random();
			int x = random.nextInt(999999);
			// System.out.println(x);
			Random random1 = new Random();
			int y = random1.nextInt(999999);
			String c = Integer.toString(y);
			MD5test m = new MD5test();
			String lc = m.setget(c);
			String wenjianming = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-ms")
					.format(new java.util.Date()) + x + lc + fileName;
			wjname = wenjianming;
			File uploadFile = new File(dir, wenjianming);
			OutputStream out = new FileOutputStream(uploadFile);
			byte[] buffer = new byte[1024 * 1024];
			int length;
			while ((length = in.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}
			in.close();
			out.close();
		} catch (FileNotFoundException ex) {
			System.out.println("上传失败!");
			ex.printStackTrace();
		} catch (IOException ex) {
			System.out.println("上传失败!");
			ex.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return wjname;
	}

	public File getFilesy() {
		return filesy;
	}

	public void setFilesy(File filesy) {
		this.filesy = filesy;
	}

	public String getFilesyFileName() {
		return filesyFileName;
	}

	public void setFilesyFileName(String filesyFileName) {
		this.filesyFileName = filesyFileName;
	}

	public String getFilesyContentType() {
		return filesyContentType;
	}

	public void setFilesyContentType(String filesyContentType) {
		this.filesyContentType = filesyContentType;
	}

	public String getBteids() {
		return bteids;
	}

	public void setBteids(String bteids) {
		this.bteids = bteids;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public Btender getBder() {
		return bder;
	}

	public void setBder(Btender bder) {
		this.bder = bder;
	}

	public InUsers getBdus() {
		return bdus;
	}

	public void setBdus(InUsers bdus) {
		this.bdus = bdus;
	}

	public PaginationSupport<Works> getIuworks() {
		return iuworks;
	}

	public void setIuworks(PaginationSupport<Works> iuworks) {
		this.iuworks = iuworks;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getIudjys() {
		return iudjys;
	}

	public void setIudjys(int iudjys) {
		this.iudjys = iudjys;
	}

	public InUsers getRs() {
		return rs;
	}

	public void setRs(InUsers rs) {
		this.rs = rs;
	}

	public Works getWrks() {
		return wrks;
	}

	public void setWrks(Works wrks) {
		this.wrks = wrks;
	}

	public InUsers getInus() {
		return inus;
	}

	public void setInus(InUsers inus) {
		this.inus = inus;
	}

	public String getWid() {
		return wid;
	}

	public void setWid(String wid) {
		this.wid = wid;
	}

	public String getConditionsber() {
		return conditionsber;
	}

	public void setConditionsber(String conditionsber) {
		this.conditionsber = conditionsber;
	}

	public int getOderma() {
		return oderma;
	}

	public void setOderma(int oderma) {
		this.oderma = oderma;
	}

	public int getPagenumber() {
		return pagenumber;
	}

	public void setPagenumber(int pagenumber) {
		this.pagenumber = pagenumber;
	}

	public PaginationSupport<BtenderListVO> getBtenlist() {
		return btenlist;
	}

	public void setBtenlist(PaginationSupport<BtenderListVO> btenlist) {
		this.btenlist = btenlist;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public int getWordjy() {
		return wordjy;
	}

	public void setWordjy(int wordjy) {
		this.wordjy = wordjy;
	}

	public PaginationSupport<Works> getVowos() {
		return vowos;
	}

	public void setVowos(PaginationSupport<Works> vowos) {
		this.vowos = vowos;
	}

	public List<Works> getWlist() {
		return wlist;
	}

	public void setWlist(List<Works> wlist) {
		this.wlist = wlist;
	}

	public String getScreeid() {
		return screeid;
	}

	public void setScreeid(String screeid) {
		this.screeid = screeid;
	}

	public int getPaxm() {
		return paxm;
	}

	public void setPaxm(int paxm) {
		this.paxm = paxm;
	}

	public int getPxids() {
		return pxids;
	}

	public void setPxids(int pxids) {
		this.pxids = pxids;
	}

	public int getTdjy() {
		return tdjy;
	}

	public void setTdjy(int tdjy) {
		this.tdjy = tdjy;
	}

	public PaginationSupport<InUsers> getVlist() {
		return vlist;
	}

	public void setVlist(PaginationSupport<InUsers> vlist) {
		this.vlist = vlist;
	}

	public List<Lgtype> getTlistl() {
		return tlistl;
	}

	public void setTlistl(List<Lgtype> tlistl) {
		this.tlistl = tlistl;
	}

	public List<Scrowd> getTlists() {
		return tlists;
	}

	public void setTlists(List<Scrowd> tlists) {
		this.tlists = tlists;
	}

	public List<Tvoice> getTlistT() {
		return tlistT;
	}

	public void setTlistT(List<Tvoice> tlistT) {
		this.tlistT = tlistT;
	}

	public Map<String, String> getSexslist() {
		return sexslist;
	}

	public void setSexslist(Map<String, String> sexslist) {
		this.sexslist = sexslist;
	}

	public List<Ysyleix> getYslist() {
		return yslist;
	}

	public void setYslist(List<Ysyleix> yslist) {
		this.yslist = yslist;
	}

}

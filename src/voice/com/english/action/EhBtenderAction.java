package voice.com.english.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.struts2.ServletActionContext;

import voice.com.biz.BftranslateBiz;
import voice.com.biz.BtenderBiz;
import voice.com.biz.FileormatBiz;
import voice.com.biz.HspeedBiz;
import voice.com.biz.LgtypeBiz;
import voice.com.biz.PartpateBiz;
import voice.com.biz.ScrowdBiz;
import voice.com.biz.TvoiceBiz;
import voice.com.pojo.Bftranslate;
import voice.com.pojo.Btender;
import voice.com.pojo.Fileormat;
import voice.com.pojo.Hspeed;
import voice.com.pojo.InUsers;
import voice.com.pojo.Lgtype;
import voice.com.pojo.Partpate;
import voice.com.pojo.Scrowd;
import voice.com.pojo.Tvoice;
import voice.com.pojo.Zstate;
import voice.com.translation.Translation;
import voice.com.util.MD5test;
import voice.com.util.PaginationSupport;
import voice.com.vo.BtenderVO;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EhBtenderAction extends ActionSupport {

	/**
	 * 任务方Action
	 */
	private static final long serialVersionUID = 1L;

	private BtenderBiz btenderBiz;
	private Btender btender;
	private String btenderTimedw;// 时间单位；
	// 上传文件
	private File file;
	private File files1;
	// 上传文件名
	private String fileFileName;
	private String files1FileName;
	// 上传文件内容类型
	private String fileContentType;
	private String files1ContentType;
	// 上传文件存放路径
	private final static String UPLOADDIRS = "/yinyue";
	// 上传文件存放路径
    private final static String VOICEFLE = "/voicefile";


	public void setBtenderBiz(BtenderBiz btenderBiz) {
		this.btenderBiz = btenderBiz;
	}

	
	/**
	 * 任务翻译注入
	 */
	private BftranslateBiz bftranslateBiz;

	public void setBftranslateBiz(BftranslateBiz bftranslateBiz) {
		this.bftranslateBiz = bftranslateBiz;
	}

	// 定义翻译类
	private static Translation tr = new Translation();

	/**
	 * 进添加任务页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String insertBtenderEh() throws Exception {
		System.out.println("文件的数组长度为1:" + file);
		System.out.println("文件的数组长度为2:" + files1);
		InUsers isnvice = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		String voicefileName = "";
		String voicefileNamels = "";
		try {
			if (file != null) {
				voicefileName = this.uploadvoice(file, UPLOADDIRS,
						this.fileFileName);
			}
			if (files1 != null) {
				voicefileNamels = this.uploadvoice(files1, VOICEFLE,
						this.files1FileName);
			}

			Btender br = new Btender();
			Bftranslate bf = new Bftranslate();
			br.setBtName(btender.getBtName());
			// 翻译标题
			bf.setBfNames(tr.TranStu(btender.getBtName()));

			Calendar c = Calendar.getInstance();
			c.setTimeInMillis(new Date().getTime());
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String rwsj = dateFormat.format(c.getTime());
			br.setBtime(rwsj);
			br.setbUserID(isnvice.getIuserName());
			Lgtype lg = new Lgtype();
			lg.setLid(btender.getLgtype().getLid());
			br.setLgtype(lg);
			Tvoice tv = new Tvoice();
			tv.setTvid(btender.getTvoice().getTvid());
			br.setTvoice(tv);
			br.setBypfile(voicefileName);
			br.setBsex(btender.getBsex());
			Scrowd sc = new Scrowd();
			sc.setSid(btender.getScrowd().getSid());
			br.setScrowd(sc);
			String shic = btender.getBtimeLength() + btenderTimedw;
			br.setBtimeLength(shic);
			// 翻译要求时长
			bf.setBfyqsc(tr.TranStu(shic));

			br.setBpygaowen(btender.getBpygaowen());
			// 试音稿文翻译
			bf.setBfsygw(tr.TranStu(btender.getBpygaowen()));

			br.setBvoicefileName(voicefileNamels);
			br.setBxxmiaoshu(btender.getBxxmiaoshu());
			// 翻译任务描述
			bf.setBftiser(tr.TranStu(btender.getBxxmiaoshu()));

			br.setBasofTime(btender.getBasofTime());
			br.setBprice(btender.getBprice()*6);
			Zstate zs = new Zstate();
			zs.setZid("bratqaefabasfa");
			br.setZstate(zs);
			br.setBliuyanNum(0);
			br.setBfilegeshi(btender.getBfilegeshi());
			br.setBpyyusu(btender.getBpyyusu());
			br.setBts("0");
			br.setBsffy(btender.getBsffy());
			br.setBrwtype("111");
			br.setBcounts(0);
			br.setBrwjdjls("1");//实时进度

			String Namedet = "";

			String idsd = String.valueOf(new Random().nextInt(999999) + 100000);

			String sj = new SimpleDateFormat("yyyyMMddHHmmssms")
					.format(new java.util.Date());
			String os = String.valueOf(new Random().nextInt(999999) + 100000);

			String lsid = "DF" + idsd + sj + os;
			Namedet = lsid;
			bf.setBftisyi(lsid);
			// 添加翻译
			bftranslateBiz.saveBftan(bf);

			Bftranslate tes = bftranslateBiz.findbftran(Namedet);
			br.setBftranslate(tes);// 翻译类
			String pd = btenderBiz.insertBtender(br);
			if (pd.equals("1")) {
				System.out.println("添加任务成功!");
			} else {
				System.out.println("添加任务失败!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "btenderInsert";
	}
	
	
	private PaginationSupport<BtenderVO> bten;
	private int rwdjy;
	private int rwdjys;

	/**
	 * 进入我的任务列表
	 * 
	 * @param file
	 * @param fileurl
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String taskpartylistEh() throws Exception {
		System.out.println("进入我的任务列表");
		System.out.println("第几页:" + rwdjy);
		System.out.println("rwdjys:" + rwdjys);
		InUsers isnrrw = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (isnrrw == null) {
			return "error";
		}
		if (rwdjys == 0) {
			if (rwdjy == 0) {
				rwdjy = 0;
				// "0"代表未合作的任务
				bten = btenderBiz.selectBtender(isnrrw.getIuserName(), "0", 12,
						rwdjy);
				return "taskparttlistaction";
			} else {
				bten = btenderBiz.selectBtender(isnrrw.getIuserName(), "0", 12,
						rwdjy);
				return "rewujson";
			}
		} else {
			bten = btenderBiz.selectBtender(isnrrw.getIuserName(), "0", 12,
					rwdjys);
			rwdjy = rwdjys;
			return "taskparttlistaction";
		}

	}

	private PartpateBiz partpateBiz;

	private TvoiceBiz tvoiceBiz;
	private LgtypeBiz lgtypeBiz;
	private ScrowdBiz scrowdBiz;
	private FileormatBiz fileormatBiz;
	private HspeedBiz hspeedBiz;

	private int jdyup;
	private String ptid;
	private Btender tenderrw;

	private Map<String, String> sexlist;
	private Map<String, String> timelist;
	private List<Tvoice> listtrw;
	private List<Lgtype> listlrw;
	private List<Scrowd> listsrw;
	private List<Fileormat> listfrw;
	private List<Hspeed> listhrw;

	private PaginationSupport<Partpate> prlist;

	private int countjb;

	
	
	/**
	 * 进入任务编辑页面
	 * 
	 * @return
	 * @ Eh() throws Exception
	 */
	public String updatebtenEh() throws Exception {
		System.out.println("得到传过来的页码:" + countjb);
		if (countjb != 0) {
			jdyup = countjb;
		}

		System.out.println("最终获取到的页码:" + jdyup);
		InUsers isnrrp = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (isnrrp == null) {
			return "error";
		}
		Map<String, String> maps = new HashMap<String, String>();
		maps.put("Mixed male and female", "Mixed male and female");
		maps.put("male", "male");
		maps.put("female", "female");
		maps.put("Men and women are not limited", "Men and women are not limited");
		Map<String, String> mapi = new HashMap<String, String>();
		mapi.put("second", "second");
		mapi.put("branch", "branch");
		mapi.put("time", "time");
		sexlist = maps;
		timelist = mapi;
		listtrw = tvoiceBiz.findtvoice();// 配音类型
		listlrw = lgtypeBiz.findLgtype();// 语言类型
		listsrw = scrowdBiz.findScrowd();// 人群阶段
		listfrw = fileormatBiz.findFileormat();// 文件格式
		listhrw = hspeedBiz.findHspeed();// 语速要求
		List<Btender> lisbten = btenderBiz.findbtens(ptid,
				isnrrp.getIuserName());

		if (lisbten.size() > 0) {
			tenderrw = lisbten.get(0);
		}
		countjb = jdyup;
		prlist = partpateBiz.findpartpate(ptid, isnrrp.getIuserName(),
				"baseecasef", 12, 1);
		for (Partpate p : prlist.getItems()) {
			System.out.println("pID:----" + p.getPid());
		}
		return "upatebtens";
	}

	private int uudiy;

	/**
	 * ajax查询竞标人列表
	 */
	public String finpartpateEh() throws Exception {
		System.out.println("--任务ID:" + ptid + "--uudiy:" + uudiy);
		InUsers isnrrpt = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (isnrrpt == null) {
			return "error";
		}
		if (uudiy == 0) {
			prlist = partpateBiz.findpartpate(ptid, isnrrpt.getIuserName(),
					"baseecasef", 12, 1);
		} else {
			prlist = partpateBiz.findpartpate(ptid, isnrrpt.getIuserName(),
					"baseecasef", 12, uudiy);
		}
		for (Partpate p : prlist.getItems()) {
			System.out.println("pID:----" + p.getPid());
		}
		return "jsonpartpate";
	}

	private int bendjy;
	private Btender bndrs;
	private String timedw;
	/**
	 * 任务更新
	 */
	public String updateBtenderEh() throws Exception {

		InUsers it = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (it == null) {
			return "error";
		}
		int conutn = partpateBiz.finpartpa(bndrs.getBtid(), it.getIuserName(),
				"baseecasef");
		System.out.println("count:" + conutn);
		if (conutn == 0) {
			List<Btender> lisen = btenderBiz.findbtens(bndrs.getBtid(),
					it.getIuserName());
			
			
			
			Btender b = lisen.get(0);
			//查询翻译表
			Bftranslate btes=bftranslateBiz.findbf(b.getBftranslate().getBfid());
			
			
			b.setBtName(bndrs.getBtName());
			// 翻译标题
			btes.setBfNames(tr.TranStu(bndrs.getBtName()));
			
			
			Lgtype ly = new Lgtype();
			ly.setLid(bndrs.getLgtype().getLid());
			b.setLgtype(ly);
			Tvoice tb = new Tvoice();
			tb.setTvid(bndrs.getTvoice().getTvid());
			b.setTvoice(tb);
			if (file != null) {
				String btefileName = this.uploadvoice(file, UPLOADDIRS,this.fileFileName);
				b.setBypfile(btefileName);
			}
			b.setBsex(bndrs.getBsex());
			Scrowd sc = new Scrowd();
			sc.setSid(bndrs.getScrowd().getSid());
			b.setScrowd(sc);
			String btsc = bndrs.getBtimeLength() + timedw;
			b.setBtimeLength(btsc);
			// 翻译要求时长
			btes.setBfyqsc(tr.TranStu(btsc));
			
			b.setBpygaowen(bndrs.getBpygaowen());
			// 试音稿文翻译
			btes.setBfsygw(tr.TranStu(bndrs.getBpygaowen()));

			
			if (files1 != null) {
				String btefileNames1 = this.uploadvoice(files1, VOICEFLE,this.files1FileName);
				b.setBvoicefileName(btefileNames1);
			}
			b.setBxxmiaoshu(bndrs.getBxxmiaoshu());
			// 翻译任务描述
			btes.setBftiser(tr.TranStu(bndrs.getBxxmiaoshu()));
			b.setBasofTime(bndrs.getBasofTime());
			b.setBprice(bndrs.getBprice()*6);
			Zstate zs = new Zstate();
			zs.setZid("bratqaefabasfa");
			b.setZstate(zs);
			Fileormat fi = new Fileormat();
			fi.setFid(bndrs.getBfilegeshi().getFid());
			b.setBfilegeshi(fi);
			Hspeed hd = new Hspeed();
			hd.setHid(bndrs.getBpyyusu().getHid());
			b.setBpyyusu(hd);
			b.setBsffy(bndrs.getBsffy());
			
			//修改翻译
			bftranslateBiz.updatebf(btes);
			
			String erer = btenderBiz.updaterw(b);
			if ("1".equals(erer)) {
				System.out.println("修改成功!");
			} else {
				System.out.println("修改失败!");
			}
		} else {

		}

		countjb = bendjy;
		ptid = bndrs.getBtid();

		return "updatebtenders";
	}

	public String counts;
	public String btenid;
	public int yema;

	/**
	 * 根据ID删除任务
	 * 
	 * @return
	 */
	public String deletebtensEh() throws Exception {
		InUsers isnrrw = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (isnrrw == null) {
			return "error";
		}
		System.out.println("count:" + counts + "--ID:" + btenid + "--yema"
				+ yema);
		if (counts.equals("0")) {
			List<Btender> listbc = btenderBiz.findbtens(btenid,
					isnrrw.getIuserName());
			if (listbc.size() > 0) {
				String erer = btenderBiz.deletebtender(listbc.get(0));
				if (erer.equals("1")) {
					System.out.println("删除成功!");
				} else {
					System.out.println("删除失败!");
				}
			}
			this.setYema(yema);
		} else {
			return "error";
		}
		return "deletebtes";
	}

	
	
	public File getFiles1() {
		return files1;
	}

	public void setFiles1(File files1) {
		this.files1 = files1;
	}

	public String getFiles1FileName() {
		return files1FileName;
	}

	public void setFiles1FileName(String files1FileName) {
		this.files1FileName = files1FileName;
	}

	public String getFiles1ContentType() {
		return files1ContentType;
	}

	public void setFiles1ContentType(String files1ContentType) {
		this.files1ContentType = files1ContentType;
	}

	public int getBendjy() {
		return bendjy;
	}

	public void setBendjy(int bendjy) {
		this.bendjy = bendjy;
	}

	public Btender getBndrs() {
		return bndrs;
	}

	public void setBndrs(Btender bndrs) {
		this.bndrs = bndrs;
	}

	public String getTimedw() {
		return timedw;
	}

	public void setTimedw(String timedw) {
		this.timedw = timedw;
	}

	public int getCountjb() {
		return countjb;
	}

	public void setCountjb(int countjb) {
		this.countjb = countjb;
	}

	public int getUudiy() {
		return uudiy;
	}

	public void setUudiy(int uudiy) {
		this.uudiy = uudiy;
	}

	public PaginationSupport<Partpate> getPrlist() {
		return prlist;
	}

	public void setPrlist(PaginationSupport<Partpate> prlist) {
		this.prlist = prlist;
	}

	public Btender getTenderrw() {
		return tenderrw;
	}

	public void setTenderrw(Btender tenderrw) {
		this.tenderrw = tenderrw;
	}

	public Map<String, String> getSexlist() {
		return sexlist;
	}

	public void setSexlist(Map<String, String> sexlist) {
		this.sexlist = sexlist;
	}

	public Map<String, String> getTimelist() {
		return timelist;
	}

	public void setTimelist(Map<String, String> timelist) {
		this.timelist = timelist;
	}

	public List<Tvoice> getListtrw() {
		return listtrw;
	}

	public void setListtrw(List<Tvoice> listtrw) {
		this.listtrw = listtrw;
	}

	public List<Lgtype> getListlrw() {
		return listlrw;
	}

	public void setListlrw(List<Lgtype> listlrw) {
		this.listlrw = listlrw;
	}

	public List<Scrowd> getListsrw() {
		return listsrw;
	}

	public void setListsrw(List<Scrowd> listsrw) {
		this.listsrw = listsrw;
	}

	public List<Fileormat> getListfrw() {
		return listfrw;
	}

	public void setListfrw(List<Fileormat> listfrw) {
		this.listfrw = listfrw;
	}

	public List<Hspeed> getListhrw() {
		return listhrw;
	}

	public void setListhrw(List<Hspeed> listhrw) {
		this.listhrw = listhrw;
	}

	public void setTvoiceBiz(TvoiceBiz tvoiceBiz) {
		this.tvoiceBiz = tvoiceBiz;
	}

	public void setLgtypeBiz(LgtypeBiz lgtypeBiz) {
		this.lgtypeBiz = lgtypeBiz;
	}

	public void setScrowdBiz(ScrowdBiz scrowdBiz) {
		this.scrowdBiz = scrowdBiz;
	}

	public void setFileormatBiz(FileormatBiz fileormatBiz) {
		this.fileormatBiz = fileormatBiz;
	}

	public void setHspeedBiz(HspeedBiz hspeedBiz) {
		this.hspeedBiz = hspeedBiz;
	}

	public int getJdyup() {
		return jdyup;
	}

	public void setJdyup(int jdyup) {
		this.jdyup = jdyup;
	}

	public String getPtid() {
		return ptid;
	}

	public void setPtid(String ptid) {
		this.ptid = ptid;
	}

	public void setPartpateBiz(PartpateBiz partpateBiz) {
		this.partpateBiz = partpateBiz;
	}

	public String getCounts() {
		return counts;
	}

	public void setCounts(String counts) {
		this.counts = counts;
	}

	public String getBtenid() {
		return btenid;
	}

	public void setBtenid(String btenid) {
		this.btenid = btenid;
	}

	public int getYema() {
		return yema;
	}

	public void setYema(int yema) {
		this.yema = yema;
	}

	public int getRwdjy() {
		return rwdjy;
	}

	public void setRwdjy(int rwdjy) {
		this.rwdjy = rwdjy;
	}

	public PaginationSupport<BtenderVO> getBten() {
		return bten;
	}

	public void setBten(PaginationSupport<BtenderVO> bten) {
		this.bten = bten;
	}

	// 执行上传功能
	private String uploadvoice(File filess, String fileurl,String fileNames)
			throws FileNotFoundException, IOException {
		String wjname = "";
		try {
			InputStream in = new FileInputStream(filess);
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
			
			
			String fileName =fileNames;
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

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public Btender getBtender() {
		return btender;
	}

	public void setBtender(Btender btender) {
		this.btender = btender;
	}

	public String getBtenderTimedw() {
		return btenderTimedw;
	}

	public void setBtenderTimedw(String btenderTimedw) {
		this.btenderTimedw = btenderTimedw;
	}

	public int getRwdjys() {
		return rwdjys;
	}

	public void setRwdjys(int rwdjys) {
		this.rwdjys = rwdjys;
	}

}

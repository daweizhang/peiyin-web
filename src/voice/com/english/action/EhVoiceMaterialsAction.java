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
import java.util.List;
import java.util.Random;

import org.apache.struts2.ServletActionContext;

import voice.com.biz.FileormatBiz;
import voice.com.biz.HspeedBiz;
import voice.com.biz.InUsersBiz;
import voice.com.biz.LgtypeBiz;
import voice.com.biz.ScrowdBiz;
import voice.com.biz.TvoiceBiz;
import voice.com.biz.WorksBiz;
import voice.com.biz.YsyleixBiz;
import voice.com.pojo.Fileormat;
import voice.com.pojo.Hspeed;
import voice.com.pojo.InUsers;
import voice.com.pojo.Lgtype;
import voice.com.pojo.Scrowd;
import voice.com.pojo.Tvoice;
import voice.com.pojo.Works;
import voice.com.pojo.Ysyleix;
import voice.com.util.MD5test;
import voice.com.util.PaginationSupport;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 配音员的操作
 * 
 * @author dell
 * 
 */
public class EhVoiceMaterialsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private InUsers ius;
	// 注入用Biz
	private InUsersBiz inUsersBiz;

	public void setInUsersBiz(InUsersBiz inUsersBiz) {
		this.inUsersBiz = inUsersBiz;
	}

	/**
	 * 进入配音员的个人中心(中文)
	 * 
	 * @return
	 */
	public String InvoicematerialEh()throws Exception {
		InUsers isn = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		List<InUsers> cs = inUsersBiz.findUsersc(isn.getIuserName());
		if (cs.size() > 0) {
			ius = cs.get(0);
			if ("berwartaedfeee".equals(ius.getDtype().getDid())) {
				return "invoce";
			}
			if ("gseaeffasdasc".equals(ius.getDtype().getDid())) {
				return "taskpary";
			} 
		} else {
			return "error";
		}
		return "error";
	}

	// 上传文件
	private File file;
	// 上传文件名
	private String fileFileName;
	// 上传文件内容类型
	private String fileContentType;
	// 上传文件存放路径
	private final static String UPLOADDIR = "/upload";

	/**
	 * 上传我的头像
	 * 
	 * @return
	 */
	public String useruploadEh()throws Exception {

		// System.out.println("上传文件"+file);
		/*
		 * System.out.println("上传文件名"+fileFileName);
		 * System.out.println("上传文件类型"+fileContentType);
		 */
		InUsers s = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		System.out.println("用户名:" + s.getIuserName());
		List<InUsers> cs = inUsersBiz.findUsersc(s.getIuserName());
		InUsers bs = cs.get(0);
		if (null != bs) {
			String kd = uploadFile(file, UPLOADDIR);
			bs.setIportrait(kd);
			System.out.println("文件名为:" + kd);
		}
		String i = inUsersBiz.updatload(bs);
		System.out.println(i);
		return "uerupload";
	}

	/**
	 * 进入上传头像页面
	 * 
	 * @param file
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String fintouxEh()throws Exception {
		InUsers isn = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		List<InUsers> cs = inUsersBiz.findUsersc(isn.getIuserName());
		if (cs.size() > 0) {
			ius = cs.get(0);
		} else {
			return "error";
		}
		if ("berwartaedfeee".equals(ius.getDtype().getDid())) {
			return "usertx";
		} else if ("gseaeffasdasc".equals(ius.getDtype().getDid())) {
			return "renwufang";
		} else {
			return "error";
		}

	}

	private InUsers usvi;// 获取页面上配音员字段的值

	private InUsers users;
	private InUsers userrwf;
	private String srcod;

	/**
	 * 配音员完善个人资料
	 */
	public String updateUserwszlEh()throws Exception {
		InUsers isnsd = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if ("berwartaedfeee".equals(isnsd.getDtype().getDid())) {
			List<InUsers> cs = inUsersBiz.findUsersc(isnsd.getIuserName());
			System.out.println("size:" + cs.size());
			InUsers uer = cs.get(0);
			uer.setIname(users.getIname());// new
			uer.setIsex(users.getIsex());
			uer.setIbirthday(users.getIbirthday());
			uer.setIregion(users.getIregion());
			uer.setIlanguageLabels(users.getIlanguageLabels());
			uer.setIvoiceLabels(users.getIvoiceLabels());
			uer.setIslID(users.getIslID());
			Scrowd s = new Scrowd();
			s.setSid(srcod);
			uer.setScrowd(s);
			uer.setIphone(users.getIphone());
			String lkd = inUsersBiz.updateUser(uer);
			if ("1".equals(lkd)) {
				System.out.println("修改成功!");
			}
		} else if ("gseaeffasdasc".equals(isnsd.getDtype().getDid())) {
			System.out.println("走到这一步!");
			List<InUsers> csa = inUsersBiz.findUsersc(isnsd.getIuserName());
			// System.out.println("size:" + csa.size());
			InUsers uers = csa.get(0);
			uers.setIname(userrwf.getIname());
			uers.setIsex(userrwf.getIsex());
			uers.setIgName(userrwf.getIgName());
			uers.setIgPerson(userrwf.getIgPerson());
			uers.setIbirthday(userrwf.getIbirthday());
			uers.setIregion(userrwf.getIregion());
			uers.setIgDetailed(userrwf.getIgDetailed());
			uers.setIphone(userrwf.getIphone());
			String lkds = inUsersBiz.updateUser(uers);
			if ("1".equals(lkds)) {
				System.out.println("修改成功!");
			}
		} else {
			return "error";
		}
		return "wsvoiccemtes";
	}

	private LgtypeBiz lgtypeBiz;
	private ScrowdBiz scrowdBiz;
	private TvoiceBiz tvoiceBiz;
	private YsyleixBiz ysyleixBiz;
	//private Translation c = new Translation();

	public void setLgtypeBiz(LgtypeBiz lgtypeBiz) {
		this.lgtypeBiz = lgtypeBiz;
	}

	public void setScrowdBiz(ScrowdBiz scrowdBiz) {
		this.scrowdBiz = scrowdBiz;
	}

	public void setTvoiceBiz(TvoiceBiz tvoiceBiz) {
		this.tvoiceBiz = tvoiceBiz;
	}

	public void setYsyleixBiz(YsyleixBiz ysyleixBiz) {
		this.ysyleixBiz = ysyleixBiz;
	}

	List<Lgtype> listlgp;
	List<Scrowd> listsrd;
	List<Tvoice> listTvoc;
	List<Ysyleix> listysyle;

	/**
	 * 进入完善资料页面
	 * 
	 * @param file
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String updateUserEh()throws Exception {
		InUsers isn = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		List<InUsers> cs = inUsersBiz.findUsersc(isn.getIuserName());

		if (cs.size() > 0) {
			ius = cs.get(0);
		} else {
			return "error";
		}
		if ("berwartaedfeee".equals(ius.getDtype().getDid())) {
			listlgp = lgtypeBiz.findLgtype();// 语言类型
			listsrd = scrowdBiz.findScrowd();// 人群阶段
			listTvoc = tvoiceBiz.findtvoice();// 配音类型
			listysyle = ysyleixBiz.findylsiex();// 声音类型
			return "updateisUser";
		} else if ("gseaeffasdasc".equals(ius.getDtype().getDid())) {
			return "rwfcemtes";
		} else {
			return "error";
		}

	}

	/**
	 * 进入上传作品页面
	 * 
	 * @param file
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String uploadvicezp() throws Exception {
		listlgp = lgtypeBiz.findLgtype();// 语言类型
		listsrd = scrowdBiz.findScrowd();// 人群阶段
		listTvoc = tvoiceBiz.findtvoice();// 配音类型
		listysyle = ysyleixBiz.findylsiex();// 声音类型

		return "uplaodvicezps";
	}

	private WorksBiz worksBiz;
	private Works works;
	private String lgs;
	private String sro;
	private String vic;
	private String sysli;
	private File files;
	private String sfgkzps;
	// 上传配音作品存放路径
	private final static String VICEWORKS = "/yinyue";

	public void setWorksBiz(WorksBiz worksBiz) {
		this.worksBiz = worksBiz;
	}

	/**
	 * 执行上传作品
	 * 
	 * @param file
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String uploadworksEh()throws Exception {
		System.out.println("执行上传作品!");
		/*
		 * System.out.println("作品名称："+works.getWorksName());
		 * System.out.println("上传的文件:"+file); System.out.println("语言类型："+lgs);
		 * System.out.println("人群阶段："+sro); System.out.println("配音类型："+vic);
		 * System.out.println("声音类型："+sysli);
		 * System.out.println("作品描述："+works.getWts());
		 * System.out.println("上传文件"+file);
		 * System.out.println("上传文件名"+fileFileName);
		 * System.out.println("上传文件类型"+fileContentType);
		 */
		InUsers isn = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		Works w = new Works();
		w.setWorksName(works.getWorksName());
		String workName;
		try {
			workName = uploadFile(file, VICEWORKS);
			w.setWorksFile(workName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String shijian = dateFormat.format(c.getTime());
		w.setWtime(shijian);
		w.setWuserNames(isn.getIuserName());
		w.setWorkScore(0);
		w.setWxiebei(sfgkzps);
		Scrowd sc = new Scrowd();
		sc.setSid(sro);
		w.setScrowd(sc);
		Lgtype lg = new Lgtype();
		lg.setLid(lgs);
		w.setLgtype(lg);
		Tvoice tv = new Tvoice();
		tv.setTvid(vic);
		w.setTvoice(tv);
		Ysyleix ysy = new Ysyleix();
		ysy.setYslid(sysli);
		w.setYsyleix(ysy);
		w.setWliulanRs(0);
		w.setWts(works.getWts());
		String ereer = worksBiz.isnertworks(w);
		System.out.println(ereer);
		return "uploadviceworks";
	}

	private PaginationSupport<Works> listw;
	private int djy;
	private int djydd;

	/**
	 * 进入作品管理列表
	 * 
	 * @param file
	 * @param fileurl
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String workslistEh()throws Exception {

		System.out.println("第几页:" + djy);
		System.out.println("--------" + djydd);
		InUsers isnr = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));

		if (isnr == null) {
			return "error";
		}
		// (值, 每页显示条数, 第几页);
		if (djydd == 0) {
			if (djy == 0) {
				djy = 0;
				listw = worksBiz.workslist(isnr.getIuserName(), 12, djy);
				return "workslistcon";
			} else {
				listw = worksBiz.workslist(isnr.getIuserName(), 12, djy);
				return "wklnjosn";
			}
		} else {
			System.out.println("djydd--" + djydd);
			listw = worksBiz.workslist(isnr.getIuserName(), 12, djydd);
			djy = djydd;
			return "workslistcon";
		}
	}

	private String wordsid;// 接收ID
	private String djyws;// 所在页码

	/**
	 * 根据作品ID查询该作品信息
	 * 
	 * @param file
	 * @param fileurl
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String findworksEh() throws Exception {
		InUsers isns = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (null != isns && null != wordsid) {
			System.out.println("运行到这一步!");
			System.out.println("ID--" + wordsid);
			System.out.println("djyws--" + djyws);
			listlgp = lgtypeBiz.findLgtype();// 语言类型
			listsrd = scrowdBiz.findScrowd();// 人群阶段
			listTvoc = tvoiceBiz.findtvoice();// 配音类型
			listysyle = ysyleixBiz.findylsiex();// 声音类型
			List<Works> wds = worksBiz.findwoks(wordsid, isns.getIuserName());
			works = wds.get(0);
			// System.out.println("-------:"+works.getWorksName());
			djy = Integer.parseInt(djyws);
		} else {
			return "error";
		}
		return "findworksup";
	}

	private String worksdjy;
	private Works wkup;

	/**
	 * 根据ID修改作品信息
	 * 
	 * @param file
	 * @param fileurl
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String updateworkszpEh() throws Exception {
		/*
		 * System.out.println("作品ID:"+wkup.getWid());
		 * System.out.println("作品名称:"+wkup.getWorksName());
		 * System.out.println("作品类型:"+wkup.getTvoice().getTvid());
		 * System.out.println("作品语言:"+wkup.getLgtype().getLid());
		 * System.out.println("作品阶段:"+wkup.getScrowd().getSid());
		 * System.out.println("作品特点:"+wkup.getYsyleix().getYslid());
		 * System.out.println("作品描述:"+wkup.getWts());
		 * System.out.println("是否公开:"+wkup.getWxiebei());
		 * System.out.println("第几页--:"+worksdjy);
		 */
		InUsers isns = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (null != isns && null != wkup.getWid()) {
			List<Works> wdos = worksBiz.findwoks(wkup.getWid(),
					isns.getIuserName());
			Works wos = wdos.get(0);
			wos.setWorksName(wkup.getWorksName());
			Tvoice v = new Tvoice();
			v.setTvid(wkup.getTvoice().getTvid());
			wos.setTvoice(v);
			Lgtype l = new Lgtype();
			l.setLid(wkup.getLgtype().getLid());
			wos.setLgtype(l);
			Scrowd s = new Scrowd();
			s.setSid(wkup.getScrowd().getSid());
			wos.setScrowd(s);
			Ysyleix y = new Ysyleix();
			y.setYslid(wkup.getYsyleix().getYslid());
			wos.setYsyleix(y);
			wos.setWts(wkup.getWts());
			System.out.println("是否公开:" + wkup.getWxiebei());
			wos.setWxiebei(wkup.getWxiebei());
			String ereer = worksBiz.updateworks(wos);
			if (ereer.equals("1")) {
				System.out.println("修改成功");
			} else {
				System.out.println("失败");
			}
			wordsid = wkup.getWid();
			djyws = worksdjy;
		} else {
			return "error";
		}
		return "updatewkzp";
	}

	public String workids;
	public String fyyms;
	public int djys;

	/**
	 * 根据ID删除作品
	 * 
	 * @param file
	 * @param fileurl
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public String deleteworksEh() throws Exception {

		System.out.println("执行到这一步");
		System.out.println("作品ID：" + workids);
		System.out.println("页码：" + fyyms);
		InUsers isnsd = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (null != isnsd) {
			List<Works> wdosd = worksBiz
					.findwoks(workids, isnsd.getIuserName());
			Works wods = wdosd.get(0);
			String erreo = worksBiz.deleteworks(wods);
			if (erreo.equals("1")) {
				System.out.println("删除成功!");
			} else {
				System.out.println("删除失败!");
			}
			this.setDjys(Integer.parseInt(fyyms));
		} else {
			return "error";
		}
		return "deleteworks";

	}

	private FileormatBiz fileormatBiz;
	private HspeedBiz hspeedBiz;
	private List<Fileormat> listf;
	private List<Hspeed> listp;
	public void setFileormatBiz(FileormatBiz fileormatBiz) {
		this.fileormatBiz = fileormatBiz;
	}
	public void setHspeedBiz(HspeedBiz hspeedBiz) {
		this.hspeedBiz = hspeedBiz;
	}
	
	private InUsers inus;
	
	/**
	 * 进入添加任务页面
	 * @return
	 * @throws Exception
	 */
	public String enterBtenderyemEh() throws Exception{
		InUsers isnsd = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		System.out.println("-----------:"+isnsd.getIphone());

			List<InUsers> ins=inUsersBiz.findUsersc(isnsd.getIuserName());
			inus = ins.get(0);
			System.out.println("-----------:"+inus.getIphone());
		System.out.println("进入添加任务页面");
		listTvoc = tvoiceBiz.findtvoice();// 配音类型
		listlgp = lgtypeBiz.findLgtype();// 语言类型
		listsrd = scrowdBiz.findScrowd();// 人群阶段
		listf = fileormatBiz.findFileormat();//文件格式
		listp = hspeedBiz.findHspeed();//语速要求
		System.out.println("listp----"+listp.size());
		return "btenderEnter";
	}
	
	
	
	
    
	public InUsers getInus() {
		return inus;
	}

	public void setInus(InUsers inus) {
		this.inus = inus;
	}

	public List<Fileormat> getListf() {
		return listf;
	}

	public void setListf(List<Fileormat> listf) {
		this.listf = listf;
	}

	public List<Hspeed> getListp() {
		return listp;
	}

	public void setListp(List<Hspeed> listp) {
		this.listp = listp;
	}

	// 执行上传功能
	private String uploadFile(File file, String fileurl)
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
			String fileName = this.getFileFileName();
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

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public InUsers getUserrwf() {
		return userrwf;
	}

	public void setUserrwf(InUsers userrwf) {
		this.userrwf = userrwf;
	}

	public int getDjys() {
		return djys;
	}

	public void setDjys(int djys) {
		this.djys = djys;
	}

	public String getWorkids() {
		return workids;
	}

	public void setWorkids(String workids) {
		this.workids = workids;
	}

	public String getFyyms() {
		return fyyms;
	}

	public void setFyyms(String fyyms) {
		this.fyyms = fyyms;
	}

	public String getWorksdjy() {
		return worksdjy;
	}

	public void setWorksdjy(String worksdjy) {
		this.worksdjy = worksdjy;
	}

	public Works getWkup() {
		return wkup;
	}

	public void setWkup(Works wkup) {
		this.wkup = wkup;
	}

	public int getDjydd() {
		return djydd;
	}

	public void setDjydd(int djydd) {
		this.djydd = djydd;
	}

	public String getWordsid() {
		return wordsid;
	}

	public void setWordsid(String wordsid) {
		this.wordsid = wordsid;
	}

	public String getDjyws() {
		return djyws;
	}

	public void setDjyws(String djyws) {
		this.djyws = djyws;
	}

	public int getDjy() {
		return djy;
	}

	public void setDjy(int djy) {
		this.djy = djy;
	}

	public String getSfgkzps() {
		return sfgkzps;
	}

	public void setSfgkzps(String sfgkzps) {
		this.sfgkzps = sfgkzps;
	}

	public PaginationSupport<Works> getListw() {
		return listw;
	}

	public void setListw(PaginationSupport<Works> listw) {
		this.listw = listw;
	}

	public File getFiles() {
		return files;
	}

	public void setFiles(File files) {
		this.files = files;
	}

	public String getLgs() {
		return lgs;
	}

	public void setLgs(String lgs) {
		this.lgs = lgs;
	}

	public String getSro() {
		return sro;
	}

	public void setSro(String sro) {
		this.sro = sro;
	}

	public String getVic() {
		return vic;
	}

	public void setVic(String vic) {
		this.vic = vic;
	}

	public String getSysli() {
		return sysli;
	}

	public void setSysli(String sysli) {
		this.sysli = sysli;
	}

	public Works getWorks() {
		return works;
	}

	public void setWorks(Works works) {
		this.works = works;
	}

	public String getSrcod() {
		return srcod;
	}

	public void setSrcod(String srcod) {
		this.srcod = srcod;
	}

	public InUsers getUsers() {
		return users;
	}

	public void setUsers(InUsers users) {
		this.users = users;
	}

	public List<Ysyleix> getListysyle() {
		return listysyle;
	}

	public void setListysyle(List<Ysyleix> listysyle) {
		this.listysyle = listysyle;
	}

	public List<Lgtype> getListlgp() {
		return listlgp;
	}

	public void setListlgp(List<Lgtype> listlgp) {
		this.listlgp = listlgp;
	}

	public List<Scrowd> getListsrd() {
		return listsrd;
	}

	public void setListsrd(List<Scrowd> listsrd) {
		this.listsrd = listsrd;
	}

	public List<Tvoice> getListTvoc() {
		return listTvoc;
	}

	public void setListTvoc(List<Tvoice> listTvoc) {
		this.listTvoc = listTvoc;
	}

	public InUsers getUsvi() {
		return usvi;
	}

	public void setUsvi(InUsers usvi) {
		this.usvi = usvi;
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

	public InUsers getIus() {
		return ius;
	}

	public void setIus(InUsers ius) {
		this.ius = ius;
	}
}

package voice.com.action;

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

import voice.com.biz.BtenderBiz;
import voice.com.biz.InUsersBiz;
import voice.com.biz.PartpateBiz;
import voice.com.biz.XsystemnewsBiz;
import voice.com.email.MailTest;
import voice.com.pojo.Btender;
import voice.com.pojo.InUsers;
import voice.com.pojo.Partpate;
import voice.com.pojo.Xsystemnews;
import voice.com.util.MD5test;
import voice.com.util.PaginationSupport;
import voice.com.vo.BtenderVO;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class voiceplayerbiddingAction extends ActionSupport {

	/**
	 * 配音员竞标业务Action或任务方操作订单Action
	 */
	private static final long serialVersionUID = 1L;

	private PartpateBiz partpateBiz;

	public void setPartpateBiz(PartpateBiz partpateBiz) {
		this.partpateBiz = partpateBiz;
	}

	private PaginationSupport<Partpate> pidins;
	private int pdym;// 页码

	/**
	 * 竞标中的任务列表
	 */
	public String findBidding() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			if (pdym == 0) {
				pdym = 1;
				pidins = partpateBiz.findBiddings(iusers.getIid(),
						"baseecasef", 12, pdym);
			} else {
				pidins = partpateBiz.findBiddings(iusers.getIid(),
						"baseecasef", 12, pdym);
			}
		} else {
			return "error";
		}
		return "voiceBidding";
	}

	public String pids;// id

	/**
	 * 删除竞标的信息
	 */
	public String deletpingds() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			Partpate pt = partpateBiz.findPartpate(pids);
			if (pt.getUzbztb().getUzbid().equals("baseecasef")) {
				String er = partpateBiz.deleteBidings(pt);
				if (er.equals("200")) {
					System.out.println("200");
				} else {
					System.out.println("333");
				}
			} else {
				return "error";
			}
		} else {
			return "error";
		}
		return "deletepartpate";
	}

	private String prarid;// 竞标信息ID
	private Partpate pa;// 竞标信息
	private int yemas;// 页码;

	/**
	 * 查看我的竞标信息
	 */
	public String viewthebidding() throws Exception {
		System.out.println("-----------" + yemas);
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			pa = partpateBiz.findPartpate(prarid);
		} else {
			return "error";
		}

		return "viewbiddings";
	}

	public int getYemas() {
		return yemas;
	}

	public void setYemas(int yemas) {
		this.yemas = yemas;
	}

	private PaginationSupport<Partpate> binses;
	private int sesym;// 页码

	/**
	 * 我竞标成功的任务订单
	 * 
	 * @return
	 */
	public String BidsuccessOrder() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			if (sesym == 0) {
				sesym = 1;
				binses = partpateBiz.findbinseccessoders(iusers.getIid(),
						"brafeacasd", "2", 12, sesym);
			} else {
				binses = partpateBiz.findbinseccessoders(iusers.getIid(),
						"brafeacasd", "2", 12, sesym);
			}
		} else {
			return "error";
		}
		return "Bidseccesoders";
	}

	private PaginationSupport<Partpate> ywod;
	private int ywodym;// 页码

	/**
	 * 查看已完成的订单
	 */
	public String findOrderywc() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			if (ywodym == 0) {
				ywodym = 1;
				ywod = partpateBiz.findywcorders("berwartaedfeee",
						iusers.getIid(), "200", 12, ywodym);
			} else {
				ywod = partpateBiz.findywcorders("berwartaedfeee",
						iusers.getIid(), "200", 12, ywodym);
			}
			return "odersywc";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			if (ywodym == 0) {
				ywodym = 1;
				ywod = partpateBiz.findywcorders("gseaeffasdasc",
						iusers.getIuserName(), "200", 12, ywodym);
			} else {
				ywod = partpateBiz.findywcorders("gseaeffasdasc",
						iusers.getIuserName(), "200", 12, ywodym);
			}
			return "odersrwf";
		}
		return "error";
	}

	public PaginationSupport<Partpate> getYwod() {
		return ywod;
	}

	public void setYwod(PaginationSupport<Partpate> ywod) {
		this.ywod = ywod;
	}

	public int getYwodym() {
		return ywodym;
	}

	public void setYwodym(int ywodym) {
		this.ywodym = ywodym;
	}

	private String successfulid;// 竞标成功的订单ID
	private Partpate pfu;// 竞标成功的订单信息

	/**
	 * 竞标成功 查看配音资料
	 * 
	 * @return
	 */
	public String findthevoicedata() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			pfu = partpateBiz.findPartpate(successfulid);
			if (pfu.getUzbztb().equals("baseecasef")) {
				return "error";
			}
		} else {
			return "error";
		}
		return "findthevoicedatas";
	}

	private String cpid;// ID
	private Partpate pcp;//

	/**
	 * 提交成品
	 */
	public String findSubmitproduct() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			pcp = partpateBiz.findPartpate(cpid);
			if ("baseecasef".equals(pcp.getUzbztb())
					&& !"100".equals(pcp.getPrwfemail())) {
				return "error";
			}
		} else {
			return "error";
		}
		return "submitproduct";
	}

	public Partpate getPcp() {
		return pcp;
	}

	public void setPcp(Partpate pcp) {
		this.pcp = pcp;
	}

	public String getCpid() {
		return cpid;
	}

	public void setCpid(String cpid) {
		this.cpid = cpid;
	}

	private String odserid;// 任务方要删除待付款订单的ID

	/**
	 * 任务方删除订单
	 * 
	 * @return
	 */
	public String deleterwfoders() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			Partpate pts = partpateBiz.findPartpate(odserid);
			if (pts.getPzhifuzt().equals("1")) {
				String er = partpateBiz.deleteBidings(pts);
				if (er.equals("200")) {
					System.out.println("200");
				}
			} else {
				return "error";
			}
		} else {
			return "error";
		}
		return "deleterwfoders";
	}

	private String menpid;// 流水ID
	private String nspid;// 订单ID
	private Partpate mptes;// 得到订单详细
	private String gslirun;// 公司的利润

	/**
	 * 任务方查看已付款的订单
	 * 
	 * @return
	 */
	public String paymenthasbeen() throws Exception {

		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}

		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			if (menpid != null && nspid != null) {
				System.out.println("menpid:" + menpid);
				System.out.println("nspid:" + nspid);
				List<Partpate> listpts = partpateBiz
						.mentsptoders(menpid, nspid);

				if (listpts.size() > 0) {
					mptes = listpts.get(0);
				} else {
					return "error";
				}
			} else {
				return "error";
			}
		} else {
			return "error";
		}
		return "paymenthasbeens";
	}

	public String getGslirun() {
		return gslirun;
	}

	public void setGslirun(String gslirun) {
		this.gslirun = gslirun;
	}

	// 上传文件
	private File file;
	// 上传文件名
	private String fileFileName;
	// 上传文件内容类型
	private String fileContentType;
	// 上传文件存放路径
	private final static String UPLOADURL = "/yinyue";
	private Partpate pacy;// 接收订单的信息

	/**
	 * 提交成品进行审核
	 * 
	 * @return
	 */
	public String finishedproduct() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}

		if (iusers.getDtype().getDid().equals("berwartaedfeee")) {
			if (pacy.getPid() != null && file != null
					&& pacy.getPcName() != null
					&& pacy.getPzfbaccount() != null) {
				Partpate pe = partpateBiz.findPartpate(pacy.getPid());
				if ("100".equals(pe.getPrwfemail())) {
					String fileName = uploadFile(file, UPLOADURL);
					if (fileName != null) {
						pe.setPrwfemail("150");
						pe.setPvire(fileName);
						pe.setPcName(pacy.getPcName());
						pe.setPzfbaccount(pacy.getPzfbaccount());
						pe.setPskzt("1");
						Calendar c = Calendar.getInstance();
						c.setTimeInMillis(new Date().getTime());
						SimpleDateFormat dateFormat = new SimpleDateFormat(
								"yyyy-MM-dd HH:mm:ss");
						String shijian = dateFormat.format(c.getTime());
						pe.setPmaturityTime(shijian);
						String er = partpateBiz.updateOrder(pe);
						cpid = pe.getPid();
						if ("333".equals(er)) {
							return "error";
						}
					} else {
						return "error";
					}
				} else {
					return "error";
				}
			} else {
				return "error";
			}
		} else {
			return "error";
		}
		return "finishedproducs";
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

	private XsystemnewsBiz xsystemnewsBiz;

	public void setXsystemnewsBiz(XsystemnewsBiz xsystemnewsBiz) {
		this.xsystemnewsBiz = xsystemnewsBiz;
	}

	private PaginationSupport<Xsystemnews> listnews;
	private int newsym;

	/**
	 * 系统消息
	 * 
	 * @return
	 */
	public String findsystemnews() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("berwartaedfeee")) { // dubber
			if (newsym == 0) {
				newsym = 1;
				listnews = xsystemnewsBiz.finnews(iusers.getIuserName(), 12,
						newsym, "000");
			} else {
				listnews = xsystemnewsBiz.finnews(iusers.getIuserName(), 12,
						newsym, "000");
			}
			return "systemnews";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) { // task publisher
			if (newsym == 0) {
				newsym = 1;
				listnews = xsystemnewsBiz.finnews(iusers.getIuserName(), 12,
						newsym, "000");
			} else {
				listnews = xsystemnewsBiz.finnews(iusers.getIuserName(), 12,
						newsym, "000");
			}
			return "systemnewsrwfs";

		}
		return "error";
	}

	private String newsid;// 消息ID
	private Xsystemnews ews;// 消息
	private String nzym;// 消息页面

	/**
	 * 查看系统消息
	 * 
	 * @return
	 */
	public String Seethemessage() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		Xsystemnews nes = xsystemnewsBiz.findnewscom(newsid);
		nes.setXmessagestatus("333");
		xsystemnewsBiz.updatenews(nes);
		ews = xsystemnewsBiz.findnewscom(newsid);
		return "themessage";
	}

	private List<BtenderVO> bt;
	private BtenderBiz btenderBiz;
	private String uids;
	private InUsers si;
	private InUsersBiz inUsersBiz;

	public void setBtenderBiz(BtenderBiz btenderBiz) {
		this.btenderBiz = btenderBiz;
	}

	public void setInUsersBiz(InUsersBiz inUsersBiz) {
		this.inUsersBiz = inUsersBiz;
	}

	/**
	 * 任务方点击邀请配音员参与竞标
	 * 
	 * @return
	 */
	public String invitationtobid() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			si = inUsersBiz.findgetu(uids);
			bt = btenderBiz.selectBtenderinvitation(iusers.getIuserName(), "0",
					"baefaf758eaecc");
		} else {
			return "error";
		}
		return "invitationtob";
	}

	/**
	 * 点击邀请参与竞标
	 * 
	 * @return
	 */
	private String prid;// 任务ID
	private String inus;// 配音员用户名

	public String Invitationtobids() throws Exception {
		// System.out.println(prid+"-----"+inus);
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			Btender b = btenderBiz.findbtender(prid);
			Xsystemnews x = new Xsystemnews();
			x.setXrecipientUser("admincom");// 发件人
			x.setXfromUser(inus);// 收件人
			x.setXthemessagetitle("任务方ID为:" + iusers.getIname() + "邀请您参与竞标!");// 标题
			x.setXmessagecontent("任务方ID为:" + iusers.getIname()
					+ "邀请您参与竞标‘《<a href='voiwtaskbt.action?bid=" + b.getBtid()
					+ "' target='_blank'>" + b.getBftranslate().getBfNames()
					+ "</a>》’该任务,点击可直接进入任务详细页面,可进行参与竞标!");
			Calendar c = Calendar.getInstance();
			c.setTimeInMillis(new Date().getTime());
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String newsTime = dateFormat.format(c.getTime());
			x.setXsendtime(newsTime);// 发件时间
			x.setXrecipientUser("admincom");// 发件人
			x.setXmessagestatus("200");
			x.setXts("系统消息");
			xsystemnewsBiz.savenews(x);

			// 邮件通知
			List<InUsers> pyy = inUsersBiz.findUsersc(inus);
			InUsers pys = pyy.get(0);
			String messges = "您好!ID为:"
					+ iusers.getIname()
					+ "的任务方邀请您参与竞标TA的“"
					+ b.getBftranslate().getBfNames()
					+ "”该任务，复制我们的网址登陆我的主页>进入系统消息>查看详细！<br>复制我们的网址:www.chinesevoiceoverfreelancers.com";
			MailTest mas = new MailTest();
			mas.notification(pys.getIemail(), messges);

		} else {
			return "error";
		}
		return "tiontobids";
	}

	private String uidstvs;// 用户ID
	private String oderid;// 订单ID
	private String scoes;// 分数

	private String jsonscoes;// 返回的分数

	/**
	 * 配音员评分
	 * 
	 * @return
	 */
	public String voicescore() throws Exception {
		System.out.println("接收到的订单ID为:" + oderid);
		System.out.println("平的分数为:" + scoes);
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}

		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			Partpate ot = partpateBiz.findPartpate(oderid);
			ot.setPwhetherscore("111");
			ot.setPscorect(scoes);

			InUsers spy = inUsersBiz.findgetu(ot.getPuserId().getIid());
			spy.setIcredibility(spy.getIcredibility() + Integer.parseInt(scoes));
			spy.setIscoced(spy.getIscoced() + 1);
			inUsersBiz.updateUser(spy);

			String ers = partpateBiz.updatepartpate(ot);
			if ("1".equals(ers)) {
				jsonscoes = scoes;
			}
		} else {
			return "error";
		}
		return "vscore";
	}

	public String getJsonscoes() {
		return jsonscoes;
	}

	public void setJsonscoes(String jsonscoes) {
		this.jsonscoes = jsonscoes;
	}

	public String getOderid() {
		return oderid;
	}

	public void setOderid(String oderid) {
		this.oderid = oderid;
	}

	public String getScoes() {
		return scoes;
	}

	public void setScoes(String scoes) {
		this.scoes = scoes;
	}

	public String getUidstvs() {
		return uidstvs;
	}

	public void setUidstvs(String uidstvs) {
		this.uidstvs = uidstvs;
	}

	public String getInus() {
		return inus;
	}

	public void setInus(String inus) {
		this.inus = inus;
	}

	public String getUids() {
		return uids;
	}

	public void setUids(String uids) {
		this.uids = uids;
	}

	public InUsers getSi() {
		return si;
	}

	public void setSi(InUsers si) {
		this.si = si;
	}

	public String getPrid() {
		return prid;
	}

	public void setPrid(String prid) {
		this.prid = prid;
	}

	public List<BtenderVO> getBt() {
		return bt;
	}

	public void setBt(List<BtenderVO> bt) {
		this.bt = bt;
	}

	public String getNzym() {
		return nzym;
	}

	public void setNzym(String nzym) {
		this.nzym = nzym;
	}

	public Xsystemnews getEws() {
		return ews;
	}

	public void setEws(Xsystemnews ews) {
		this.ews = ews;
	}

	public String getNewsid() {
		return newsid;
	}

	public void setNewsid(String newsid) {
		this.newsid = newsid;
	}

	public PaginationSupport<Xsystemnews> getListnews() {
		return listnews;
	}

	public void setListnews(PaginationSupport<Xsystemnews> listnews) {
		this.listnews = listnews;
	}

	public int getNewsym() {
		return newsym;
	}

	public void setNewsym(int newsym) {
		this.newsym = newsym;
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

	public Partpate getPacy() {
		return pacy;
	}

	public void setPacy(Partpate pacy) {
		this.pacy = pacy;
	}

	public Partpate getMptes() {
		return mptes;
	}

	public void setMptes(Partpate mptes) {
		this.mptes = mptes;
	}

	public String getMenpid() {
		return menpid;
	}

	public void setMenpid(String menpid) {
		this.menpid = menpid;
	}

	public String getNspid() {
		return nspid;
	}

	public void setNspid(String nspid) {
		this.nspid = nspid;
	}

	public String getOdserid() {
		return odserid;
	}

	public void setOdserid(String odserid) {
		this.odserid = odserid;
	}

	public String getSuccessfulid() {
		return successfulid;
	}

	public void setSuccessfulid(String successfulid) {
		this.successfulid = successfulid;
	}

	public Partpate getPfu() {
		return pfu;
	}

	public void setPfu(Partpate pfu) {
		this.pfu = pfu;
	}

	public Partpate getPa() {
		return pa;
	}

	public void setPa(Partpate pa) {
		this.pa = pa;
	}

	public String getPrarid() {
		return prarid;
	}

	public void setPrarid(String prarid) {
		this.prarid = prarid;
	}

	public String getPids() {
		return pids;
	}

	public void setPids(String pids) {
		this.pids = pids;
	}

	public PaginationSupport<Partpate> getBinses() {
		return binses;
	}

	public void setBinses(PaginationSupport<Partpate> binses) {
		this.binses = binses;
	}

	public int getSesym() {
		return sesym;
	}

	public void setSesym(int sesym) {
		this.sesym = sesym;
	}

	public PaginationSupport<Partpate> getPidins() {
		return pidins;
	}

	public void setPidins(PaginationSupport<Partpate> pidins) {
		this.pidins = pidins;
	}

	public int getPdym() {
		return pdym;
	}

	public void setPdym(int pdym) {
		this.pdym = pdym;
	}

}

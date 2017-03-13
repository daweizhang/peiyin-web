package voice.com.isad.action;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import voice.com.biz.BtenderBiz;
import voice.com.biz.InUsersBiz;
import voice.com.biz.PartpateBiz;
import voice.com.email.MailTest;
import voice.com.pojo.Btender;
import voice.com.pojo.Complete;
import voice.com.pojo.InUsers;
import voice.com.pojo.Partpate;
import voice.com.pojo.Uzbztb;
import voice.com.util.PaginationSupport;

import com.opensymphony.xwork2.ActionSupport;

public class OrdershtaiAction extends ActionSupport {

	/**
	 * 订单操作Action
	 */
	private static final long serialVersionUID = 1L;

	private PartpateBiz partpateBiz;

	public void setPartpateBiz(PartpateBiz partpateBiz) {
		this.partpateBiz = partpateBiz;
	}

	private PaginationSupport<Partpate> poders;
	private String plsddh;// 临时订单号
	private String fkaccnt;// 付款账户名
	private String pageCurrent;// 页码
	private String pageSize;// 显示条数

	/**
	 * 待审核订单列表!
	 * 
	 * @return
	 * @throws Exception
	 */
	public String findOrdersPending() throws Exception {
		System.out.println("进入待审核订单列表!");
		Integer pageCurrents = 1;
		Integer pageSizes = 20;
		if (pageCurrent != null && !pageCurrent.equals("")) {
			pageCurrents = Integer.parseInt(pageCurrent);
		}
		if (pageSize != null && !pageSize.equals("")) {
			pageSizes = Integer.parseInt(pageSize);
		}

		poders = partpateBiz.findPendingOrders(plsddh, fkaccnt, pageSizes,
				pageCurrents);
		for (Partpate p : poders.getItems()) {
			System.out.println("----" + p.getPrwfemail());
		}
		return "OrdersPendings";
	}

	private String ptid;
	private Partpate Pate;
	private Map<String, String> oderzt;// 任务状态
	private Map<String, String> odsTi;// 时间范围
	private InUsers inuser;// 用户
	private InUsersBiz inUsersBiz;

	public void setInUsersBiz(InUsersBiz inUsersBiz) {
		this.inUsersBiz = inUsersBiz;
	}

	/**
	 * 任务订单审核
	 * 
	 * @return
	 */
	public String findOdersid() throws Exception {
		Map<String, String> maps = new HashMap<String, String>();
		maps.put("1", "未支付");
		maps.put("2", "已支付");
		oderzt = maps;

		Map<String, String> odsTime = new HashMap<String, String>();
		odsTime.put("12", "12");
		odsTime.put("24", "24");
		odsTime.put("36", "36");
		odsTime.put("48", "48");
		odsTime.put("72", "72");
		odsTime.put("144", "144");
		odsTi = odsTime;

		Pate = partpateBiz.findPartpate(ptid);
		List<InUsers> inu = inUsersBiz.findUsersc(Pate.getPusersId());
		inuser = inu.get(0);
		return "findOders";
	}

	public InUsers getInuser() {
		return inuser;
	}

	public void setInuser(InUsers inuser) {
		this.inuser = inuser;
	}

	private String jsoner;
	private Partpate ts;

	/**
	 * 任务订单审核更新
	 * 
	 * @return
	 */
	public String findupdateorder() throws Exception {

		System.out.println("进入更新页面");
		System.out.println("得到的ID为:" + ts.getPid());

		Partpate Pod = partpateBiz.findPartpate(ts.getPid());
		Uzbztb u = new Uzbztb();
		u.setUzbid("brafeacasd");
		Pod.setUzbztb(u);
		Pod.setPrwfphone(ts.getPrwfphone());
		Pod.setPrwfemail(ts.getPrwfemail());
		Pod.setPtimelimit(ts.getPtimelimit());
		Pod.setPzhifuzt(ts.getPzhifuzt());
		Pod.setPts(ts.getPts());
		Pod.setPrwfemail("100");// 100代表未提交作品200已提交
		Pod.setPts("0");// 是否联系配音员
		Pod.setPskzt("1");
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String skTime = dateFormat.format(c.getTime());
		Pod.setPfkTime(skTime);

		String odeid = "";
		String oid = "";
		for (int i = 0; i < ts.getPtemporaryid().length(); i++) {
			if (i % 2 != 0) {
				String order = ts.getPtemporaryid().substring(i, i + 1);
				oid = oid + order;
				String sj = new SimpleDateFormat("yyyyMMddHHmmssms")
						.format(new java.util.Date());
				odeid = oid + sj;
			}
		}
		int radomInt = new Random().nextInt(999999) + 100000;
		String OrderID = odeid.substring(odeid.length() - 6, odeid.length());
		String od = OrderID + String.valueOf(radomInt);
		String wer = odeid.substring(0, odeid.length() / 2);
		String zkdnl = wer
				+ new SimpleDateFormat("yyyyMMddHHmmss")
						.format(new java.util.Date()) + od;
		String lsknl = zkdnl.substring(8, zkdnl.length());
		String TemporaryID = "MD" + lsknl;
		// 正式订单号
		Pod.setPjbremail(TemporaryID);

		// 最终收款金额计算
		Double dbs = Double.valueOf(Pod.getPjbrphone());
		DecimalFormat df = new DecimalFormat("0.00");
		String money = df.format(dbs - (dbs * 0.15));
		Pod.setPthefinalfee(money);

		Complete cvd = new Complete();
		cvd.setCid("vbaseacsecesa6");
		Pod.setComplete(cvd);

		// 修改进度
		Btender f = btenderBiz.findbtender(Pod.getBtender().getBtid());
		f.setBrwjdjls("1234");
		btenderBiz.updaterw(f);

		jsoner = partpateBiz.updateOrder(Pod);
        
		//发送邮件通知配音员
		String mess = "您好!您参与竞标的“"+Pod.getBtender().getBtName()+"”该任务!现已竞标成功!请您立即登录我的主页>我的任务订单>查看订单详细,并在规定的时间之内完成配音!<br>复制我们的网址:www.chinesevoiceoverfreelancers.com";
		MailTest ma = new MailTest();
		ma.notification(Pod.getPuserId().getIemail(), mess);
		return "updateorder";
	}

	private PaginationSupport<Partpate> yfods;// 已付款
	private Map<String, String> lxztmap;// 联系状态
	private Map<String, String> tjztmap;// 作品提交状态
	private Map<String, String> dkzttmap;// 配音收款状态
	private String pids;
	private String pyuser;
	private String prwuser;
	private String sftz;
	private String tjzt;
	private String dkzt;

	/**
	 * 查询已付款的订单
	 * 
	 * @return
	 */
	public String findPaymenthasbeenOders() throws Exception {
		Integer pageCurrents = 1;
		Integer pageSizes = 20;
		if (pageCurrent != null && !pageCurrent.equals("")) {
			pageCurrents = Integer.parseInt(pageCurrent);
		}
		if (pageSize != null && !pageSize.equals("")) {
			pageSizes = Integer.parseInt(pageSize);
		}
		Map<String, String> lxm = new HashMap<String, String>();
		lxm.put("0", "未联系");
		lxm.put("1", "已联系");
		lxztmap = lxm;
		Map<String, String> tj = new HashMap<String, String>();
		tj.put("100", "未提交");
		tj.put("150", "已提交审核中");
		tj.put("200", "审核通过");
		tjztmap = tj;
		Map<String, String> dk = new HashMap<String, String>();
		dk.put("1", "未打款");
		dk.put("2", "已打款");
		dk.put("3", "对方收款失败");
		dkzttmap = dk;
		String ss = null;
		InUsers sd = null;
		if (pyuser != null && !"".equals(pyuser)) {
			List<InUsers> ur = inUsersBiz.findUsersc(pyuser);
			sd = ur.get(0);
			if (null != sd.getIid() && !"".equals(sd.getIid())) {
				ss = sd.getIid();
			}
		}
		yfods = partpateBiz.findAllpaid(pids, ss, prwuser, sftz, tjzt, dkzt,
				pageSizes, pageCurrents);

		return "hasbeenOders";
	}

	private String yfids;// 已付款的订单ID
	private Partpate pos;// 订单
	private InUsers us;// 任务方用户
	private String moneyt;// 总利润

	/**
	 * 审核已付款的订单
	 * 
	 * @return
	 */
	public String findyifukoders() throws Exception {
		System.out.println("进入订单审核----------" + yfids);
		Map<String, String> lxm = new HashMap<String, String>();
		lxm.put("0", "未联系");
		lxm.put("1", "已联系");
		lxztmap = lxm;
		Map<String, String> tj = new HashMap<String, String>();
		tj.put("100", "未提交");
		tj.put("150", "已提交审核中");
		tj.put("200", "审核通过");
		tjztmap = tj;
		Map<String, String> dk = new HashMap<String, String>();
		dk.put("1", "未打款");
		dk.put("2", "已打款");
		dk.put("3", "对方收款失败");
		dkzttmap = dk;
		pos = partpateBiz.findPartpate(yfids);

		Double dbsy = Double.valueOf(pos.getPtotalprice());
		Double sfgs = Double.valueOf(pos.getPthefinalfee());
		DecimalFormat df = new DecimalFormat("0.00");
		moneyt = df.format(dbsy - sfgs);

		List<InUsers> usd = inUsersBiz.findUsersc(pos.getPusersId());
		us = usd.get(0);
		return "auditoders";
	}

	private String sftg;// 成品是否通过
	private String sfdk;// 是否打款
	private String sflx;// 是否联系
	private String zuoid;// 订单ID

	private BtenderBiz btenderBiz;

	public void setBtenderBiz(BtenderBiz btenderBiz) {
		this.btenderBiz = btenderBiz;
	}

	/**
	 * 最终订单审核。。
	 * 
	 * @return
	 */
	public String fialsoders() throws Exception {
		System.out.println("sftg--" + sftg);
		System.out.println("sfdk--" + sfdk);
		System.out.println("sflx--" + sflx);
		System.out.println("zuoid--" + zuoid);
		// jsoner
		Partpate d = partpateBiz.findPartpate(zuoid);
		d.setPzhifuzt("3");
		d.setPrwfemail(sftg);
		d.setPts(sflx);
		d.setPskzt(sfdk);
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(new Date().getTime());
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String skTimes = dateFormat.format(c.getTime());
		d.setPckTime(skTimes);
		d.setPwcTime(skTimes);
		Complete cs = new Complete();
		cs.setCid("vbaseacsecesa6");
		d.setComplete(cs);
		// 第一:修改用户的信誉值
		// 配音员
		/*InUsers spy = inUsersBiz.findgetu(d.getPuserId().getIid());
		spy.setIcredibility(spy.getIcredibility() + 1);
		inUsersBiz.updateUser(spy);*/
		// 任务方
		List<InUsers> tlsn = inUsersBiz.findUsersc(d.getPusersId());
		if (tlsn.size() > 0) {
			InUsers srw = tlsn.get(0);
			srw.setIcredibility(srw.getIcredibility() + 1);
			inUsersBiz.updateUser(srw);
		}

		// 第二:修改任务状态
		Btender f = btenderBiz.findbtender(d.getBtender().getBtid());
		f.setBts("2");
		btenderBiz.updaterw(f);
		// 第三:修改进度状态
		// 修改进度
		Btender fs = btenderBiz.findbtender(d.getBtender().getBtid());
		fs.setBrwjdjls("12345");
		btenderBiz.updaterw(fs);
		// 第四:发邮件通知
		//配音员
		String mess = "您好!您参与竞标的“"+d.getBtender().getBtName()+"”该任务!提交的成品已通过审核,且已经付款到您账户!请您立即登录我的主页>已完成任务>查看订单详细!<br>复制我们的网址:www.chinesevoiceoverfreelancers.com";
		MailTest ma = new MailTest();
		ma.notification(d.getPuserId().getIemail(), mess);
		//任务方
		String messs = "您好!你的“"+d.getBtender().getBtName()+"”该任务已经完成配音!请登录我的主页>已完成任务>提取成品!<br>复制我们的网址:www.chinesevoiceoverfreelancers.com";
		String meeh="Hello! Your '"+d.getBtender().getBtName()+"' the task has been completed voice! Please log on my home page > finished task > extract finished!<br>Copy our URL:www.chinesevoiceoverfreelancers.com";
		MailTest mad = new MailTest();
		List<InUsers> sdln = inUsersBiz.findUsersc(d.getPusersId());
		if(d.getBtender().getBrwtype().equals("111")){
			mad.notification(sdln.get(0).getIemail(), meeh);
		}
        if(d.getBtender().getBrwtype().equals("222")){
        	mad.notification(sdln.get(0).getIemail(), messs);
		}
		jsoner = partpateBiz.updateOrder(d);

		return "fainloders";
	}

	public String getZuoid() {
		return zuoid;
	}

	public void setZuoid(String zuoid) {
		this.zuoid = zuoid;
	}

	public String getSftg() {
		return sftg;
	}

	public void setSftg(String sftg) {
		this.sftg = sftg;
	}

	public String getSfdk() {
		return sfdk;
	}

	public void setSfdk(String sfdk) {
		this.sfdk = sfdk;
	}

	public String getSflx() {
		return sflx;
	}

	public void setSflx(String sflx) {
		this.sflx = sflx;
	}

	public String getMoneyt() {
		return moneyt;
	}

	public void setMoneyt(String moneyt) {
		this.moneyt = moneyt;
	}

	public InUsers getUs() {
		return us;
	}

	public void setUs(InUsers us) {
		this.us = us;
	}

	public Partpate getPos() {
		return pos;
	}

	public void setPos(Partpate pos) {
		this.pos = pos;
	}

	public String getYfids() {
		return yfids;
	}

	public void setYfids(String yfids) {
		this.yfids = yfids;
	}

	public Map<String, String> getLxztmap() {
		return lxztmap;
	}

	public void setLxztmap(Map<String, String> lxztmap) {
		this.lxztmap = lxztmap;
	}

	public Map<String, String> getTjztmap() {
		return tjztmap;
	}

	public void setTjztmap(Map<String, String> tjztmap) {
		this.tjztmap = tjztmap;
	}

	public Map<String, String> getDkzttmap() {
		return dkzttmap;
	}

	public void setDkzttmap(Map<String, String> dkzttmap) {
		this.dkzttmap = dkzttmap;
	}

	public String getPids() {
		return pids;
	}

	public void setPids(String pids) {
		this.pids = pids;
	}

	public String getPyuser() {
		return pyuser;
	}

	public void setPyuser(String pyuser) {
		this.pyuser = pyuser;
	}

	public String getPrwuser() {
		return prwuser;
	}

	public void setPrwuser(String prwuser) {
		this.prwuser = prwuser;
	}

	public String getSftz() {
		return sftz;
	}

	public void setSftz(String sftz) {
		this.sftz = sftz;
	}

	public String getTjzt() {
		return tjzt;
	}

	public void setTjzt(String tjzt) {
		this.tjzt = tjzt;
	}

	public String getDkzt() {
		return dkzt;
	}

	public void setDkzt(String dkzt) {
		this.dkzt = dkzt;
	}

	public PaginationSupport<Partpate> getYfods() {
		return yfods;
	}

	public void setYfods(PaginationSupport<Partpate> yfods) {
		this.yfods = yfods;
	}

	public String getPlsddh() {
		return plsddh;
	}

	public void setPlsddh(String plsddh) {
		this.plsddh = plsddh;
	}

	public String getFkaccnt() {
		return fkaccnt;
	}

	public void setFkaccnt(String fkaccnt) {
		this.fkaccnt = fkaccnt;
	}

	public String getPageCurrent() {
		return pageCurrent;
	}

	public void setPageCurrent(String pageCurrent) {
		this.pageCurrent = pageCurrent;
	}

	public String getPageSize() {
		return pageSize;
	}

	public void setPageSize(String pageSize) {
		this.pageSize = pageSize;
	}

	public Map<String, String> getOdsTi() {
		return odsTi;
	}

	public void setOdsTi(Map<String, String> odsTi) {
		this.odsTi = odsTi;
	}

	public Partpate getTs() {
		return ts;
	}

	public void setTs(Partpate ts) {
		this.ts = ts;
	}

	public String getJsoner() {
		return jsoner;
	}

	public void setJsoner(String jsoner) {
		this.jsoner = jsoner;
	}

	public Map<String, String> getOderzt() {
		return oderzt;
	}

	public void setOderzt(Map<String, String> oderzt) {
		this.oderzt = oderzt;
	}

	public Partpate getPate() {
		return Pate;
	}

	public void setPate(Partpate pate) {
		Pate = pate;
	}

	public String getPtid() {
		return ptid;
	}

	public void setPtid(String ptid) {
		this.ptid = ptid;
	}

	public PaginationSupport<Partpate> getPoders() {
		return poders;
	}

	public void setPoders(PaginationSupport<Partpate> poders) {
		this.poders = poders;
	}

}

package voice.com.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import voice.com.biz.BtenderBiz;
import voice.com.biz.PartpateBiz;
import voice.com.pojo.Btender;
import voice.com.pojo.InUsers;
import voice.com.pojo.Partpate;
import voice.com.util.PaginationSupport;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrdersAction extends ActionSupport {

	/**
	 * 订单业务操作Action chen
	 */
	private static final long serialVersionUID = 1L;

	private String pid;// 订单ID
	private Partpate pats;// 竞标信息
	private PartpateBiz partpateBiz;

	public void setPartpateBiz(PartpateBiz partpateBiz) {
		this.partpateBiz = partpateBiz;
	}

	private Map<String, String> odsTi;// 时间范围

	public Map<String, String> getOdsTi() {
		return odsTi;
	}

	public void setOdsTi(Map<String, String> odsTi) {
		this.odsTi = odsTi;
	}

	private int dyema;// 待付款的页码

	/**
	 * 任务方确认竞标信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String orderConfirmation() throws Exception {
		System.out.println("得到的订单ID：" + pid);
		Map<String, String> odsTime = new HashMap<String, String>();
		odsTime.put("12", "12");
		odsTime.put("24", "24");
		odsTime.put("36", "36");
		odsTime.put("48", "48");
		odsTime.put("72", "72");
		odsTime.put("144", "144");
		odsTi = odsTime;
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null || pid == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			List<Partpate> pst = partpateBiz.findOrder(pid,
					iusers.getIuserName());
			pats = pst.get(0);
		} else {
			return "error";
		}
		return "orderConfirmations";
	}

	public int getDyema() {
		return dyema;
	}

	public void setDyema(int dyema) {
		this.dyema = dyema;
	}

	private Partpate te;// 竞标信息
	private BtenderBiz btenderBiz;

	public void setBtenderBiz(BtenderBiz btenderBiz) {
		this.btenderBiz = btenderBiz;
	}

	private String uupid;// 订单ID

	/**
	 * 付款操作
	 */
	public String paymentoperation() throws Exception {
		System.out.println("-----------" + uupid);
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			if (uupid == null) {
				if (te.getPid() == null) {
					return "error";
				}
				List<Partpate> pst = partpateBiz.findOrder(te.getPid(),
						iusers.getIuserName());
				Partpate dv = pst.get(0);
				dv.setPtimelimit(te.getPtimelimit());
				dv.setPtotalprice(te.getPtotalprice());
				dv.setPaycount(te.getPaycount());
				String odeid = "";
				String oid = "";
				for (int i = 0; i < te.getPid().length(); i++) {
					if (i % 2 != 0) {
						String order = te.getPid().substring(i, i + 1);
						oid = oid + order;
						String sj = new SimpleDateFormat("yyyyMMddHHmmssms")
								.format(new java.util.Date());
						odeid = oid + sj;
					}
				}
				int radomInt = new Random().nextInt(999999) + 100000;
				String OrderID = odeid.substring(odeid.length() - 6,
						odeid.length());
				String od = OrderID + String.valueOf(radomInt);
				String wer = odeid.substring(0, odeid.length() / 2);
				String zkdnl = wer
						+ new SimpleDateFormat("yyyyMMddHHmmss")
								.format(new java.util.Date()) + od;
				String lsknl = zkdnl.substring(8, zkdnl.length());
				String TemporaryID = "MD" + lsknl;
				// 临时订单ID
				System.out.println("临时ID为:" + TemporaryID);
				dv.setPtemporaryid(TemporaryID);
				Calendar c = Calendar.getInstance();
				c.setTimeInMillis(new Date().getTime());
				SimpleDateFormat dateFormat = new SimpleDateFormat(
						"yyyy-MM-dd HH:mm:ss");
				String shijian = dateFormat.format(c.getTime());
				dv.setPfqTime(shijian);
				dv.setPzhifuzt("1");

				List<Btender> listb = btenderBiz.findbtens(dv.getBtender()
						.getBtid(), iusers.getIuserName());
				System.out.println("listb.size()：" + listb.size());
				if (listb.size() > 0) {
					Btender bte = listb.get(0);
					bte.setBts("1");
					bte.setBrwjdjls("123");
					String ers = btenderBiz.updaterw(bte);
					if ("0".equals(ers)) {
						return "error";
					}
				} else {
					return "error";
				}
				String er = partpateBiz.updatepartpate(dv);
				if ("0".equals(er)) {
					return "error";
				}
				List<Partpate> pstoder = partpateBiz.findOrder(te.getPid(),
						iusers.getIuserName());
				pats = pstoder.get(0);
				return "paymentoperations";
			} else {
				if (uupid == null) {
					return "error";
				}
				List<Partpate> pstoder = partpateBiz.findOrder(uupid,
						iusers.getIuserName());
				pats = pstoder.get(0);
				return "paymentoperations";
			}

		} else {
			return "error";
		}
	}

	private String zfid;// 支付状态ID
	private String psid2;// 订单ID

	/**
	 * ajax根据交易表ID查询任务方付款状态
	 * 
	 * @return
	 */
	public String findPaymentstatus() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null || psid2 == null) {
			return "error";
		}
		zfid = "1";
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			List<Partpate> pstoder = partpateBiz.findOrder(psid2,
					iusers.getIuserName());
			Partpate patsdd = pstoder.get(0);
			if (patsdd == null) {
				return "error";
			}
			zfid = patsdd.getPzhifuzt();
			return "Paymentstatus";
		} else {
			return "error";
		}
	}

	private PaginationSupport<Partpate> pods;
	private int djypt;// 第几页

	/**
	 * 已发起未支付的订单
	 * 
	 * @return
	 */
	public String unpaid() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			if (djypt == 0) {
				djypt = 1;
				pods = partpateBiz.findunpaid(iusers.getIuserName(), "1", 12,
						djypt);
			} else {
				pods = partpateBiz.findunpaid(iusers.getIuserName(), "1", 12,
						djypt);
			}

		}
		return "unpaidptedns";
	}

	/**
	 * 后台支付成功后页面自动跳转到成功页面 (重点业务操作)
	 * 
	 * @return
	 */
	public String paymentsuccessful() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}
		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			return "paymentsuccess";
		} else {
			return "error";
		}
	}

	private PaginationSupport<Partpate> podsu;
	private int djyptu;// 第几页

	/**
	 * 进入任务方订单页面
	 * 
	 * @return
	 */
	public String Jumptaskorder() throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			return "error";
		}

		if (iusers.getDtype().getDid().equals("gseaeffasdasc")) {
			System.out.println("进入我的任务订单页面!");
			if (djyptu == 0) {
				djyptu = 1;
				podsu = partpateBiz.findunpaid(iusers.getIuserName(), "2", 12,
						djyptu);
			} else {
				podsu = partpateBiz.findunpaid(iusers.getIuserName(), "2", 12,
						djyptu);
			}
			return "Jumptaskorders";
		} else {
			return "error";
		}
	}

	public PaginationSupport<Partpate> getPodsu() {
		return podsu;
	}

	public void setPodsu(PaginationSupport<Partpate> podsu) {
		this.podsu = podsu;
	}

	public int getDjyptu() {
		return djyptu;
	}

	public void setDjyptu(int djyptu) {
		this.djyptu = djyptu;
	}

	public String getUupid() {
		return uupid;
	}

	public void setUupid(String uupid) {
		this.uupid = uupid;
	}

	public int getDjypt() {
		return djypt;
	}

	public void setDjypt(int djypt) {
		this.djypt = djypt;
	}

	public PaginationSupport<Partpate> getPods() {
		return pods;
	}

	public void setPods(PaginationSupport<Partpate> pods) {
		this.pods = pods;
	}

	public String getPsid2() {
		return psid2;
	}

	public void setPsid2(String psid2) {
		this.psid2 = psid2;
	}

	public Partpate getTe() {
		return te;
	}

	public void setTe(Partpate te) {
		this.te = te;
	}

	public Partpate getPats() {
		return pats;
	}

	public void setPats(Partpate pats) {
		this.pats = pats;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getZfid() {
		return zfid;
	}

	public void setZfid(String zfid) {
		this.zfid = zfid;
	}

}

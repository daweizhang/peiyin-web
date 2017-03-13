package voice.com.isad.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import voice.com.biz.AisadminBiz;
import voice.com.biz.InUsersBiz;
import voice.com.biz.MessgeBiz;
import voice.com.pojo.Aisadmin;
import voice.com.pojo.InUsers;
import voice.com.pojo.Messge;
import voice.com.util.PaginationSupport;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MessgeAction extends ActionSupport {

	/**
	 * 消息Action
	 */
	private static final long serialVersionUID = 1L;


	
	
	
	
	
	
	
	
	private MessgeBiz messgeBiz;

	public void setMessgeBiz(MessgeBiz messgeBiz) {
		this.messgeBiz = messgeBiz;
	}

	private PaginationSupport<Messge> pms;
	private String khuser;
	private String gjzName;
	private String pageCurrent;
	private String pageSize;
	
	/**
	 * 进入消息列表
	 */
	public String finmessgelist()throws Exception{
		Integer pageCurrents = 1;
		Integer pageSizes = 20;
		if (pageCurrent != null && !pageCurrent.equals("")) {
			pageCurrents = Integer.parseInt(pageCurrent);
		}
		if (pageSize != null && !pageSize.equals("")) {
			pageSizes = Integer.parseInt(pageSize);
		}
		pms=messgeBiz.findmessgeht(khuser,gjzName,pageSizes,pageCurrents);	
		
		return "messgelist";
	}
	
	
	
	
	
	public String getKhuser() {
		return khuser;
	}





	public void setKhuser(String khuser) {
		this.khuser = khuser;
	}





	public String getGjzName() {
		return gjzName;
	}





	public void setGjzName(String gjzName) {
		this.gjzName = gjzName;
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





	public PaginationSupport<Messge> getPms() {
		return pms;
	}

	public void setPms(PaginationSupport<Messge> pms) {
		this.pms = pms;
	}

	private AisadminBiz aisadminBiz;
	private Aisadmin ads;
	private PaginationSupport<Messge> msd;
	// 注入用Biz
	private InUsersBiz inUsersBiz;

	public void setInUsersBiz(InUsersBiz inUsersBiz) {
		this.inUsersBiz = inUsersBiz;
	}

	/**
	 * 进入聊天室
	 * 
	 * @return
	 * @throws Exception
	 */
	public String sendmessages() throws Exception {
		Aisadmin as = (Aisadmin) (ActionContext.getContext().getSession()
				.get("adminInfo"));
		if (as != null) {
			System.out.println("我的用户名为：" + as.getAisadmName());
			ads = aisadminBiz.getAisadminbyId(as.getAid());

			msd = messgeBiz.gourpbymessgeuser(as.getAisadmName(), "200", 1000,
					1);

			return "sendmessags";
		}
		return "error";
	}

	private PaginationSupport<Messge> mscn;
	private String mesusers;

	// private
	/**
	 * 点击用户查看消息
	 * 
	 * @return
	 */
	public String findmessgeslist() throws Exception {
		// 点击之前修改点击事件记录数
		List<Messge> jsd = messgeBiz.updateclikeuser(201);
		if (jsd.size() > 0) {
			jsd.get(0).setMclick(0);
			messgeBiz.updatemessuser(jsd.get(0));
		}

		// 第一步修改记录者的记录数
		List<Messge> jlz = messgeBiz.findjiluser(mesusers, "200");
		if (jlz.size() > 0) {
			jlz.get(0).setMcount(0);
			jlz.get(0).setMclick(201);
			messgeBiz.updatemessuser(jlz.get(0));
		}
		// 第二步查询消息
		// 先查出总也数
		PaginationSupport<Messge> mbs = messgeBiz.findmessge(mesusers, "1", 20,
				1);
		if (mbs.getTotalPageCount() == 1) {
			mscn = messgeBiz.findmessge(mesusers, "1", 20, 1);
		} else {
			mscn = messgeBiz.findmessge(mesusers, "1", 20,
					mbs.getTotalPageCount());
		}
		return "findmesslist";
	}

	private PaginationSupport<Messge> mdts;// 回去的消息
	private String newscom;// 消息
	private String userNames;// 用户
	private int usyema;// 页码

	/**
	 * 客服发送消息
	 * 
	 * @return
	 */
	public String customerservice() throws Exception {
		System.out.println("客服发送消息");
		System.out.println(newscom);
		System.out.println(userNames);
		System.out.println(usyema);
		if (newscom != null) {
			//newscom =new String(newscom.getBytes("iso8859-1"), "utf-8");
			InUsers i = null;
			String unsersY = userNames.substring(0, 1);
			if (!"Y".equals(unsersY)) {
				List<InUsers> liu = inUsersBiz.findUsersc(userNames);
				i = liu.get(0);
			}
			Messge m = new Messge();
			if (!"Y".equals(unsersY)) {
				m.setMrole(i.getDtype().getDtypeName());
			} else {
				m.setMrole(userNames);
			}
			if (!"Y".equals(unsersY)) {
				m.setMessagesender(i.getIuserName());
			} else {
				m.setMessagesender(userNames);
			}
			m.setMessagereceiver("admincom");
			m.setMwhethertoview("333");
			Calendar c = Calendar.getInstance();
			c.setTimeInMillis(new Date().getTime());
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String massgeTime = dateFormat.format(c.getTime());
			m.setMdatesent(massgeTime);
			m.setMessagecontent(newscom);
			m.setMwhetherdisplay("1");
			m.setMspareyi("2");// 判断消息框的显示条件
			if (!"Y".equals(unsersY)) {
				m.setMspareer("upload/" + i.getIportrait());
			} else {
				m.setMspareer("images/touxd.png");
			}
			String er = messgeBiz.sendmessage(m);
			if ("222".equals(er)) {
				if (usyema == 0) {
					usyema = 1;
					PaginationSupport<Messge> mb = messgeBiz.findmessge(
							userNames, "1", 20, usyema);
					System.out.println("yema--------" + mb.getTotalPageCount());
					if (mb.getTotalPageCount() == 1) {
						mdts = messgeBiz.findmessge(userNames, "1", 20, usyema);
					} else {
						System.out.println("dddddd");
						mdts = messgeBiz.findmessge(userNames, "1", 20,
								mb.getTotalPageCount());
						List<Messge> mddg = mdts.getItems();
						for (Messge me : mddg) {
							System.out.println(me.getMessagecontent());
						}
					}
				} else {
					System.out.println("我在执行");
					mdts = messgeBiz.findmessge(userNames, "1", 20, usyema);
				}
			} else {
				return "error";
			}
		} else {
			if (usyema == 0) {
				usyema = 1;
				PaginationSupport<Messge> mb = messgeBiz.findmessge(userNames,
						"1", 20, usyema);
				System.out.println("yema--------" + mb.getTotalPageCount());
				if (mb.getTotalPageCount() == 1) {
					mdts = messgeBiz.findmessge(userNames, "1", 20, usyema);
				} else {
					System.out.println("dddddd");
					mdts = messgeBiz.findmessge(userNames, "1", 20,
							mb.getTotalPageCount());
					List<Messge> mddg = mdts.getItems();
					for (Messge me : mddg) {
						System.out.println(me.getMessagecontent());
					}
				}
			} else {
				System.out.println("我在执行");
				mdts = messgeBiz.findmessge(userNames, "1", 20, usyema);
			}
		}
		return "cunctomrmess";
	}

	private int count;// 记录数返回值

	/**
	 * ajax动态查询显示中的消息的count
	 * 
	 * @return
	 */
	public String fingxszcount() throws Exception {

		Aisadmin as = (Aisadmin) (ActionContext.getContext().getSession()
				.get("adminInfo"));
		if (as != null) {
			count = messgeBiz.findxscont("1");
			return "newxszcounts";
		}
		return "error";
	}

	private PaginationSupport<Messge> tpsd;

	/**
	 * ajax动态查询发消息的用户
	 * 
	 * @return
	 */
	public String ajaxloadnews() throws Exception {

		Aisadmin as = (Aisadmin) (ActionContext.getContext().getSession()
				.get("adminInfo"));
		if (as != null) {

			tpsd = messgeBiz.gourpbymessgeuser(as.getAisadmName(), "200", 1000,
					1);

			return "ajaxnewsusers";
		}
		return "error";

	}

	private int clikcount;// 用户消息的记录数

	/**
	 * 动态查询当前被点击的用户(201)
	 * 
	 * @return
	 */
	public String clikeusernews() throws Exception {
		Aisadmin as = (Aisadmin) (ActionContext.getContext().getSession()
				.get("adminInfo"));
		if (as != null) {
			List<Messge> jsd = messgeBiz.updateclikeuser(201);
			
			if (jsd.size() > 0) {
				List<Messge> jlz = messgeBiz.findjiluser(jsd.get(0).getMessagesender(), "200");
				if (jlz.size() > 0) {
					jlz.get(0).setMcount(0);
					//jlz.get(0).setMclick(201);
					messgeBiz.updatemessuser(jlz.get(0));
				}
				clikcount = messgeBiz.kefumessgecont("admincom", jsd.get(0)
						.getMessagesender(), "1");
            
			}
			return "clikenewslist";

		}
		return "error";

	}
	
	
	
	private String umesName;//要删除的账户
	
	public String getUmesName() {
		return umesName;
	}





	public void setUmesName(String umesName) {
		this.umesName = umesName;
	}





	/**
	 * 点击删除聊天的用户
	 * @return
	 */
	public String deletmeges()throws Exception{
		Aisadmin as = (Aisadmin) (ActionContext.getContext().getSession()
				.get("adminInfo"));
		if (as != null) {
			List<Messge> m=messgeBiz.findmes(umesName);
			if(m.size()>0){
				for (int i = 0; i < m.size(); i++) {
					messgeBiz.delemegausers(m.get(i));
				}
			}
			return "deleamges";
		}
		return "error";
	}
	
	

	public int getClikcount() {
		return clikcount;
	}

	public void setClikcount(int clikcount) {
		this.clikcount = clikcount;
	}

	public PaginationSupport<Messge> getTpsd() {
		return tpsd;
	}

	public void setTpsd(PaginationSupport<Messge> tpsd) {
		this.tpsd = tpsd;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public PaginationSupport<Messge> getMdts() {
		return mdts;
	}

	public void setMdts(PaginationSupport<Messge> mdts) {
		this.mdts = mdts;
	}

	public String getNewscom() {
		return newscom;
	}

	public void setNewscom(String newscom) {
		this.newscom = newscom;
	}

	public String getUserNames() {
		return userNames;
	}

	public void setUserNames(String userNames) {
		this.userNames = userNames;
	}

	public int getUsyema() {
		return usyema;
	}

	public void setUsyema(int usyema) {
		this.usyema = usyema;
	}

	public String getMesusers() {
		return mesusers;
	}

	public void setMesusers(String mesusers) {
		this.mesusers = mesusers;
	}

	public PaginationSupport<Messge> getMscn() {
		return mscn;
	}

	public void setMscn(PaginationSupport<Messge> mscn) {
		this.mscn = mscn;
	}

	public PaginationSupport<Messge> getMsd() {
		return msd;
	}

	public void setMsd(PaginationSupport<Messge> msd) {
		this.msd = msd;
	}

	public void setAisadminBiz(AisadminBiz aisadminBiz) {
		this.aisadminBiz = aisadminBiz;
	}

	public Aisadmin getAds() {
		return ads;
	}

	public void setAds(Aisadmin ads) {
		this.ads = ads;
	}

}

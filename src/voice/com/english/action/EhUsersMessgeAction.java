package voice.com.english.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import voice.com.biz.InUsersBiz;
import voice.com.biz.MessgeBiz;
import voice.com.pojo.InUsers;
import voice.com.pojo.Messge;
import voice.com.util.PaginationSupport;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EhUsersMessgeAction extends ActionSupport {

	/**
	 * 用户聊天action
	 */
	private static final long serialVersionUID = 1L;
	private MessgeBiz messgeBiz;
	// 注入用Biz
	private InUsersBiz inUsersBiz;
	// 定义用户
	private InUsers ins;
	private String username;

	public void setMessgeBiz(MessgeBiz messgeBiz) {
		this.messgeBiz = messgeBiz;
	}

	/**
	 * 进入聊天
	 * 
	 * @return
	 * @throws Exception
	 */
	public String enterchatEh()throws Exception {
		InUsers iusers = (InUsers) (ActionContext.getContext().getSession()
				.get("users"));
		if (iusers == null) {
			String yku = (String) ActionContext.getContext().getSession()
					.get("ykusr");
			if (yku == null) {
				for (int i = 0; i < 50; i++) {
					int radomInts = new Random().nextInt(9999999) + 1000000;
					String pyy = String.valueOf(radomInts);
					String pyyID = "Y" + pyy.substring(0, 6);
					List<Messge> lsu = messgeBiz.findmes(pyyID);
					if (lsu.size() == 0) {
						username = pyyID;
						ActionContext.getContext().getSession()
								.put("ykusr", pyyID);
						break;
					}
				}
			} else {
				username = yku;
			}
		}
		return "enterchats";
	}

	private Messge messge;
	private PaginationSupport<Messge> ms;
	private String usernews;// 用户消息
	private String userName;// 用户名
	private int ymas;// 页码
	private int pds = 0;
	private int newscont;// 客服消息记录数

	/**
	 * 用户发送消息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String usersendmessagesEh()throws Exception {
		System.out.println("用户消息:" + usernews);
		System.out.println("用户名:" + userName);
		System.out.println("页码:" + ymas);
		if (usernews != null) {
			InUsers i = null;
			String unsersY = userName.substring(0, 1);
			if (!"Y".equals(unsersY)) {
				List<InUsers> liu = inUsersBiz.findUsersc(userName);
				i = liu.get(0);
			}
			Messge m = new Messge();
			if (!"Y".equals(unsersY)) {
				m.setMrole(i.getDtype().getDtypeName());
			} else {
				m.setMrole(userName);
			}
			if (!"Y".equals(unsersY)) {
				m.setMessagesender(i.getIuserName());
			} else {
				m.setMessagesender(userName);
			}
			m.setMessagereceiver("admincom");
			m.setMwhethertoview("333");
			Calendar c = Calendar.getInstance();
			c.setTimeInMillis(new Date().getTime());
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String massgeTime = dateFormat.format(c.getTime());
			m.setMdatesent(massgeTime);
			m.setMessagecontent(usernews);
			m.setMwhetherdisplay("1");
			m.setMspareyi("1");// 判断消息框的显示条件
			if (!"Y".equals(unsersY)) {
				m.setMspareer("upload/" + i.getIportrait());
			} else {
				m.setMspareer("images/touxd.png");
			}
			if (pds == 0) {
				List<Messge> lsut = messgeBiz.findmes(userName);
				if (lsut.size() == 0) {
					m.setMsparesan("200");
					m.setMcount(1);
				}
				pds = 1;
			}
			List<Messge> jlz = messgeBiz.findjiluser(userName, "200");
			if (jlz.size() > 0) {
				jlz.get(0).setMcount(jlz.get(0).getMcount() + 1);
				jlz.get(0).setMcwTime(massgeTime);//修改记录的最新时间
				messgeBiz.updatemessuser(jlz.get(0));
			}
			String er = messgeBiz.sendmessage(m);
			if ("222".equals(er)) {
				if (ymas == 0) {
					ymas = 1;
					PaginationSupport<Messge> mb = messgeBiz.findmessge(
							userName, "1", 20, ymas);
					System.out.println("yema--------" + mb.getTotalPageCount());
					if (mb.getTotalPageCount() == 1) {
						ms = messgeBiz.findmessge(userName, "1", 20, ymas);
					} else {
						ms = messgeBiz.findmessge(userName, "1", 20,
								mb.getTotalPageCount());
					}
				} else {
					ms = messgeBiz.findmessge(userName, "1", 20, ymas);
				}
				newscont = messgeBiz.kefumessgecont("admincom", userName, "2");
				System.out.println("newscont:" + newscont);
			} else {
				return "error";
			}
		} else {
			if (ymas == 0) {
				ymas = 1;

				PaginationSupport<Messge> mb = messgeBiz.findmessge(userName,
						"1", 20, ymas);
				System.out.println("yema--------" + mb.getTotalPageCount());
				if (mb.getTotalPageCount() == 1) {
					ms = messgeBiz.findmessge(userName, "1", 20, ymas);
				} else {
					ms = messgeBiz.findmessge(userName, "1", 20,
							mb.getTotalPageCount());
				}
			} else {
				ms = messgeBiz.findmessge(userName, "1", 20, ymas);
			}
			newscont = messgeBiz.kefumessgecont("admincom", userName, "2");
			System.out.println("newscont:" + newscont);
		}
		return "usersendmessags";
	}

	private int conts;// 记录数传送
	private String usercoms;

	/**
	 * ajax动态查询
	 * 
	 * @return
	 */
	public String ajaxnewsddEh()throws Exception {
		System.out.println("usercoms:" + usercoms);
		String yku = (String) ActionContext.getContext().getSession()
				.get("ykusr");
		if (yku == null) {
			return "error";
		}
		conts = messgeBiz.kefumessgecont("admincom", usercoms, "2");
		return "ajaxnewsadm";
	}

	public String getUsercoms() {
		return usercoms;
	}

	public void setUsercoms(String usercoms) {
		this.usercoms = usercoms;
	}

	public int getConts() {
		return conts;
	}

	public void setConts(int conts) {
		this.conts = conts;
	}

	public int getNewscont() {
		return newscont;
	}

	public void setNewscont(int newscont) {
		this.newscont = newscont;
	}

	public int getYmas() {
		return ymas;
	}

	public void setYmas(int ymas) {
		this.ymas = ymas;
	}

	public PaginationSupport<Messge> getMs() {
		return ms;
	}

	public void setMs(PaginationSupport<Messge> ms) {
		this.ms = ms;
	}

	public String getUsernews() {
		return usernews;
	}

	public void setUsernews(String usernews) {
		this.usernews = usernews;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public InUsers getIns() {
		return ins;
	}

	public void setIns(InUsers ins) {
		this.ins = ins;
	}

	public void setInUsersBiz(InUsersBiz inUsersBiz) {
		this.inUsersBiz = inUsersBiz;
	}

	public Messge getMessge() {
		return messge;
	}

	public void setMessge(Messge messge) {
		this.messge = messge;
	}

}

package voice.com.isad.action;

import voice.com.biz.InUsersBiz;
import voice.com.pojo.InUsers;
import voice.com.util.PaginationSupport;

import com.opensymphony.xwork2.ActionSupport;

public class BmUserAction extends ActionSupport{

	/**
	 * Background management
	 * 后台管理
	 * 用户列表Action
	 */
	private static final long serialVersionUID = 1L;
	
	private InUsersBiz inUsersBiz;//查看所有的用户
	private PaginationSupport<InUsers> inus;
	
	
	public void setInUsersBiz(InUsersBiz inUsersBiz) {
		this.inUsersBiz = inUsersBiz;
	}
   
	private String uids;
	private String unames;
	private String pageCurrent;
	private String pageSize;


	public String inUserlist() throws Exception{
		Integer pageCurrents = 1;
		Integer pageSizes = 20;
		if (pageCurrent != null && !pageCurrent.equals("")) {
			pageCurrents = Integer.parseInt(pageCurrent);
		}
		if (pageSize != null && !pageSize.equals("")) {
			pageSizes = Integer.parseInt(pageSize);
		}
		inus=inUsersBiz.findinUsersdate(pageSizes, pageCurrents, uids, unames);
		
		return "inusers";
	}
	
	
	private String iidu;
	private InUsers is; 
	/**
	 * 根据ID查询用户资料
	 * @return
	 */
	public String finduserids()throws Exception{
		System.out.println("---iNuser"+iidu);
		is=inUsersBiz.findgetu(iidu);
		if(is.getDtype().getDid().equals("berwartaedfeee")){
			return "Inuserupdas";
		}
		if(is.getDtype().getDid().equals("gseaeffasdasc")){
			return "Inuserupdasrwf";
		}
		return "error";
	}

	
	
	
	public InUsers getIs() {
		return is;
	}




	public void setIs(InUsers is) {
		this.is = is;
	}




	public String getIidu() {
		return iidu;
	}

	public void setIidu(String iidu) {
		this.iidu = iidu;
	}

	public PaginationSupport<InUsers> getInus() {
		return inus;
	}
	public void setInus(PaginationSupport<InUsers> inus) {
		this.inus = inus;
	}

	public String getUids() {
		return uids;
	}

	public void setUids(String uids) {
		this.uids = uids;
	}

	public String getUnames() {
		return unames;
	}

	public void setUnames(String unames) {
		this.unames = unames;
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
	
}

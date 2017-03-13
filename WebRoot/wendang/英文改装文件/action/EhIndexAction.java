package voice.com.action;


import java.util.ArrayList;
import java.util.List;

import voice.com.biz.LgtypeBiz;
import voice.com.biz.ScrowdBiz;
import voice.com.biz.TvoiceBiz;
import voice.com.pojo.Lgtype;
import voice.com.pojo.Scrowd;
import voice.com.pojo.Tvoice;
import voice.com.translation.Translation;

import com.opensymphony.xwork2.ActionSupport;


public class EhIndexAction extends ActionSupport{

	/**
	 * index入口类
	 */
	private static final long serialVersionUID = 1L;
	private LgtypeBiz lgtypeBiz;
	private ScrowdBiz scrowdBiz;
	private TvoiceBiz tvoiceBiz;
	private Translation c=new Translation();
	public void setLgtypeBiz(LgtypeBiz lgtypeBiz) {
		this.lgtypeBiz = lgtypeBiz;
	}
	public void setScrowdBiz(ScrowdBiz scrowdBiz) {
		this.scrowdBiz = scrowdBiz;
	}
	public void setTvoiceBiz(TvoiceBiz tvoiceBiz) {
		this.tvoiceBiz = tvoiceBiz;
	}

	
	
	List<Lgtype> listlgp;
	List<Scrowd> listsrd;
	List<Tvoice> listTvoc;
	List<Object> knd;
	List<Object> srd;
	List<Object> voc;
	
	
	
	public List<Object> getSrd() {
		return srd;
	}
	public void setSrd(List<Object> srd) {
		this.srd = srd;
	}
	public List<Object> getVoc() {
		return voc;
	}
	public void setVoc(List<Object> voc) {
		this.voc = voc;
	}
	public List<Object> getKnd() {
		return knd;
	}
	public void setKnd(List<Object> knd) {
		this.knd = knd;
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
	/**
	 * 查询主页的三个类型信息(中文)
	 */
	public String IndexfindEh()throws Exception {
        try {
        	listlgp=lgtypeBiz.findLgtype();
			listsrd=scrowdBiz.findScrowd();
			listTvoc=tvoiceBiz.findtvoice();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "indexs";
	}
	/**
	 * 跳转排行榜
	 */
	public String rankinglistsEh()throws Exception{
		
		
		
		
		return "rankinglist";
	}
	
	
	/**
	 * 跳转找回密码
	 */
	public String RetrievepasswordEh()throws Exception{
		
		
		return "Retrievepass";
	}
	/**
	 * 跳转登录页面
	 */
	public String loginconEh()throws Exception{
		
		
		
		return "logincons";
	}
	
	
	/**
	 * 跳转交易流程
	 */
	public String jumpjylcEh()throws Exception{
		
		
		return "jumpjylcs";
	}
	/**
	 * 跳转费用与付款
	 */
	public String jumpfyfkEh()throws Exception{
		
		
		return "jumpfyfks";
	}
	/**
	 * 跳转常见问题
	 */
	public String jumpcjwtEh()throws Exception{
		
		
		return "jumpcjwts";
	}
	/**
	 * 跳转投诉与建议
	 */
	public String jumptsjyEh()throws Exception{
		
		
		return "jumptsjys";
	}
	/**
	 * 跳转关于我们
	 */
	public String jumpgywmEh()throws Exception{
		
		
		return "jumpgywms";
	}
	
	
	
	/**
	 * 查询主页的三个类型信息(英文)
	 */
	public String IndexfcEglEh()throws Exception {
		System.out.println("-----indexss");
        try {
        	
        	listlgp=lgtypeBiz.findLgtype();
        	
		    
		   listsrd=scrowdBiz.findScrowd();
		   
		    
		   listTvoc=tvoiceBiz.findtvoice();
		   
		    
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "indexgs";
	}
	
	
}

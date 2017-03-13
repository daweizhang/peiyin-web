package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="if_ehuser")
public class IfehUsers implements Serializable{

	/**
	 * 用户英文字段
	 */
	private static final long serialVersionUID = 1L;
	private String ifehid;  //ID
	private String ifehsex; //性别
	private String ifdiqu;  //地区
	private String ifehlytype;//语言类型
	private String ifehpytype;//配音类型
	private String ifehsytype;//声音类型
	private String ifgznf;//工作年限
	private String ififts;//备注字段(用户名)
	public IfehUsers() {

	}
	public IfehUsers(String ifehid, String ifehsex, String ifdiqu,
			String ifehlytype, String ifehpytype, String ifehsytype,
			String ifgznf, String ififts) {
		this.ifehid = ifehid;
		this.ifehsex = ifehsex;
		this.ifdiqu = ifdiqu;
		this.ifehlytype = ifehlytype;
		this.ifehpytype = ifehpytype;
		this.ifehsytype = ifehsytype;
		this.ifgznf = ifgznf;
		this.ififts = ififts;
	}
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="if_ehid")
	public String getIfehid() {
		return ifehid;
	}
	public void setIfehid(String ifehid) {
		this.ifehid = ifehid;
	}
	
	@Column(name="if_ehsex",length=40)
	public String getIfehsex() {
		return ifehsex;
	}
	public void setIfehsex(String ifehsex) {
		this.ifehsex = ifehsex;
	}
	@Column(name="if_diqu",length=50)
	public String getIfdiqu() {
		return ifdiqu;
	}
	public void setIfdiqu(String ifdiqu) {
		this.ifdiqu = ifdiqu;
	}
	@Column(name="if_ehlytype",length=400)
	public String getIfehlytype() {
		return ifehlytype;
	}
	public void setIfehlytype(String ifehlytype) {
		this.ifehlytype = ifehlytype;
	}
	@Column(name="if_ehpytype",length=400)
	public String getIfehpytype() {
		return ifehpytype;
	}
	public void setIfehpytype(String ifehpytype) {
		this.ifehpytype = ifehpytype;
	}
	@Column(name="if_ehsytype",length=400)
	public String getIfehsytype() {
		return ifehsytype;
	}
	public void setIfehsytype(String ifehsytype) {
		this.ifehsytype = ifehsytype;
	}
	@Column(name="if_gznf",length=50)
	public String getIfgznf() {
		return ifgznf;
	}
	public void setIfgznf(String ifgznf) {
		this.ifgznf = ifgznf;
	}
	@Column(name="if_ifts",length=50)
	public String getIfifts() {
		return ififts;
	}
	public void setIfifts(String ififts) {
		this.ififts = ififts;
	}
    

}

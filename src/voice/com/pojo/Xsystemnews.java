package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="X_systemnews")
public class Xsystemnews implements Serializable{
	
	/**
	 *消息实体类
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String xid;
	private String xrecipientUser;//发件人
	private String xfromUser;//收件人
	private String xthemessagetitle;//消息标题
	private String xmessagecontent;//消息内容
	private String xsendtime;//发送时间
	private String xfilecontent;//发送的文件
	private String xmessagestatus;//消息状态(200未查看 333已查看)
	private String xts;//备用字段
	
	public Xsystemnews() {
	}
	
	public Xsystemnews(String xid, String xrecipientUser, String xfromUser,
			String xthemessagetitle, String xmessagecontent, String xsendtime,
			String xfilecontent, String xmessagestatus, String xts) {
		this.xid = xid;
		this.xrecipientUser = xrecipientUser;
		this.xfromUser = xfromUser;
		this.xthemessagetitle = xthemessagetitle;
		this.xmessagecontent = xmessagecontent;
		this.xsendtime = xsendtime;
		this.xfilecontent = xfilecontent;
		this.xmessagestatus = xmessagestatus;
		this.xts = xts;
	}
	
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="X_ID")
	public String getXid() {
		return xid;
	}
	public void setXid(String xid) {
		this.xid = xid;
	}
	@Column(name="X_RecipientUser",length=50)
	public String getXrecipientUser() {
		return xrecipientUser;
	}
	public void setXrecipientUser(String xrecipientUser) {
		this.xrecipientUser = xrecipientUser;
	}
	@Column(name="X_FromUser",length=50)
	public String getXfromUser() {
		return xfromUser;
	}
	public void setXfromUser(String xfromUser) {
		this.xfromUser = xfromUser;
	}
	@Column(name="X_Themessagetitle",length=250)
	public String getXthemessagetitle() {
		return xthemessagetitle;
	}
	public void setXthemessagetitle(String xthemessagetitle) {
		this.xthemessagetitle = xthemessagetitle;
	}
	@Column(name="X_Messagecontent",length=2000)
	public String getXmessagecontent() {
		return xmessagecontent;
	}
	public void setXmessagecontent(String xmessagecontent) {
		this.xmessagecontent = xmessagecontent;
	}
	@Column(name="X_Sendtime",length=40)
	public String getXsendtime() {
		return xsendtime;
	}
	public void setXsendtime(String xsendtime) {
		this.xsendtime = xsendtime;
	}
	@Column(name="X_Filecontent",length=200)
	public String getXfilecontent() {
		return xfilecontent;
	}
	public void setXfilecontent(String xfilecontent) {
		this.xfilecontent = xfilecontent;
	}
	@Column(name="X_Messagestatus",length=40)
	public String getXmessagestatus() {
		return xmessagestatus;
	}
	public void setXmessagestatus(String xmessagestatus) {
		this.xmessagestatus = xmessagestatus;
	}
	@Column(name="X_ts",length=500)
	public String getXts() {
		return xts;
	}
	public void setXts(String xts) {
		this.xts = xts;
	}
	
	
	

}

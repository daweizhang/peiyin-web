package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;




@Entity
@Table(name="Z_state")
public class Zstate implements Serializable{

	/**
	 * 任务发布状态表
	 */
	private static final long serialVersionUID = 1L;
	private String zid;// uniqueidentifier primary key default newid(),--招标信息状态ID
	private String zbasName;// nvarchar(50),--招标信息状态名称
	private String zts;// nvarchar(50),--备用字段    
	
	public Zstate() {
		
	}
	public Zstate(String zid, String zbasName, String zts) {
		
		this.zid = zid;
		this.zbasName = zbasName;
		this.zts = zts;
	}
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="Z_ID")
	public String getZid() {
		return zid;
	}
	public void setZid(String zid) {
		this.zid = zid;
	}
	
	@Column(name="Z_basName",length=50)
	public String getZbasName() {
		return zbasName;
	}
	public void setZbasName(String zbasName) {
		this.zbasName = zbasName;
	}
	
	@Column(name="Z_TS",length=50)
	public String getZts() {
		return zts;
	}
	public void setZts(String zts) {
		this.zts = zts;
	}
	
}

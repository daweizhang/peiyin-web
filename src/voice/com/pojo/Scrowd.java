package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;



@Entity
@Table(name="S_crowd")
public class Scrowd implements Serializable{

	/**
	 * 人群类型
	 */
	private static final long serialVersionUID = 1L;
	
	private String sid;// uniqueidentifier primary key default newid(),--人群ID
	private String scrowdName;// nvarchar(100) not null,--人群名称
	private String sts;// nvarchar(50),--备用字段
	
	public Scrowd() {
		
	}
	public Scrowd(String sid, String scrowdName, String sts) {
		
		this.sid = sid;
		this.scrowdName = scrowdName;
		this.sts = sts;
	}
	
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="S_ID")
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	
	@Column(name="S_crowdName",length=100)
	public String getScrowdName() {
		return scrowdName;
	}
	public void setScrowdName(String scrowdName) {
		this.scrowdName = scrowdName;
	}
	@Column(name="S_TS",length=100)
	public String getSts() {
		return sts;
	}
	public void setSts(String sts) {
		this.sts = sts;
	}
	
	

}

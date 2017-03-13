package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="h_speed")
public class Hspeed implements Serializable{

	/**
	 * 语速表
	 */
	private static final long serialVersionUID = 1L;
    
	private String hid;//ID
	private String hName;//语速Name
	private String hts;//备用字段
	
	public Hspeed(String hid, String hName, String hts) {

		this.hid = hid;
		this.hName = hName;
		this.hts = hts;
	}

	public Hspeed() {

	}
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="h_id")
	public String getHid() {
		return hid;
	}
	public void setHid(String hid) {
		this.hid = hid;
	}
	
	@Column(name="h_Name",length=100)
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	@Column(name="h_ts",length=100)
	public String getHts() {
		return hts;
	}
	public void setHts(String hts) {
		this.hts = hts;
	}
	
	
	
	
}

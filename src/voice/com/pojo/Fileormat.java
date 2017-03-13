package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="f_ileormat")
public class Fileormat implements Serializable{

	/**
	 * 文件格式
	 */
	private static final long serialVersionUID = 1L;
	private String fid;  //ID
	private String fName;//文件Name
	private String fts;//备用字段
	
	
	public Fileormat() {

	}


	public Fileormat(String fid, String fName, String fts) {
		this.fid = fid;
		this.fName = fName;
		this.fts = fts;
	}

	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="f_id")
	public String getFid() {
		return fid;
	}


	public void setFid(String fid) {
		this.fid = fid;
	}

	@Column(name="f_Name",length=100)
	public String getfName() {
		return fName;
	}


	public void setfName(String fName) {
		this.fName = fName;
	}

	@Column(name="f_ts",length=100)
	public String getFts() {
		return fts;
	}

	public void setFts(String fts) {
		this.fts = fts;
	}
	
	

}

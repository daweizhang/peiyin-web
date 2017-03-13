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
@Table(name="U_zbztb")
public class Uzbztb implements Serializable{

	/**
	 * 招标状态
	 */
	private static final long serialVersionUID = 1L;
	
	private String uzbid;// uniqueidentifier primary key default newid(),--招标状态ID
	private String uzbName;// nvarchar(50),--招标状态名称
	private String uts;// nvarchar(50),--备用字段
	public Uzbztb(String uzbid, String uzbName, String uts) {
		
		this.uzbid = uzbid;
		this.uzbName = uzbName;
		this.uts = uts;
	}
	public Uzbztb() {
		
	}
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="U_zbID")
	public String getUzbid() {
		return uzbid;
	}
	public void setUzbid(String uzbid) {
		this.uzbid = uzbid;
	}
	
	@Column(name="U_zbName",length=50)
	public String getUzbName() {
		return uzbName;
	}
	public void setUzbName(String uzbName) {
		this.uzbName = uzbName;
	}
	@Column(name="U_TS",length=50)
	public String getUts() {
		return uts;
	}
	public void setUts(String uts) {
		this.uts = uts;
	}
    
}

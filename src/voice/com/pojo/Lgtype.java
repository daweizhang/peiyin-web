package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;



@Entity
@Table(name="L_gtype")
public class Lgtype implements Serializable{

	/**
	 * 语言类型
	 */
	private static final long serialVersionUID = 1L;
	private String lid;// uniqueidentifier primary key default newid(),--语言类型ID
    private String lgtypeName;// nvarchar(50),--语言类型名称
    private String lts;// nvarchar(50),--备用字段
	
    public Lgtype() {
	
	}
	public Lgtype(String lid, String lgtypeName, String lts) {	
		this.lid = lid;
		this.lgtypeName = lgtypeName;
		this.lts = lts;
	}
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="L_ID")
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	
	@Column(name="L_gtypeName",length=50)
	public String getLgtypeName() {
		return lgtypeName;
	}
	public void setLgtypeName(String lgtypeName) {
		this.lgtypeName = lgtypeName;
	}
	
	@Column(name="L_TS",length=50)
	public String getLts() {
		return lts;
	}
	public void setLts(String lts) {
		this.lts = lts;
	}
	
}

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
@Table(name="C_omplete")
public class Complete implements Serializable{

	/**
	 * 配音员完成状态表
	 */
	private static final long serialVersionUID = 1L;
	private String cid;// uniqueidentifier primary key default newid(),--竞标人完成状态ID
	private String compName;// nvarchar(50),--竞标人完成状态名称
	private String cts;// nvarchar(50),--备用字段
	public Complete(String cid, String compName, String cts) {
		this.cid = cid;
		this.compName = compName;
		this.cts = cts;
	}
	public Complete() {
		
	}
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="C_ID")
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	
	@Column(name="C_OmpName",length=50)
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	
	@Column(name="C_TS",length=50)
	public String getCts() {
		return cts;
	}
	public void setCts(String cts) {
		this.cts = cts;
	}
	
    
}

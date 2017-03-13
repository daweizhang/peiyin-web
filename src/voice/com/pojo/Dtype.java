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
@Table(name="D_type")
public class Dtype implements Serializable{

	/**
	 * 用户类型
	 */
	private static final long serialVersionUID = 1L;

	
	private String did;// uniqueidentifier primary key default newid(),--用户类型ID
	private String dtypeName;// nvarchar(50),--用户类型名称
	private String dts;//nvarchar(50),     --备用字段
	//private Set<InUsers> inUsers=new HashSet<InUsers>(0);//用户类型下面的用户列表（备用）

	
    public Dtype() {
		
	}
    public Dtype(String did, String dtypeName, String dts) {
		this.did = did;
		this.dtypeName = dtypeName;
		this.dts = dts;
	}

    @Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
    @Column(name = "D_ID", insertable = true, updatable = true, nullable = false)
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	
	@Column(name="D_typeName",length=50)
	public String getDtypeName() {
		return dtypeName;
	}
	public void setDtypeName(String dtypeName) {
		this.dtypeName = dtypeName;
	}
	
	@Column(name="D_TS",length=50)
	public String getDts() {
		return dts;
	}
	public void setDts(String dts) {
		this.dts = dts;
	}
    
	
	
}

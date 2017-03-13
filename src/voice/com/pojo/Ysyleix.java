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
@Table(name="Y_syleix")
public class Ysyleix implements Serializable{

	/**
	 * 声音类型
	 */
	private static final long serialVersionUID = 1L;
	
	private String yslid;// uniqueidentifier primary key default newid(),--声音类型ID
	private String yslName;// nvarchar(50),--声音类型名称
	private String yts;// nvarchar(50),--备用字段
	
	
	
	
	public Ysyleix() {

	}




	public Ysyleix(String yslid, String yslName, String yts) {
	
		this.yslid = yslid;
		this.yslName = yslName;
		this.yts = yts;
	}



	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="Y_slID")
	public String getYslid() {
		return yslid;
	}




	public void setYslid(String yslid) {
		this.yslid = yslid;
	}



	@Column(name="Y_slName",length=50)
	public String getYslName() {
		return yslName;
	}




	public void setYslName(String yslName) {
		this.yslName = yslName;
	}



	@Column(name="Y_TS",length=50)
	public String getYts() {
		return yts;
	}




	public void setYts(String yts) {
		this.yts = yts;
	}
    
	
	
}

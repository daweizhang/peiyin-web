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
@Table(name="T_voice")
public class Tvoice implements Serializable{

	/**
	 * 配音类型
	 */
	private static final long serialVersionUID = 1L;
	private String tvid;// uniqueidentifier primary key default newid(),--配音类型ID
	private String tvtypeName;// nvarchar(50),--配音类型名称
    private String tts;// nvarchar(50),--备用字段
	
    
    
    public Tvoice() {

	}



	public Tvoice(String tvid, String tvtypeName, String tts) {
		
		this.tvid = tvid;
		this.tvtypeName = tvtypeName;
		this.tts = tts;
	}


	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
	@Column(name="T_vID")
	public String getTvid() {
		return tvid;
	}



	public void setTvid(String tvid) {
		this.tvid = tvid;
	}


	@Column(name="T_vtypeName",length=50)
	public String getTvtypeName() {
		return tvtypeName;
	}



	public void setTvtypeName(String tvtypeName) {
		this.tvtypeName = tvtypeName;
	}


	@Column(name="T_TS",length=50)
	public String getTts() {
		return tts;
	}



	public void setTts(String tts) {
		this.tts = tts;
	}
	
	

}

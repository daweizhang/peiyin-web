package voice.com.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="bf_translate")
public class Bftranslate implements Serializable{

	/**
	 * 任务表需要翻译的字段表
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String bfid;//流水ID
	private String bfNames;//翻译后的任务标题
	private String bfsygw;//翻译后的任务稿文
	private String bftiser;//翻译任务描述
	private String bfyqsc;//翻译后的任务要求时长
	private String bftisyi;//零时标识列
	
	
	public Bftranslate() {
	}
	public Bftranslate(String bfid, String bfNames, String bfsygw,
			String bfyqsc, String bftisyi, String bftiser) {
		this.bfid = bfid;
		this.bfNames = bfNames;
		this.bfsygw = bfsygw;
		this.bfyqsc = bfyqsc;
		this.bftisyi = bftisyi;
		this.bftiser = bftiser;
	}
	
	@Id
	@GenericGenerator(name="systemUUID",strategy="uuid")
	@GeneratedValue(generator="systemUUID")
    @Column(name="bf_ID")
	public String getBfid() {
		return bfid;
	}
	public void setBfid(String bfid) {
		this.bfid = bfid;
	}
	
	@Column(name="bf_Names",length=50)
	public String getBfNames() {
		return bfNames;
	}
	public void setBfNames(String bfNames) {
		this.bfNames = bfNames;
	}
	
	@Column(name="bf_sygw",length=4000)
	public String getBfsygw() {
		return bfsygw;
	}
	public void setBfsygw(String bfsygw) {
		this.bfsygw = bfsygw;
	}
	@Column(name="bf_yqsc",length=50)
	public String getBfyqsc() {
		return bfyqsc;
	}
	public void setBfyqsc(String bfyqsc) {
		this.bfyqsc = bfyqsc;
	}
	@Column(name="bf_tisyi",length=50)
	public String getBftisyi() {
		return bftisyi;
	}
	public void setBftisyi(String bftisyi) {
		this.bftisyi = bftisyi;
	}
	@Column(name="bf_rwmiaos",length=2000)
	public String getBftiser() {
		return bftiser;
	}
	public void setBftiser(String bftiser) {
		this.bftiser = bftiser;
	}
	
	
	
	

}

package voice.com.action;


import java.io.InputStream;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EhDownloadAction extends ActionSupport {
	
	/**
	 * 文件下载
	 */
	private static final long serialVersionUID = 1L;

	private String filename = "2016-10-06-15-18-02-1825211994b9b47da053f0e6e56595b9d26aff11超人voice-4.sql";


	public String getFilename(){
		//重新对文件名称进行编码，防止文件名称出现中文乱码
		return filename;
		
	}

	public void setFilename(String filename) {
		this.filename=filename;
	}

	/**
	 * 设定下载的文件来源
	 * @return
	 */
	public InputStream getDownloadFile(){
		return ServletActionContext.getServletContext().getResourceAsStream(
				"/voicefile/" + filename);
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
}

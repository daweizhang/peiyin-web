package voice.com.action;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport {

	/**
	 * 文件下载
	 */
	private static final long serialVersionUID = 1L;

	private String filename;

	public String getFilename() {
		// 重新对文件名称进行编码，防止文件名称出现中文乱码
		return filename;

	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	/**
	 * 设定下载的文件来源
	 * 
	 * @return
	 */
	public InputStream getDownloadFile() {
		return ServletActionContext.getServletContext().getResourceAsStream(
				filename);
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	// 下载
	public void downlod(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		File f = new File(
				"D:/apache-tomcat-8.0.28/webapps/navi_system/template/数据模板Book1.xls");
		if (f != null) {
			BufferedInputStream bis = null;
			try {
				// 得到文件输入流
				bis = new BufferedInputStream(new FileInputStream(f));
				response.setContentType("application/octet-stream");

				response.addHeader(
						"Content-Disposition",
						"attachment;filename="
								+ URLEncoder.encode(f.getName(), "UTF-8"));
				// 得到应答输出流，并写入
				ServletOutputStream os = response.getOutputStream();
				byte[] buf = new byte[1024 * 8];
				int len = -1;
				while ((len = bis.read(buf)) != -1) {
					os.write(buf, 0, len);
				}
			} catch (Exception e) {
			} finally {
				if (bis != null)
					bis.close();
			}
		}
	}

}

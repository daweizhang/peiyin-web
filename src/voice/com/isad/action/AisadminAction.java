package voice.com.isad.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.json.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import voice.com.biz.AisadminBiz;
import voice.com.pojo.Aisadmin;
import voice.com.util.EncryptionDecryption;
import voice.com.util.MD5test;
import voice.com.util.PaginationSupport;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AisadminAction extends ActionSupport {
	/**
	 * @Fields serialVersionUID :
	 */
	private static final long serialVersionUID = 1L;
	private AisadminBiz aisadminBiz;
	private Aisadmin aisadmin;
	/** 反馈前端的消息 */
	private String resultMessage;
	/** 返回管理后台登录页面用标示符 */
	private static final String ISAD_LOGIN = "isadlogin";
	/** 重定向管理后台用标示符 */
	private static final String ISAD_HAED = "isadhaed";
	/** 转发管理后peiyinhead.jsp用标示符 */
	private static final String TO_ISAD_HAED = "toisadhaed";

	private List<Aisadmin> aisadmins;
	private static Logger logger = LogManager.getLogger(AisadminAction.class.getName());
	private HttpServletRequest request;

	private int pageCurrent;

	private int pageSize;

	private PaginationSupport<Aisadmin> pageinfo;

	private File portraitFile;

	private String portraitFileFileName;

	private String portraitFileContentType;

	private static String UPLOADDIR = "/upload/admin/";

	// 编辑其他管理员资料或者是自己资料的识别符.
	private int editFalg;

	// 修改密码用
	private Map<String, String> updatePwMap;

	/**
	 * 后台管理初始化
	 * 
	 * @Title: peiyinHeadInit
	 * @Description:
	 * @author xulongfei
	 * @return
	 */
	public String peiyinHeadInit() {
		HttpSession session = null;
		if (request == null) {
			request = ServletActionContext.getRequest();
			session = request.getSession();
		}
		// 获取session里的管理员信息检查用户是否登录没有登录转发到登录jsp页面
		Aisadmin adminInfo = (Aisadmin) session.getAttribute("adminInfo");
		if (adminInfo == null) {
			this.resultMessage = "";
			logger.info("检测到用户没有登录,成功返回登录页面");
			return ISAD_LOGIN;
		}

		return TO_ISAD_HAED;

	}

	/**
	 * 后台管理员用户登录
	 * 
	 * @Title: loginAisadmin
	 * @Description:
	 * @author xulongfei
	 * @return
	 */
	public String loginAisadmin() {
		try {

			EncryptionDecryption des = new EncryptionDecryption();
			// 将获取到的密码进行加密并作为参数传递
			Object[] objects = { this.aisadmin.getAisadmName(), des.encrypt(this.aisadmin.getAisadpassword()) };
			// 根据条件调用管理员登录
			Aisadmin aisadmin = aisadminBiz.loginAisadmin(objects);
			if (aisadmin == null) {
				logger.info("管理员:" + this.aisadmin.getAisadmName() + "登录失败");
				this.aisadmin = null;
				this.resultMessage = "您输入的账号或密码有误请重新输入";
				return ISAD_LOGIN;
			}
			request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			session.setAttribute("adminInfo", aisadmin);
			//ActionContext.getContext().getSession().put("adminInfo", aisadmin);
			// 程序进入到此代表管理员成功登录了管理系统.
			Date date = new Date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String loginDate = format.format(date);
			// 设置登录时间
			aisadmin.setAisadlastTime(loginDate);
			// 设置登录ip;
			aisadmin.setAisadip(getIpAddress(request));
			// 更新当前对象
			aisadminBiz.saveAisadMin(aisadmin);
			logger.info("管理员:" + this.aisadmin.getAisadmName() + "成功登录了管理系统");
		} catch (HibernateException e) {
			this.resultMessage = "发生数据库访问异常";
			logger.error("发生数据库访问异常");
			return ISAD_LOGIN;
		} catch (Exception e) {
			this.resultMessage = "发生运行时异常";
			logger.error(this.aisadmin.getAisadmName() + ":管理员用户登录异常");
			return ISAD_LOGIN;
		}
		return ISAD_HAED;
	}

	/**
	 * 获取所有管理权限为2的管理员列表
	 * 
	 * @Title: getAisadminList
	 * @Description:
	 * @author xulongfei
	 * @return
	 */
	public String getAisadminList() {
		try {
			request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			Aisadmin admin = (Aisadmin) session.getAttribute("adminInfo");
			// 判断当前登录用户权限不为1 返回管理后台首页
			if (admin == null || admin.getAisadzhiwei() != 1) {
				return ISAD_HAED;
			}
			pageinfo = new PaginationSupport<Aisadmin>();
			if (this.pageSize == 0) {
				pageinfo.setPageSize(20);
			} else {
				pageinfo.setPageSize(this.pageSize);
			}
			if (this.pageCurrent == 0) {
				pageinfo.setCurrPageNo(1);
			} else {
				pageinfo.setCurrPageNo(this.pageCurrent);
			}

			Map<String, String> query = new HashMap<String, String>();
			if (null != aisadmin) {
				query.put("aisadmName", aisadmin.getAisadmName());
			}
			if (null != aisadmin) {
				query.put("aisadName", aisadmin.getAisadName());
			}
			// 获取管理员信息列表
			List<Aisadmin> aisadmins = aisadminBiz.getAisadminList(pageinfo, query);
			if (aisadmins != null) {
				pageinfo.setItems(aisadmins);
				// 获取符合查询条件的管理员信息记录总数
				pageinfo.setTotalCount(aisadminBiz.getAisadMinCount(query));
			}

		} catch (HibernateException h) {
			logger.error("数据库访问异常");
		} catch (Exception e) {
			logger.error("获取管理员信息发生运行时异常");
		}

		return "inuserlist";
	}

	/**
	 * 根据id获取管理员信息
	 * 
	 * @Title: editAisadminInit
	 * @author xulongfei
	 * @return
	 */
	public String editAisadminInit() {
		try {
			if (aisadmin != null) {
				EncryptionDecryption ed = new EncryptionDecryption();
				aisadmin = aisadminBiz.getAisadminbyId(aisadmin.getAid());
				aisadmin.setAisadpassword(ed.decrypt(aisadmin.getAisadpassword()));
			}
		} catch (Exception e) {
			logger.error("运行时异常");
		}

		return "editAdmin";
	}

	/**
	 * 上传管理员头像头像
	 * 
	 * @Title: upuploadPortrait
	 * @author xulongfei
	 * @return
	 */
	public void uploadPortrait() {
		String message = "0000";
		PrintWriter out = null;
		String dir = ServletActionContext.getServletContext().getRealPath(UPLOADDIR);
		String json = "";
		String wenjian = StringUtils.EMPTY;
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html");
			out = response.getWriter();
			if (this.portraitFile == null) {
				message = "0001";
				return;
			}
			if (this.portraitFile.length() > 20 * 1024) {
				message = "0007";
				return;
			}
			if (!checkFileType(this.portraitFileFileName)) {
				message = "0008";
				return;
			}

			wenjian = uploadFile(portraitFile, this.UPLOADDIR, this.portraitFileFileName);
			if (wenjian == null && this.aisadmin == null) {
				message = "0002";
				return;
			}
			if (aisadmin.getAid() != null && !"".equals(aisadmin.getAid())) {
				this.aisadmin.setAisadPortrait(wenjian);
				// 获取管理员当前的头像图片
				Aisadmin admin = aisadminBiz.getAisadminbyId(aisadmin.getAid());
				// 更新管理员头像图片
				int count = aisadminBiz.updateAisadminbyId(this.aisadmin);
				if (count > 0) {
					// 如果更新管理头像图片成功则删除以前的头像图片
					if (admin != null && admin.getAisadPortrait() != null && !"".equals(admin.getAisadPortrait())) {

						File file = new File(dir, admin.getAisadPortrait());
						if (file.exists()) {
							if (file.delete()) {
								logger.error("成功删除管理员历史头像图片");
							} else {
								message = "0005";
							}
						}
					}
					message = "0000";
					logger.error("更换管理员头像成功");
					// 如果上传头像是当前登录管理员则 再次刷新session
					HttpSession session = ServletActionContext.getRequest().getSession();
					Aisadmin adminiinfo = (Aisadmin) session.getAttribute("adminInfo");
					if (aisadmin.getAid().equals(adminiinfo.getAid())) {
						Aisadmin admini = aisadminBiz.getAisadminbyId(aisadmin.getAid());
						admini.setAisadPortrait(aisadmin.getAisadPortrait());
						session.removeAttribute("adminInfo");
						session.setAttribute("adminInfo", admini);
					}
				} else {
					message = "0003";
					// 如果文件上传成功但是数据库更新失败删除上传文件
					File file = new File(dir, wenjian);
					if (file.exists()) {
						if (file.delete()) {
							logger.error("更新数据失败成功上传图片");
						} else {
							message = "0006";
						}
					}
				}
			}
		} catch (Exception e) {
			message = "0004";
			logger.error("发生未知运行时异常");
		} finally {
			if (out != null) {
				json = "{\"message\":\"" + message + "\",\"fileName\":\"" + wenjian + "\"}";
				out.print(json);
				out.flush();
				out.close();
			}
		}

	}

	/**
	 * 
	 * @Title: updateAdminData
	 * @author xulongfei
	 */
	public void updateAdminData() {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		String message = "0000";
		PrintWriter out = null;
		try {
			EncryptionDecryption ed = new EncryptionDecryption();
			out = response.getWriter();
			if (aisadmin != null) {
				aisadmin.setAisadpassword(ed.encrypt(aisadmin.getAisadpassword()));
				int count = aisadminBiz.updateAisadminby(aisadmin);
				if (count > 0) {
					message = "成功更新了管理员:" + aisadmin.getAisadName() + " 的信息";
				}
			}

		} catch (Exception e) {
			message = "更新信息失败";
		} finally {
			if (out != null) {
				out.print("{\"message\":\"" + message + "\"}");
				out.flush();
				out.close();
			}
		}

	}

	/**
	 * 
	 * @Title: deleteAdminData
	 * @author xulongfei
	 */
	public void deleteAdminData() {
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = null;
		String message = "0000";
		try {
			out = response.getWriter();
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			if (aisadmin != null && !"".equals(aisadmin.getAid())) {
				aisadminBiz.deleteAdminData(aisadmin);
			}
		} catch (Exception e) {
			message = "0001";
		} finally {
			if (out != null) {
				out.print(message);
				out.flush();
				out.close();
			}
		}
	}

	/**
	 * 
	 * @Title: addAisadmin
	 * @author xulongfei
	 */
	public void addAisadmin() {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		String message = StringUtils.EMPTY;
		try {
			out = response.getWriter();
			if (this.aisadmin != null) {
				boolean result = aisadminBiz.getAisadminbyAdminName(this.aisadmin.getAisadmName());
				if (result == false) {
					message = "账号已存在";
				} else {
					EncryptionDecryption des = new EncryptionDecryption();
					// 将获取到的密码进行加密并作为参数传递
					this.aisadmin.setAisadpassword(des.encrypt(this.aisadmin.getAisadpassword()));
					aisadminBiz.addAdmin(this.aisadmin);
					message = "添加成功";
				}
			}
		} catch (Exception e) {
			message = "发生异常错误";
		} finally {
			if (out != null) {
				out.print("{\"message\":\"" + message + "\"}");
				out.flush();
				out.close();
			}
		}

	}

	/**
	 * 修改管理员登录密码
	 * 
	 * @Title: updatePassword
	 * @author xulongfei
	 */
	public void updatePassword() {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		String message = "";
		try {
			out = response.getWriter();

			Aisadmin admin = null;
			if (updatePwMap != null) {
				admin = aisadminBiz.getAisadminbyId(updatePwMap.get("aid"));

			}
			if (admin != null) {
				EncryptionDecryption des = new EncryptionDecryption();
				if (!admin.getAisadpassword().equals(des.encrypt(updatePwMap.get("jiumima")))) {
					message = "旧密码输入错误";
				} else {
					if (updatePwMap.get("mima1").length() < 6 || updatePwMap.get("mima2").length() < 6) {
						message = "新密码长度必须6位以上";
					} else {
						if (updatePwMap.get("mima1").equals(updatePwMap.get("mima2"))) {
							admin.setAisadpassword(des.encrypt(updatePwMap.get("mima2")));
							int count = aisadminBiz.updateAdminPasswordbyid(admin);
							if (count > 0) {
								message = "修改成功";
							}
						} else {
							message = "两次新密码不一致";
						}
					}
				}
			}
		} catch (Exception e) {

		} finally {
			if (out != null) {
				out.print("{\"message\":\"" + message + "\"}");
				out.flush();
				out.close();
			}

		}

	}

	/** @return **/
	public Aisadmin getAisadmin() {
		return aisadmin;
	}

	/** @return aisadminBiz **/
	public AisadminBiz getAisadminBiz() {
		return aisadminBiz;
	}

	/**
	 * @param aisadminBiz
	 *            要设置的 aisadminBiz
	 **/
	public void setAisadminBiz(AisadminBiz aisadminBiz) {
		this.aisadminBiz = aisadminBiz;
	}

	/**
	 * @param aisadmin
	 *            要设置的 aisadmin
	 **/
	public void setAisadmin(Aisadmin aisadmin) {
		this.aisadmin = aisadmin;
	}

	/** @return resultMessage **/
	public String getResultMessage() {
		return resultMessage;
	}

	/**
	 * @param resultMessage
	 *            要设置的 resultMessage
	 **/
	public void setResultMessage(String resultMessage) {
		this.resultMessage = resultMessage;
	}

	/** @return isadLogin **/
	public static String getIsadLogin() {
		return ISAD_LOGIN;
	}

	/** @return isadHaed **/
	public static String getIsadHaed() {
		return ISAD_HAED;
	}

	/**
	 * @param aisadmins
	 *            要设置的 aisadmins
	 **/
	public void setAisadmins(List<Aisadmin> aisadmins) {
		this.aisadmins = aisadmins;

	}

	/** @return aisadmins **/
	public List<Aisadmin> getAisadmins() {
		return aisadmins;
	}

	/** @return request **/
	public HttpServletRequest getRequest() {
		return request;
	}

	/**
	 * @param request
	 *            要设置的 request
	 **/
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	/** @return pageCurrent **/
	public int getPageCurrent() {
		return pageCurrent;
	}

	/** @return pageSize **/
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageCurrent
	 *            要设置的 pageCurrent
	 **/
	public void setPageCurrent(int pageCurrent) {
		this.pageCurrent = pageCurrent;
	}

	/**
	 * @param pageSize
	 *            要设置的 pageSize
	 **/
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/** @return pageinfo **/
	public PaginationSupport<Aisadmin> getPageinfo() {
		return pageinfo;
	}

	/**
	 * @param pageinfo
	 *            要设置的 pageinfo
	 **/
	public void setPageinfo(PaginationSupport<Aisadmin> pageinfo) {
		this.pageinfo = pageinfo;
	}

	/**
	 * 
	 * @Title: getIpAddress
	 * @Description: 获取ip地址
	 * @author xulongfei
	 * @param request
	 * @return
	 */
	public static String getIpAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}

	/**
	 * 上传文件
	 * 
	 * @Title: uploadFile
	 * @author xulongfei
	 * @param file
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	private String uploadFile(File file, String uploaddir, String fileName) {
		String wjname = StringUtils.EMPTY;
		InputStream in = null;
		OutputStream out = null;
		try {
			in = new FileInputStream(file);
			String dir = ServletActionContext.getServletContext().getRealPath(uploaddir);
			File fileLocation = new File(dir);
			// 此处也可以在应用根目录手动建立目标上传目录
			if (!fileLocation.exists()) {
				boolean isCreated = fileLocation.mkdir();
				if (!isCreated) {
					// 目标上传目录创建失败,可做其他处理,例如抛出自定义异常等,一般应该不会出现这种情况。
					return null;
				}
			}
			Random random = new Random();
			int x = random.nextInt(999999);
			Random random1 = new Random();
			int y = random1.nextInt(999999);
			String c = Integer.toString(y);
			MD5test m = new MD5test();
			String lc = m.setget(c);
			// 拼接组合新的文件名
			String wenjianming = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-ms").format(new java.util.Date()) + x + lc
					+ fileName;
			wjname = wenjianming;
			File uploadFile = new File(dir, wenjianming);
			out = new FileOutputStream(uploadFile);
			byte[] buffer = new byte[1024 * 1024];
			int length;
			while ((length = in.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}
			out.flush();
		} catch (FileNotFoundException ex) {
			logger.error("上传管理员头像时发生找不到文件异常:" + fileName);
			return null;
		} catch (IOException ex) {
			logger.error("上传管理员头像时发生IO异常:" + fileName);
			return null;
		} catch (Exception e) {
			logger.error("上传管理员头像时发生未知运行时异常" + fileName);
		} finally {
			try {
				out.close();
				in.close();
			} catch (IOException e) {
				logger.error("关闭IO流时发生异常" + fileName);
				return null;
			}
		}
		return wjname;
	}

	/** @return portraitFile **/
	public File getPortraitFile() {
		return portraitFile;
	}

	/**
	 * @param portraitFile
	 *            要设置的 portraitFile
	 **/
	public void setPortraitFile(File portraitFile) {
		this.portraitFile = portraitFile;
	}

	/** @return portraitFileFileName **/
	public String getPortraitFileFileName() {
		return portraitFileFileName;
	}

	/** @return portraitFileContentType **/
	public String getPortraitFileContentType() {
		return portraitFileContentType;
	}

	/**
	 * @param portraitFileFileName
	 *            要设置的 portraitFileFileName
	 **/
	public void setPortraitFileFileName(String portraitFileFileName) {
		this.portraitFileFileName = portraitFileFileName;
	}

	/**
	 * @param portraitFileContentType
	 *            要设置的 portraitFileContentType
	 **/
	public void setPortraitFileContentType(String portraitFileContentType) {
		this.portraitFileContentType = portraitFileContentType;
	}

	/** @return editFalg **/
	public int getEditFalg() {
		return editFalg;
	}

	/**
	 * @param editFalg
	 *            要设置的 editFalg
	 **/
	public void setEditFalg(int editFalg) {
		this.editFalg = editFalg;
	}

	/** @return updatePwMap **/
	public Map<String, String> getUpdatePwMap() {
		return updatePwMap;
	}

	/**
	 * @param updatePwMap
	 *            要设置的 updatePwMap
	 **/
	public void setUpdatePwMap(Map<String, String> updatePwMap) {
		this.updatePwMap = updatePwMap;
	}

	/**
	 * 判断文件类型
	 * 
	 * @Title: checkFileType
	 * @author xulongfei
	 * @param file
	 * @return
	 */
	public boolean checkFileType(String file) {
		boolean result = false;
		if (file == null) {
			return result;
		}
		String[] fileType = new String[] { "jpg", "gif", "png", "bim" };
		for (int i = 0; i < fileType.length; i++) {
			String type = file.substring(file.lastIndexOf('.') + 1);
			System.out.println(type);
			if (type.equals(fileType[i])) {
				result = true;
				break;
			}

		}
		return result;
	}

}

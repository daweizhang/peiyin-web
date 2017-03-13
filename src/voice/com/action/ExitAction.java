package voice.com.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ExitAction extends ActionSupport {

	/**
	 * 退出魅音的action
	 */
	private static final long serialVersionUID = -8337568356969731111L;

	@SuppressWarnings("rawtypes")
	public String userexitxt() throws Exception {
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		session.clear();
		return "exit";
	}
}

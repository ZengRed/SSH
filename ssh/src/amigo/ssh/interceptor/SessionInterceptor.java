package amigo.ssh.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

;;

public class SessionInterceptor extends AbstractInterceptor implements StrutsStatics {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	 private static Logger log=Logger.getLogger(SessionInterceptor.class);  

	HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		  ActionSupport action= (ActionSupport) invocation.getAction();  
	       action.clearErrorsAndMessages();  
	       log.info("remove validation errors!");  
	       return invocation.invoke();  

	}

}

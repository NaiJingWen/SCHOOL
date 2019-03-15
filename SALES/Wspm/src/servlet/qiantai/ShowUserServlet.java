package servlet.qiantai;
//展示服务 
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.SelectBean;

public class ShowUserServlet extends HttpServlet {
	public ShowUserServlet() {
		super();
	}
	public void destroy() {
		super.destroy(); }

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SelectBean sb = new SelectBean();
		HttpSession session = request.getSession();
		if(session.getAttribute("login") != null && !session.getAttribute("login").equals("")){
			ArrayList login = (ArrayList)session.getAttribute("login");
			String id = (String)login.get(0);
			String sql = "select * from users where id='"+id+"'";
			String args[] ={"id","name","pwd","realname","sex","age","card","address","phone","email","code","type"};
			ArrayList al = sb.select(sql, args);
			request.setAttribute("user", al);
		}
		RequestDispatcher rd=request.getRequestDispatcher("/qiantai/modifyuser.jsp");
        rd.forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

	
	public void init() throws ServletException {
		
	}

}

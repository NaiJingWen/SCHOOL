package servlet.qiantai;
//商品展示
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.SelectBean;
import util.Validate;

public class BookinServlet extends HttpServlet{
	public BookinServlet() {
		super();
	}
	public void destroy() {
		super.destroy();
	}
	public void doGet (HttpServletRequest request,ServletResponse response)
				throws ServletException,IOException{
		SelectBean ib = new SelectBean();
		Validate vd = new Validate();
		String id = vd.getUnicode(request.getParameter("id"));
		String adminshow = vd.getUnicode(request.getParameter("adminshow"));
		String adminupdate = vd.getUnicode(request.getParameter("adminupdate"));
		String str = "/qiantai/bookinf.jsp";
		String sql5="select *from books";
		String[] args5={"id","name","author","publishing","price","storage","brief","type"};
		ArrayList al5=ib.select(sql5,args5);
		request.setAttribute("books",al5);
		if(adminshow!=null && !adminshow.equals("")){
			str="/admin/showbook.jsp";
		}
		if(adminupdate != null && !adminupdate.equals("")){
			str="/admin/updatebook.jsp";
		}
		RequestDispatcher rd=request.getRequestDispatcher(str);
		rd.forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletRequest response)
				throws ServletException,IOException{
		doGet(request, (ServletResponse) response);
	}
	public void init() throws ServletException{
		
	}
}

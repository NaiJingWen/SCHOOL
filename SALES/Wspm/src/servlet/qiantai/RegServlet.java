package servlet.qiantai;
//×¢²á±í 
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Validate;
import bean.InsertUpdateDelBean;

public class RegServlet extends HttpServlet {

	public RegServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Validate vd = new Validate();
		String name = vd.getUnicode(request.getParameter("name"));
		String pwd = vd.getUnicode(request.getParameter("pwd"));
		String zname = vd.getUnicode(request.getParameter("zname"));
		String sex = vd.getUnicode(request.getParameter("sex"));
		String age = vd.getUnicode(request.getParameter("age"));
		String noid = vd.getUnicode(request.getParameter("noid"));
		String address = vd.getUnicode(request.getParameter("address"));
		String phone = vd.getUnicode(request.getParameter("phone"));
		String email = vd.getUnicode(request.getParameter("email"));
		String code = vd.getUnicode(request.getParameter("code"));
		String sql = "insert into users(name,pwd,realname,sex,age,card,address,phone,email,code) values('"+name+"','"+pwd+"','"+zname+"','"+sex+"','"+age+"','"+noid+"','"+address+"','"+phone+"','"+email+"','"+code+"')";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		int flag = ib.insertANDupdateANDdel(sql);
		if(flag == -1){
			request.setAttribute("error", "1");
		}else{
			request.setAttribute("ok", "1");
			response.setHeader("Refresh","5;URL=../qiantai/index.jsp");
		}
		RequestDispatcher rd=request.getRequestDispatcher("/qiantai/reg.jsp");
        rd.forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

	
	public void init() throws ServletException {
		
	}

}

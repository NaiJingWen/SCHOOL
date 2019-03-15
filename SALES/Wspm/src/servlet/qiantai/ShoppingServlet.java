package servlet.qiantai;
//¹ºÎï³µ
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.SelectBean;

public class ShoppingServlet extends HttpServlet {
	public ShoppingServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bookId = request.getParameter("bookId");
		String m = request.getParameter("i"); 
		String num = request.getParameter("num"+m);
		String str = "";
		String sql = "select * from books where id="+bookId;
		String[] args = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath"};
		String del = request.getParameter("del");
		String remove = request.getParameter("remove");
		HttpSession session = request.getSession();
		ArrayList login = (ArrayList)session.getAttribute("login");
		SelectBean ib = new SelectBean();
		ArrayList al = ib.select(sql, args);
		int sum = 1;
		if(login == null || login.size() == 0){
			str = "/servlet/SessLoginServlet";
		}else{
			str = "/qiantai/shopping.jsp";
			ArrayList shopping = (ArrayList)session.getAttribute("shopping");
			if(bookId !=null && !bookId.equals("")){
				ArrayList altem = (ArrayList)al.get(0);
				if(shopping == null || shopping.size() == 0){
					ArrayList alShop = new ArrayList();
					alShop.add(altem.get(0));
					alShop.add(altem.get(1));
					alShop.add(altem.get(5));
					alShop.add(""+sum);
					shopping = new ArrayList();
					shopping.add(alShop);
				}else{
					boolean bool = true;
					for(int i = 0;i < shopping.size();i++){
						ArrayList alShop = (ArrayList)shopping.get(i);
						if(alShop.get(0).equals(bookId)){
							sum = Integer.parseInt(alShop.get(3).toString())+sum;
							if(num != null && !num.equals("")){
								sum = Integer.parseInt(num);
							}
							alShop.set(3,""+sum);
							bool = false;
							break;
						}
					}
					if(bool){
						ArrayList alShop = new ArrayList();
						alShop.add(altem.get(0));
						alShop.add(altem.get(1));
						alShop.add(altem.get(5));
						alShop.add(""+sum);
						shopping.add(alShop);
					}
				}
			}
			if(del != null && !del.equals("") && shopping !=null && shopping.size()!= 0){
				shopping.remove(Integer.parseInt(del));
			}
			session.setAttribute("shopping",shopping);
			if(remove != null && !remove.equals("") && session.getAttribute("shopping") != null && !session.getAttribute("shopping").equals("")){
				session.removeAttribute("shopping");
			}
		}
		RequestDispatcher rd=request.getRequestDispatcher(str);
        rd.forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
	public void init() throws ServletException {
		
	}

}

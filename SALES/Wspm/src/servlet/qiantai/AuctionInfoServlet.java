package servlet.qiantai;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Validate;
import bean.SelectBean;

public class AuctionInfoServlet extends HttpServlet {
	public AuctionInfoServlet() {
		super();
	}
	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SelectBean ib = new SelectBean();
		Validate vd = new Validate();
		String id = vd.getUnicode(request.getParameter("id"));
		String usershow = vd.getUnicode(request.getParameter("usershow"));
		String userprice = vd.getUnicode(request.getParameter("userprice"));
		String str = "";
		String sql2 = "select a.*,price from auctionware a,auctionprice b where a.id*=b.auctionware and a.id='"+id+"'";
		String[] args2 = {"id","name","factory","dates","spec","baseprice","storage","intro","type","begintime","endtime","path","price"};
		ArrayList al2 = ib.select(sql2, args2);
		request.setAttribute("auctions", al2);
		if(usershow != null && !usershow.equals("")){
			str = "/qiantai/auction_show.jsp";			
		}
		if(userprice != null && !userprice.equals("")){
			str = "/qiantai/auction_add_price.jsp";			
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

package servlet.qiantai;
//¾ºÅÄÉÌÆ·£¨À¶É«£©
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.Validate;
import bean.InsertUpdateDelBean;
import bean.SelectBean;

public class AuctionAddPriceServlet extends HttpServlet {
	public AuctionAddPriceServlet() {
		super();
	}
	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		Validate vd = new Validate();	
		String id = vd.getUnicode(request.getParameter("id"));
		String price = vd.getUnicode(request.getParameter("price"));
		String str = "";
		HttpSession session = request.getSession();
		ArrayList login = (ArrayList)session.getAttribute("login");

		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		SelectBean sb = new SelectBean();

		String sql1 = "insert into auction(userid,auctionware,auctionprice) values('"+login.get(0)+"','"+id+"','"+price+"')";
		int flag = ib.insertANDupdateANDdel(sql1);
		
		if(flag != -1){
			str = "/qiantai/auction_list.jsp";
			String sql2 = "select auctionware from auctionprice where auctionware="+id;
			String args[] = {"auctionware"};
			ArrayList al = sb.select(sql2, args);

			if(al == null || al.size() == 0){
				String sql3 = "insert into auctionprice(userid,auctionware,price) values('"+login.get(0)+"','"+id+"','"+price+"')";
				ib.insertANDupdateANDdel(sql3);
			}else{
				String sql4 = "update auctionprice set userid='"+login.get(0)+"',price='"+price+"' where auctionware="+id;
				ib.insertANDupdateANDdel(sql4);
			}

			request.setAttribute("ok", "1");
		}else{
			str = "/qiantai/auction_add_price.jsp";
			String sql2 = "select a.*,price from auctionware a,auctionprice b where a.id*=b.auctionware and a.id='"+id+"'";
			String[] args2 = {"id","name","factory","dates","spec","baseprice","storage","intro","type","begintime","endtime","path","price"};
			ArrayList al2 = sb.select(sql2, args2);
			request.setAttribute("auctions", al2);
			request.setAttribute("error", "1");
		}
		RequestDispatcher rd = request.getRequestDispatcher(str);
		rd.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doGet(request,response);
	}
	public void init() throws ServletException {
		
	}

}

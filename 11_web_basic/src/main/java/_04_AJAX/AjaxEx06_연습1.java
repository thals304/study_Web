package _04_AJAX;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajaxEx06_연습1")
public class AjaxEx06_연습1 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("04_jQuery/chapter04_AJAX/ajaxEx06_연습1.jsp");
		dis.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		String result = "N";
		
		if (id.equals("admin") && passwd.equals("admin")) {
			result = "Y";
		}
		
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.print(result);
	}

}

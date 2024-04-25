package _04_AJAX;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajaxEx05_연습1")
public class AjaxEx05_연습1 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("04_jQuery/chapter04_AJAX/ajaxEx05_연습1.jsp");
		dis.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String[] userList = {"user1" , "user2" , "user3" , "user4" , "user5"};
		
		String sendData = request.getParameter("id");
		
		String result = "";
		
		for (int i = 0; i < userList.length; i++) {
			if (userList[i].equals(sendData)) {
				result = "중복된 아이디 입니다.";
			}
			else {
				result = "사용가능한 아이디 입니다.";
			}
		}
		
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.print(result);
	}

}

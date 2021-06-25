package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String reqURI = request.getRequestURI();
		String path = request.getContextPath();
		String resultURI = reqURI.substring(path.length() + 1);
		// +1을 한 이유는 PATH 길이 뺸담에 오는 슬러쉬/ 도 지우고 싶어서

		Command inter = null;

		if (resultURI.equals("LoginCon.do")) {
			inter = new LoginCon();}
		else if(resultURI.equals("LogoutCon.do")) {
			inter = new LogoutCon();}
		else if(resultURI.equals("JoinCon.do")) {
			inter = new JoinCon();}
		
			

			inter.command(request, response);

		
	}
}

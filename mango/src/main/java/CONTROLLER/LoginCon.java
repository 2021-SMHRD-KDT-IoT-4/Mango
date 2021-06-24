package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MODEL.InfoDAO;
import MODEL.InfoDTO;

public class LoginCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		String id= request.getParameter("id");
		String pw = request.getParameter("pw");
		InfoDTO dto = new InfoDTO(id, pw);
		InfoDAO dao = new InfoDAO();
		
		int result = dao.login(dto);
		
		if(result !=0) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
		}else {
			System.out.println("로그인 실패");
		}
		response.sendRedirect("home.jsp");
	}

}

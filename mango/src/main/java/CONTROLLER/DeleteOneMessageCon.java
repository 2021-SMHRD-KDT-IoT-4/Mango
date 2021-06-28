package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MODEL.MessageDAO;

public class DeleteOneMessageCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String num = request.getParameter("num");
		
		HttpSession session = request.getSession();
		String send = (String)session.getAttribute("id");
		
		System.out.println(send +  " 와" + num);
		MessageDAO dao = new MessageDAO();
		int result = dao.deleteMessage(send, num);
		
		if(result !=0) {
			System.out.println("단일 삭제 성공");
		}else {
			System.out.println("단일 삭제 실패");
		}
		 response.sendRedirect("message.jsp"); 
		
	}

}

package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MODEL.MessageDAO;

public class DeleteMessageCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		MessageDAO dao = new MessageDAO();
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		int result = dao.deleteAllMessage(id);
		
		if(result !=0) {
			System.out.println("전체 삭제 완료");
		}else {
			System.out.println("전체 삭제 실패");
		}
		
		response.sendRedirect("message.jsp");
		
		
	}

}

package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MODEL.MessageDAO;
import MODEL.MessageDTO;

public class SendMessageCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		String id =(String)session.getAttribute("id");
	    String receive = request.getParameter("receive");
	    String letter = request.getParameter("letter");
		
	    MessageDAO dao = new MessageDAO();
	    MessageDTO dto = new MessageDTO(id, receive, letter);
	    int result =  dao.sendMessage(dto);
	    
	    if(result !=0) {
	    	System.out.println("�޼��� ���� ����");
	    }else {
	    	System.out.println("�޼��� ���� ����");
	    }
	    
		response.sendRedirect("message.jsp");
		
	}

}

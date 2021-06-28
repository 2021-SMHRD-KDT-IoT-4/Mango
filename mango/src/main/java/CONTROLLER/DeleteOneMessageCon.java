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
		
		System.out.println(send +  " ��" + num);
		MessageDAO dao = new MessageDAO();
		int result = dao.deleteMessage(send, num);
		
		if(result !=0) {
			System.out.println("���� ���� ����");
		}else {
			System.out.println("���� ���� ����");
		}
		 response.sendRedirect("message.jsp"); 
		
	}

}

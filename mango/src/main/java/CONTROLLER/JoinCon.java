package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODEL.InfoDAO;
import MODEL.InfoDTO;

public class JoinCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String repw = request.getParameter("repw");
		String name = request.getParameter("name");
		String loc = request.getParameter("loc");
		String perfume = request.getParameter("perfume");
		String pdnumber = request.getParameter("pdnumber");
		
		if(pw.equals(repw)) {
			System.out.println("��й�ȣ Ȯ�� ����");
			InfoDTO dto = new InfoDTO(id, pw, name, loc, perfume, pdnumber);
			InfoDAO dao = new InfoDAO();
			int result = dao.join(dto);
		if(result !=0) {
			System.out.println("ȸ������ ����");
			InfoDTO dto2 = dao.showOne(id);
			dao.join2(dto2);
		}else {
			System.out.println("ȸ������ ����");
		}
			response.sendRedirect("home.jsp");
			
		}else {
			System.out.println("��й�ȣ�� �ٸ��ϴ�. ���Խ���.");
			response.sendRedirect("join.jsp");
		}
		
	}

}

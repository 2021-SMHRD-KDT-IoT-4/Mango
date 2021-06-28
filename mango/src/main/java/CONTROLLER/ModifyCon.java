package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MODEL.InfoDAO;
import MODEL.InfoDTO;

public class ModifyCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		String pw =	request.getParameter("pw");
		String name =	request.getParameter("name");
		String loc =	request.getParameter("loc");
		String perfume =	request.getParameter("perfume");
		String pdnumber = request.getParameter("pdnumber");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		InfoDTO dto = new InfoDTO(id,pw, name, loc, perfume, pdnumber);
		InfoDAO dao = new InfoDAO();
		int result = dao.change(dto);
		
		if(result !=0) {
			System.out.println("정보수정 성공");
			session.setAttribute("info_dto", dao.showOne(id));
			response.sendRedirect("mypage.jsp");
		}else {
			System.out.println("정보수정 실패");
			response.sendRedirect("modify.jsp");
		}
		
	}

}

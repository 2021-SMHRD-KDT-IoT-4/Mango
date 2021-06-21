package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODEL.MessageDAO;
import MODEL.MessageDTO;

@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String a = request.getParameter("send");
		String b = request.getParameter("receive");
		String c = request.getParameter("memo");

		System.out.println("페이지 넘어옴");
		
		MessageDTO dto = null;
		MessageDAO dao = new MessageDAO();
		dto = dao.showOneMessage(b);
		if (dto != null) {
			System.out.println(dto.getSend());
			System.out.println(dto.getMemo());
		} else {
			System.out.println("오류나는중");
		}
	}
}

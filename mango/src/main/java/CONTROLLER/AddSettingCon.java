package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MODEL.InfoDTO;
import MODEL.SettingDAO;
import MODEL.SettingDTO;

public class AddSettingCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String num = request.getParameter("num");
		String renum = null;
		switch (num) {
		case "s1":
			renum = "a";
			break;
		case "s2":
			renum = "b";
			break;
		case "s3":
			renum = "c";
			break;
		case "s4":
			renum = "d";
			break;
		case "s5":
			renum = "e";
			break;
		case "s6":
			renum = "f";
			break;
		}

		HttpSession session = request.getSession();
		InfoDTO getid = (InfoDTO) session.getAttribute("info_dto");
		String setid = getid.getSetting();
		SettingDAO dao = new SettingDAO();


		String perfume = request.getParameter("perfume");
		String weather = request.getParameter("weather");
		String time = request.getParameter("time");
	
		
		SettingDTO dto = new SettingDTO(renum, setid, perfume, weather, time);
		
		int result = dao.update(dto);
		if (result != 0) {
			System.out.println("등록성공");
		} else {
			System.out.println("등록 실패");
		}
		response.sendRedirect("setting.jsp");

	}
}

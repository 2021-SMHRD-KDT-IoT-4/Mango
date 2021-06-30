package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/motor")
public class motor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static int data = 0;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		motor.data = Integer.parseInt(request.getParameter("re")); 
		/* motor.data = Integer.parseInt(request.getParameter("data")); */
		
		PrintWriter out = response.getWriter();
		String result = String.format("/{\"MOTOR\":\"%d\"}/", data);
		out.printf(result);
		
		String ms = request.getParameter("ms");
		System.out.println(ms + ":" + result);
		
		data = 0;
	}

}

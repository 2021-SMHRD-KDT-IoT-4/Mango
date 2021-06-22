package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	/*	String URI = "http://api.openweathermap.org/data/2.5/forecast?q=Gwangju&appid=01302211c0ad8247844362fd2d8280f7";
		
		URL url = new URL(URI);
        BufferedReader bf;
        String line;
        String result="";

        //���� ������ �޾ƿ´�.
        bf = new BufferedReader(new InputStreamReader(url.openStream()));

        //���ۿ� �ִ� ������ ���ڿ��� ��ȯ.
        while((line=bf.readLine())!=null){
            result=result.concat(line);
            //System.out.println(line);
            
        }
        


//        //���ڿ��� JSON���� �Ľ�
        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObj = null;
        try {
			jsonObj = (JSONObject) jsonParser.parse(result);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        //System.out.println(jsonObj);
//
        //���� ���
        //System.out.println("���� : " + jsonObj.get("list"));
        
        JSONArray arr = (JSONArray)jsonObj.get("list");
   
        double temp = 0;
        ArrayList<String> finalResult = new ArrayList<String>();
        
 
        for(int i=0;i<arr.size();i+=7){
			JSONObject tmp = (JSONObject)arr.get(i);//�ε��� ��ȣ�� �����ؼ� �����´�.
			
			//System.out.println(tmp);
			
			JSONObject weather = (JSONObject)tmp.get("main");
//			System.out.println(weather);
		
			double ktemp = Double.parseDouble(weather.get("temp").toString());
			temp = ktemp-273.15;
//			System.out.printf("�µ� : %.2f\n",temp);
			
			finalResult.add(String.format("%.1f", temp));
			
		}
        
        	System.out.println(finalResult.toString());
		
        	
        	request.setAttribute("a", finalResult.get(0));
        	request.setAttribute("b", finalResult.get(1));
        	request.setAttribute("c", finalResult.get(2));
        	request.setAttribute("d", finalResult.get(3));
        	
        	response.sendRedirect("contact.jsp");
        */	
		}
	
}
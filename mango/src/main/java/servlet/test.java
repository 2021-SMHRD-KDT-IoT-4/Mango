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

        //날씨 정보를 받아온다.
        bf = new BufferedReader(new InputStreamReader(url.openStream()));

        //버퍼에 있는 정보를 문자열로 변환.
        while((line=bf.readLine())!=null){
            result=result.concat(line);
            //System.out.println(line);
            
        }
        


//        //문자열을 JSON으로 파싱
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
        //지역 출력
        //System.out.println("지역 : " + jsonObj.get("list"));
        
        JSONArray arr = (JSONArray)jsonObj.get("list");
   
        double temp = 0;
        ArrayList<String> finalResult = new ArrayList<String>();
        
 
        for(int i=0;i<arr.size();i+=7){
			JSONObject tmp = (JSONObject)arr.get(i);//인덱스 번호로 접근해서 가져온다.
			
			//System.out.println(tmp);
			
			JSONObject weather = (JSONObject)tmp.get("main");
//			System.out.println(weather);
		
			double ktemp = Double.parseDouble(weather.get("temp").toString());
			temp = ktemp-273.15;
//			System.out.printf("온도 : %.2f\n",temp);
			
			finalResult.add(String.format("%.1f", temp));
			
		}
        
        	System.out.println(finalResult.toString());
		
        	
        	request.setAttribute("a", finalResult.get(0));
        	request.setAttribute("b", finalResult.get(1));
        	request.setAttribute("c", finalResult.get(2));
        	request.setAttribute("d", finalResult.get(3));
        	
        	response.sendRedirect("contact.jsp");
        */	
		
		
		//==========================================================
		
		String urlstr = "http://api.openweathermap.org/data/2.5/weather?q=Gwangju&appid="+"01302211c0ad8247844362fd2d8280f7";
		URL url2 = new URL(urlstr);
		BufferedReader bf2;
		String line2;
		String result2="";

		bf2 = new BufferedReader(new InputStreamReader(url2.openStream()));

		while((line2=bf2.readLine())!=null){
		    result2=result2.concat(line2);
		}

		JSONParser jsonParser2 = new JSONParser();
		JSONObject jsonObj2 = null;
		try {
			jsonObj2 = (JSONObject) jsonParser2.parse(result2);
		} catch (ParseException e) {
			e.printStackTrace();
		}


		JSONArray weatherArray2 = (JSONArray) jsonObj2.get("weather");
		JSONObject wea = (JSONObject) weatherArray2.get(0);
		
		
		String dataW = "";
		String dataR = "";
		String todayW = (String)wea.get("main");
		if(todayW.equals("Thunderstorm"))dataW = "storm";
		if(todayW.equals("Drizzle"))dataW = "drizzle";
		if(todayW.equals("Rain"))dataW = "rain";
		if(todayW.equals("Clear"))dataW = "sunny";
		if(todayW.equals("Clouds"))dataW = "fallout";
		
			switch(dataW){
			case "rain":		dataR = "rain"; break;
			case "drizzle":		dataR = "drizzle"; break;
			case "sunny":		dataR = "sunny"; break;
			case "storm":		dataR = "storm"; break;
			case "fallout":		dataR = "fallout"; break;
					
		} 
			System.out.println(dataR);
		
		}
	
}

package MODEL;

import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.util.Calendar;
import java.util.Locale;

public class OtherDTO {

	Calendar cal = Calendar.getInstance();

	private int year = cal.get(Calendar.YEAR);
	private int day;
	private int month;
	private int dayOfWeek;
	
	private long time = System.currentTimeMillis();
	SimpleDateFormat formatter = new SimpleDateFormat("hh:mm:ss", Locale.KOREA);
	String dTime = formatter.format(time);
	
	public String getTime() {
		return dTime;
	}


	public int getYear() {
		return year;
	}


	public int getDay(int num) {
		
		int day = cal.get(Calendar.DATE)+num;
//		switch(day) {
//		case 31 : day= 1;
//		case 32 : day= 2;
//		case 33 : day= 3;
//		case 34 : day= 4;
//		}
//		return day;
		Calendar tmpcal = Calendar.getInstance();
		tmpcal.add(Calendar.DATE, num);
		return tmpcal.get(Calendar.DATE);
	}


	public String getMonth(int num) {
		String re = month(num);
		return re;
	}


	public String getDayOfWeek(int num) {
//		int DayOfWeek= cal.get(Calendar.DAY_OF_WEEK)+ num;
		String result = "";
		Calendar tmpcal = Calendar.getInstance();
		tmpcal.add(Calendar.DATE, num);
		int DayOfWeek = tmpcal.get(Calendar.DAY_OF_WEEK);
		
		switch(DayOfWeek) {
		case 1: result = "Sunday"; break;
		case 2: result = "Monday"; break;
		case 3: result = "Tuesday"; break;
		case 4: result = "Wednesday"; break;
		case 5: result = "Thursday"; break;
		case 6: result = "Friday"; break;
		case 7: result = "Saturday"; break;
		}
		
		return result;
	}
	
	public String month(int num) {
		String result = "";
		Calendar tmpcal = Calendar.getInstance();
		tmpcal.add(Calendar.DATE, num);
		int MONTH = tmpcal.get(Calendar.MONTH)+1;
		
		int add = 0;
		/*
		 * switch(getDay(num)) { case 1 : add= 1; break; case 2 : add= 1; break; case 3
		 * : add= 1; break; case 4 : add= 1; break; }
		 */
		
		
		switch(MONTH+add) {
		case 1: result = "January"; break;
		case 2: result = "February"; break;
		case 3: result = "March"; break;
		case 4: result = "April"; break;
		case 5: result = "May"; break;
		case 6: result = "June"; break;
		case 7: result = "July"; break;
		case 8: result = "August"; break;
		case 9: result = "September"; break;
		case 10: result = "October"; break;
		case 11: result = "November"; break;
		case 12: result = "December"; break;
		}
		
		return result;
	}
	
}

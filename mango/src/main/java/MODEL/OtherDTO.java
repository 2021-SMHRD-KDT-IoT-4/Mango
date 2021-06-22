package MODEL;

import java.time.DayOfWeek;
import java.util.Calendar;

public class OtherDTO {

	Calendar cal = Calendar.getInstance();

	private int year = cal.get(Calendar.YEAR);
	private int day;
	private int month = cal.get(Calendar.MONTH) + 1;
	private int dayOfWeek;
	
	

	public int getYear() {
		return year;
	}


	public int getDay(int num) {
		int day = cal.get(Calendar.DATE)+num;
		switch(day) {
		case 32 : day= 1;
		case 33 : day= 2;
		case 34 : day= 3;
		case 35 : day= 4;
		}
		return day;
	}


	public String getMonth() {
		String re = month(this.month);
		return re;
	}


	public String getDayOfWeek(int num) {
		int DayOfWeek= cal.get(Calendar.DAY_OF_WEEK)+ num;
		String result = "";
		
		switch(DayOfWeek) {
		case 1,8: result = "Sunday"; break;
		case 2,9: result = "Monday"; break;
		case 3,10: result = "Tuesday"; break;
		case 4,11: result = "Wednesday"; break;
		case 5,12: result = "Thursday"; break;
		case 6,13: result = "Friday"; break;
		case 7,14: result = "Saturday"; break;
		}
		
		return result;
	}
	
	public String month(int month) {
		String result = "";
		
		month = this.month;
		switch(month) {
		case 1,13: result = "January"; break;
		case 2,14: result = "February"; break;
		case 3,15: result = "March"; break;
		case 4,16: result = "April"; break;
		case 5,17: result = "May"; break;
		case 6,18: result = "June"; break;
		case 7,19: result = "July"; break;
		case 8,20: result = "August"; break;
		case 9,21: result = "September"; break;
		case 10,22: result = "October"; break;
		case 11,23: result = "November"; break;
		case 12,24: result = "December"; break;
		}
		
		return result;
	}
	
}

package MODEL;

import java.util.Calendar;

public class Time_Temp {
	Time_Temp t=null;
	Calendar cal = Calendar.getInstance();

	private int day = cal.get(Calendar.DAY_OF_MONTH)+1;

	private int month = cal.get(Calendar.MONTH);

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;

	}
	
	
	public Time_Temp(int day, int month) {
		super();
		this.day = day;
		this.month = month;
	}
	
	public Time_Temp getT () {
		int day =t.getDay();
	int month = t.getMonth();
		t = new Time_Temp(day, month);
		return t;
	}
}

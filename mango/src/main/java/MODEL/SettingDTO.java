package MODEL;

public class SettingDTO {

	private String num;
	private String setId;
	private String perfume;
	private String weather;
	private String time;
	
	
	
	public SettingDTO(String num, String setId, String perfume, String weather, String time) {
		this.num = num;
		this.setId = setId;
		this.perfume = perfume;
		this.weather = weather;
		this.time = time;
	}
	
	
	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
	
	public String getSetId() {
		return setId;
	}
	public void setSetId(String setId) {
		this.setId = setId;
	}
	public String getPerfume() {
		return perfume;
	}
	public void setPerfume(String perfume) {
		this.perfume = perfume;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

}

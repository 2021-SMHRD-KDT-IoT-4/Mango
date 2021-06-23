package MODEL;

public class InfoDTO {
	private String id;
	private String pw;
	private String perfume;
	private String song;
	private String light;
	private String pdnumber;
	private String loc;
	


	public InfoDTO(String id, String pw, String pdnumber) {
		this.id = id;
		this.pw = pw;
		this.pdnumber = pdnumber;
	}
	
	public InfoDTO(String id, String pw, String perfume, String song, String light, String pdnumber, String loc) {
		super();
		this.id = id;
		this.pw = pw;
		this.perfume = perfume;
		this.song = song;
		this.light = light;
		this.pdnumber = pdnumber;
		this.loc = loc;

	}
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPerfume() {
		return perfume;
	}
	public void setPerfume(String perfume) {
		this.perfume = perfume;
	}
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public String getLight() {
		return light;
	}
	public void setLight(String light) {
		this.light = light;
	}
	public String getPdnumber() {
		return pdnumber;
	}
	public void setPdnumber(String pdnumber) {
		this.pdnumber = pdnumber;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

}

package MODEL;

public class InfoDTO {
	private String id;
	private String pw;
	private String name;
	private String loc;
	private String perfume;
	private String pdnumber;
	
	
	public InfoDTO(String id, String pw, String name, String loc, String perfume, String pdnumber) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.loc = loc;
		this.perfume = perfume;
		this.pdnumber = pdnumber;
	}
	
	public InfoDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getPerfume() {
		return perfume;
	}
	public void setPerfume(String perfume) {
		this.perfume = perfume;
	}
	public String getPdnumber() {
		return pdnumber;
	}
	public void setPdnumber(String pdnumber) {
		this.pdnumber = pdnumber;
	}
	



}

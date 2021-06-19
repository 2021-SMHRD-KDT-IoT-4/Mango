package MODEL;

public class PerfumeDTO {

private String perTypetype;
private String perType1;
private String perType2;
private String perType3;
private String perType4;
private String perPrice;


public PerfumeDTO(String perTypetype, String perType1, String perType2, String perType3, String perType4,
		String perPrice) {
	super();
	this.perTypetype = perTypetype;
	this.perType1 = perType1;
	this.perType2 = perType2;
	this.perType3 = perType3;
	this.perType4 = perType4;
	this.perPrice = perPrice;
}


public String getPerTypetype() {
	return perTypetype;
}
public void setPerTypetype(String perTypetype) {
	this.perTypetype = perTypetype;
}
public String getPerType1() {
	return perType1;
}
public void setPerType1(String perType1) {
	this.perType1 = perType1;
}
public String getPerType2() {
	return perType2;
}
public void setPerType2(String perType2) {
	this.perType2 = perType2;
}
public String getPerType3() {
	return perType3;
}
public void setPerType3(String perType3) {
	this.perType3 = perType3;
}
public String getPerType4() {
	return perType4;
}
public void setPerType4(String perType4) {
	this.perType4 = perType4;
}
public String getPerPrice() {
	return perPrice;
}
public void setPerPrice(String perPrice) {
	this.perPrice = perPrice;
}

}

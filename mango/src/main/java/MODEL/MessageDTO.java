package MODEL;

public class MessageDTO {
private String send;
private String receive;
private String day;
private String memo;
private int num;


public MessageDTO(String send, String receive, String day, String memo, int num) {
	this.send = send;
	this.receive = receive;
	this.day = day;
	this.memo = memo;
	this.num = num;
}


public MessageDTO(String send, String receive, String memo) {
	this.send = send;
	this.receive = receive;
	this.memo = memo;
}



public String getSend() {
	return send;
}
public void setSend(String send) {
	this.send = send;
}
public String getReceive() {
	return receive;
}
public void setReceive(String receive) {
	this.receive = receive;
}
public String getDay() {
	return day;
}
public void setDay(String day) {
	this.day = day;
}
public String getMemo() {
	return memo;
}
public void setMemo(String memo) {
	this.memo = memo;
}
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}

	
}

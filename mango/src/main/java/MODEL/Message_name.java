package MODEL;

import java.util.ArrayList;

public interface Message_name {

	//메세지 보내는 메소드
	public int sendMessage(MessageDTO dto);
	
	//메세지함 열람하는 메소드
	//받은사람(사용자 이름)을 변수로 받음
	public ArrayList<MessageDTO> showMessage(String receive);
	
	//특정 메세지 열람하는 메소드
	//시퀀스 번호로 받고 열람
	public MessageDTO showOneMessage(String num);
	
	
	//특정 메세지 삭제하는 메소드
	//시퀀스 번호로 받고 삭제
	public int deleteMessage(String num);
	
	
}

package MODEL;

import java.util.ArrayList;

public interface Message_name {

	//�޼��� ������ �޼ҵ�
	public int sendMessage(MessageDTO dto);
	
	//�޼����� �����ϴ� �޼ҵ�
	//�������(����� �̸�)�� ������ ����
	public ArrayList<MessageDTO> showMessage(String receive);
	
	//Ư�� �޼��� �����ϴ� �޼ҵ�
	//������ ��ȣ�� �ް� ����
	public MessageDTO showOneMessage(String num);
	
	
	//Ư�� �޼��� �����ϴ� �޼ҵ�
	//������ ��ȣ�� �ް� ����
	public int deleteMessage(String num);
	
	
}

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
	public MessageDTO showOneMessage(String receive,String num);
	
	
	//Ư�� �޼��� �����ϴ� �޼ҵ�
	//����ڿ� ������ ��ȣ�� �ް� ����
	public int deleteMessage(String receive, String num);
	
	
	//�޽��� ��ü �����ϴ� �޼ҵ�
	//������ ��ȣ�� �ް�
	public int deleteAllMessage(String receive);
	
}

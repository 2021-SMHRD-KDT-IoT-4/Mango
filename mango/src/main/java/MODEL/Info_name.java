package MODEL;

public interface Info_name {
	//�α��� �޼ҵ�
	public int login(InfoDTO dto);
	
	//ȸ������ �޼ҵ�
	//light, setting�� ������ �� ���� �޾ƿ�
	public int join(InfoDTO dto);
	
	//ȸ������ ���� �޼ҵ�
	//pw name loc perfume pdnumber ���� ����
	public int change(InfoDTO dto);
	
	//ȸ������ ��� �޼ҵ�
	public InfoDTO showOne(String id);
	
}

package MODEL;

public interface Info_name {
	//�α��� �޼ҵ�
	public int login(InfoDTO dto);
	
	//ȸ������ �޼ҵ�
	//light�� ������ �� ���� �޾ƿ�
	public int join(InfoDTO dto);
	
	//ȸ������ ���� �޼ҵ�
	//pw perfume song pdnumber loc�� ������
	public int change(InfoDTO dto);
}

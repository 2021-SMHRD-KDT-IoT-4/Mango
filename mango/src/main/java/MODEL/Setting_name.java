package MODEL;

import java.util.ArrayList;

public interface Setting_name {
	
	//���� ������Ʈ �޼ҵ�
	public int update(SettingDTO dto);

	
	//���� ���� �޼ҵ�. setid�� �޾ƿ��� ��
	public int delete(String setId);
	
	//���� ����Ʈ ���� �޼ҵ�
	public ArrayList<SettingDTO> showSetting(String setId);
}



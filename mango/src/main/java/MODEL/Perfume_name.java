package MODEL;

import java.util.ArrayList;

public interface Perfume_name {
	
	//��� ��ü ��Ϻ��� �޼ҵ�
	public ArrayList<PerfumeDTO> showPerfume();
	
	
	//��� �������� �޼ҵ�
	//Ÿ�� ����(a��, b��, c�� ��)�� �޴´�
	public PerfumeDTO showOnePerfume(String type);
	

}

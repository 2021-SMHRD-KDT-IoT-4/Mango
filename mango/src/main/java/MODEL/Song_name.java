package MODEL;

import java.util.ArrayList;

public interface Song_name {

	//����Ʈ ���θ� ����ϴ� �޼ҵ�
	public ArrayList<SongDTO> showSong();
	
	//songŸ�� �� ������ ����ϴ� �޼ҵ�
	//�Ű������� songtype�޴´�
	public SongDTO showOneSong(String songtype);
}

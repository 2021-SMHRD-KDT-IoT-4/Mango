package MODEL;

import java.util.ArrayList;

public interface Setting_name {
	
	//설정 업데이트 메소드
	public int update(SettingDTO dto);

	
	//설정 삭제 메소드. setid만 받아오면 됨
	public int delete(String setId);
	
	//설정 리스트 보기 메소드
	public ArrayList<SettingDTO> showSetting(String setId);
}



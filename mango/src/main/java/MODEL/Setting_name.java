package MODEL;

import java.util.ArrayList;

public interface Setting_name {
	
	/*
	 * //설정 추가 메소드 public int update(SettingDTO dto);
	 */
	
	//설정 삭제 메소드. setid만 받아오면 됨
	public int delete(String setId);
}

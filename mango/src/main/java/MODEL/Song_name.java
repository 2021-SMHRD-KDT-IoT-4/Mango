package MODEL;

import java.util.ArrayList;

public interface Song_name {

	//리스트 전부를 출력하는 메소드
	public ArrayList<SongDTO> showSong();
	
	//song타입 한 가지를 출력하는 메소드
	//매개변수로 songtype받는다
	public SongDTO showOneSong(String songtype);
}

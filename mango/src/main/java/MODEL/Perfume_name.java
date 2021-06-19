package MODEL;

import java.util.ArrayList;

public interface Perfume_name {
	
	//향수 전체 목록보는 메소드
	public ArrayList<PerfumeDTO> showPerfume();
	
	
	//향수 정보보는 메소드
	//타입 변수(a형, b형, c형 등)을 받는다
	public PerfumeDTO showOnePerfume(String type);
	

}

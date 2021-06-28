package MODEL;

public interface Info_name {
	//로그인 메소드
	public int login(InfoDTO dto);
	
	//회원가입 메소드
	//light, setting를 제외한 값 전부 받아옴
	public int join(InfoDTO dto);
	
	//회원정보 변경 메소드
	//pw name loc perfume pdnumber 수정 가능
	public int change(InfoDTO dto);
	
	//회원정보 출력 메소드
	public InfoDTO showOne(String id);
	
}

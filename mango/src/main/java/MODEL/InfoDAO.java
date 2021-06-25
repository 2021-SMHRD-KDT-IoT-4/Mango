package MODEL;

import java.sql.SQLException;

public class InfoDAO extends totalDAO implements Info_name{
	
public int login(InfoDTO dto) {
	conn();
	String sql = "select * from info where id = ? and pw = ?";
	try {
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getId());
		psmt.setString(2, dto.getPw());
		
		result = psmt.executeUpdate();
		if(result !=0) {
			System.out.println("�α��� ����");
		}else {
			System.out.println("�α��� ����");
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}

	return result;
}
	
public int join(InfoDTO dto) {
		conn();
		String sql = "insert into info values(?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getLoc());
			psmt.setString(5, dto.getPerfume());
			psmt.setString(6, dto.getPdnumber());
			
			result = psmt.executeUpdate();
			
			if(result !=0) {
				System.out.println("ȸ������ ����");
			}else {
				System.out.println("ȸ������ ����");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return result;
	}
	
public int change(InfoDTO dto) {
	conn();
	String sql = "update info set pw = ?, name = ?, loc = ?, perfume = ?, pdnumber =?";
	try {
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getPw());
		psmt.setString(2, dto.getName());
		psmt.setString(3, dto.getLoc());
		psmt.setString(4, dto.getPerfume());
		psmt.setString(5, dto.getPdnumber());
		
		result = psmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return result;
	
}
	

}

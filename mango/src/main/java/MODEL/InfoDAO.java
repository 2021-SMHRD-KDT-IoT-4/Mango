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
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}

	return result;
}
	

public int join(InfoDTO dto) {
		conn();
		String sql = "insert into info values(?,?,?,?,?,?,set_seq.nextval)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getLoc());
			psmt.setString(5, dto.getPerfume());
			psmt.setString(6, dto.getPdnumber());
			
			result = psmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return result;
	}

public int join2(InfoDTO dto) {
	conn();
	try {
		String sql2 = "insert into setting values(?,'none','none','none','a')";
		psmt = conn.prepareStatement(sql2);
		psmt.setString(1, dto.getSetting());
		psmt.executeUpdate();
		String sql3 = "insert into setting values(?,'none','none','none','b')";
		psmt = conn.prepareStatement(sql3);
		psmt.setString(1, dto.getSetting());
		psmt.executeUpdate();
		String sql4 = "insert into setting values(?,'none','none','none','c')";
		psmt = conn.prepareStatement(sql4);
		psmt.setString(1, dto.getSetting());
		psmt.executeUpdate();
		String sql5 = "insert into setting values(?,'none','none','none','d')";
		psmt = conn.prepareStatement(sql5);
		psmt.setString(1, dto.getSetting());
		psmt.executeUpdate();
		String sql6 = "insert into setting values(?,'none','none','none','e')";
		psmt = conn.prepareStatement(sql6);
		psmt.setString(1, dto.getSetting());
		psmt.executeUpdate();
		String sql7 = "insert into setting values(?,'none','none','none','f')";
		psmt = conn.prepareStatement(sql7);
		psmt.setString(1, dto.getSetting());
		result = psmt.executeUpdate();
		
		
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}
	
	return result;
}





	
public int change(InfoDTO dto) {
	conn();
	String sql = "update info set pw = ?, name = ?, loc = ?, perfume = ?, pdnumber =? where id = ?";
	try {
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getPw());
		psmt.setString(2, dto.getName());
		psmt.setString(3, dto.getLoc());
		psmt.setString(4, dto.getPerfume());
		psmt.setString(5, dto.getPdnumber());
		psmt.setString(6, dto.getId());
		
		result = psmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return result;
	
}
	
public InfoDTO showOne(String id) {
	InfoDTO dto = null;
	conn();
	String sql = "select * from info where id = ?";
	try {
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		
		rs = psmt.executeQuery();
		if(rs.next()) {
		String id0 =rs.getString(1);
		String pw =rs.getString(2);
		String name =rs.getString(3);
		String loc =rs.getString(4);
		String perfume =rs.getString(5);
		String pdnumber =rs.getString(6);
		String setting =rs.getString(7);
		
		dto = new InfoDTO(id0, pw, name, loc, perfume, pdnumber, setting);
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return dto;
};





}

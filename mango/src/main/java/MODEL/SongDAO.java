package MODEL;

import java.sql.SQLException;
import java.util.ArrayList;

public class SongDAO extends totalDAO implements Song_name {

	ArrayList<SongDTO> arrdto = null;
	SongDTO dto = null;
	
	public ArrayList<SongDTO> showSong() {
		conn();
		arrdto = new ArrayList();
		String sql = "select * from song";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String song = rs.getString(1);
				String singet = rs.getString(2);
				String album = rs.getString(3);
				String songtype = rs.getString(4);
				
				dto = new SongDTO(song, singet, album, songtype);
				arrdto.add(dto);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return arrdto;
	}

	public SongDTO showOneSong(String songtype) {
		conn();
		String sql = "select * from song where songtype = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, songtype);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				String song = rs.getString(1);
				String singet = rs.getString(2);
				String album = rs.getString(3);
				String songtype0 = rs.getString(4);
				
				dto = new SongDTO(song, singet, album, songtype0);
				
				System.out.println("노래 조회 완료");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto;
	}

}

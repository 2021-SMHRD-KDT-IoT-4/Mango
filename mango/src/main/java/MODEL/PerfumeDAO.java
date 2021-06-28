package MODEL;

import java.sql.SQLException;
import java.util.ArrayList;

public class PerfumeDAO extends totalDAO implements Perfume_name{

	PerfumeDTO dto;
	ArrayList<PerfumeDTO> arrdto = null;
	
	public ArrayList<PerfumeDTO> showPerfume() {
		conn();
		arrdto = new ArrayList();
		String sql = "select * from perfume";
		try {		
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
			String pertypetype = rs.getString(1);
			String pertype1 =rs.getString(2);
			String pertype2 =rs.getString(3);
			String pertype3 =rs.getString(4);
			String pertype4 =rs.getString(5);
			String perprice =rs.getString(5);
				
			dto = new PerfumeDTO(pertypetype, pertype1, pertype2, pertype3, pertype4, perprice);
			arrdto.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return arrdto;
	};
	
	public PerfumeDTO showOnePerfume(String type) {
		conn();
		String sql = "select * from perfume where pertypetype =?";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String pertypetype = rs.getString(1);
				String pertype1 = rs.getString(2);
				String pertype2 = rs.getString(3);
				String pertype3 = rs.getString(4);
				String pertype4 = rs.getString(5);
				String perprice = rs.getString(6);
				
				dto = new PerfumeDTO(pertypetype, pertype1, pertype2, pertype3, pertype4, perprice);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto;
	};
	
	
}

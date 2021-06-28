package MODEL;

import java.sql.SQLException;
import java.util.ArrayList;

public class SettingDAO extends totalDAO implements Setting_name {
	ArrayList<SettingDTO> arrDto = null;
	SettingDTO dto = null;

	public int update(SettingDTO dto) {
		conn();
		String sql = "update setting set perfume=?, weather=?, time = ? where set_id=? and num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPerfume());
			psmt.setString(2, dto.getWeather());
			psmt.setString(3, dto.getTime());
			psmt.setString(4, dto.getSetId());
			psmt.setString(5, dto.getNum());

			result = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return result;
	}

	public int delete(String setId) {
		conn();
		String sql = "delete from setting where set_id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, setId);
			result = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return result;
	}

	public ArrayList<SettingDTO> showSetting(String setId) {
		arrDto = new ArrayList<SettingDTO>();
		conn();
		String sql = "select * from message where receive = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, setId);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
			String num =rs.getString(1);
			String setId0 =rs.getString(2);
			String perfume =rs.getString(3);
			String weather =rs.getString(4);
			String time =rs.getString(5);
			
			dto = new SettingDTO(num, setId0, perfume, weather, time);
			arrDto.add(dto);
				System.out.println("메세지가 존재합니다");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arrDto;
	};
	
	
}

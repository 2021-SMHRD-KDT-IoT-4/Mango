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
		String sql = "select * from setting where set_id = ? order by num";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, setId);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
			String set_id =rs.getString("set_id");
			String perfume =rs.getString("perfume");
			String weather =rs.getString("weather");
			String time =rs.getString("time");
			String num =rs.getString("num");
			
			dto = new SettingDTO(num, set_id, perfume, weather, time);
			arrDto.add(dto);
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arrDto;
	};
	
	
}

package MODEL;

import java.sql.SQLException;
import java.util.ArrayList;

public class MessageDAO extends totalDAO implements Message_name{
	
	MessageDTO dto = null;
	ArrayList<MessageDTO> arrDto = null;
	
	public int sendMessage(MessageDTO dto) {
		conn();
		String sql = "insert into message values(?,?,sysdate,?,message_seq.nextval)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getSend());
			psmt.setString(2, dto.getReceive());
			psmt.setString(3, dto.getMemo());
			
			result = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	
	public ArrayList<MessageDTO> showMessage(String receive) {
		arrDto = new ArrayList();
		conn();
		String sql = "select * from message where receive = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, receive);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
			String send =rs.getString(1);
			String receive0 =rs.getString(2);
			String day =rs.getString(3);
			String memo =rs.getString(4);
			int num =rs.getInt(5);
			
			dto = new MessageDTO(send, receive0, day, memo, num);
			arrDto.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arrDto;
	};
	
	
	public MessageDTO showOneMessage(String receive, String num) {
		
		conn();
		String sql = "select * from message where num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
			String send =rs.getString(1);
			String receive0 =rs.getString(2);
			String day =rs.getString(3);
			String memo =rs.getString(4);
			int num0 =rs.getInt(5);
			
			dto = new MessageDTO(send, receive0, day, memo, num0);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	};

	
	public int deleteMessage(String receive, String num) {
		conn();
		String sql = "delete from message where receive = ? and num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, receive);
			psmt.setString(2, num);
			
			result = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return result;
	};

	public int deleteAllMessage(String receive) {
		conn();
		String sql = "delete from message where receive = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, receive);
			
			result = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return result;
	};
	
	
}

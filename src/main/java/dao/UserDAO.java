package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import vo.UserVO;

public class UserDAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	public void userJoin(UserVO user) {
		String query = "INSERT INTO TBL_USER VALUES(USER_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			conn = DBConnecter.getConnection();
			pstm = conn.prepareStatement(query);
			pstm.setString(1, user.getId());
			pstm.setString(2, user.getName());
			pstm.setString(3, user.getPassword());
			pstm.setString(4, user.getGender());
			pstm.setString(5, user.getZipcode());
			pstm.setString(6, user.getAddress());
			pstm.setString(7, user.getAddressDetail());
			pstm.setString(8, user.getAddressEtc());
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
				try {
					if(pstm != null) {
						pstm.close();
					}
					if(conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (Exception e) {
					throw new RuntimeException(e);
				}
		}
	}
}

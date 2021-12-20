package integrationtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO2 {

	private ResultSet rs; 
	private PreparedStatement psmt;
	private Connection conn;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String userid = "scott";
			String userpw = "scott";

			conn = DriverManager.getConnection(url, userid, userpw);
		} catch (ClassNotFoundException e) { 

		} catch (SQLException e) {

		}
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {

		}
	}

	public int join(MemberDTO2 dto) {

		int cnt = 0;

		try {
			getConnection();

			String sql = "insert into member2 values(?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) { 
		} finally {
			close();
		}
		return cnt;
	}

	public MemberDTO2 login(MemberDTO2 dto) {

		MemberDTO2 info = null;

		String id = null;
		String pw = null;

		try {
			getConnection();

			String sql = "select * from member2 where id = ? and pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();

			if (rs.next()) {
				id = rs.getString(1);
				pw = rs.getString(2);
	
				info = new MemberDTO2(id, pw);
			}
		} catch (SQLException e) {
		} finally {
			close();
		}

		return info;
	}

}
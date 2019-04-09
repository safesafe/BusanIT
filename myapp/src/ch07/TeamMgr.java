package ch07;

import java.sql.*;

/*
 * DB와 관련된 기능의 메소드를 선언한 클래스
 */

public class TeamMgr {

	private DBConnectionMgr pool;
	
	public TeamMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	//메소드 다만들고 Mgr로 넘어가는것이 정석
	// Insert
	public boolean insertTeam(TeamBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false; //flag는 우선권을 의미
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "insert tblTeam(name,city,age,team) values(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			//? 세팅
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getCity());
			pstmt.setInt(3, bean.getAge());
			pstmt.setString(4, bean.getTeam());
			int cnt = pstmt.executeUpdate(); // 실제 실행
			if(cnt == 1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt); //connection 반납, pstmt close
		}
		return flag;
	}
	
	
	// Select
	
	// Get
	
	// Update
	
	// Delete
	
	
}

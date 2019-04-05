package ch07;

import java.sql.*;

public class mySQLConnection {
	
	// ������ mySQL�� �⺻ ���ð�
	private String driver 	= "org.gjt.mm.mysql.Driver";
	private String url		= "jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=EUC_KR";
	private String user 	= "root";
	private String pwd	= "1234";
	Connection con;
	
	public mySQLConnection() {
		try {
			// DB ���� ����
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("DB ���� ����");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void listTeam() {
		
		try {
			String sql 		= "select * from tblTeam";
			PreparedStatement pstmt 		= con.prepareStatement(sql);
			ResultSet rs 							= pstmt.executeQuery();
			System.out.println("�� ȣ\t�� ��\t��� ��\t�� ��\t�� ��\t");
			while(rs.next()) { // next�� ���� ������ true, ������ false�� ��µȴ�.
										// ���� ���� ���� �������� ������ while���� ����ȴ�.
				int num 		= rs.getInt("num");
				String name 	= rs.getString("name");
				String city 		= rs.getString("city");
				int age 			= rs.getInt("age");
				String team 	= rs.getString("team");
				System.out.println(num+ "\t" +name+ "\t" + city + "\t        "+ age + "\t" + team + "\t");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void insertTeam(String name, String city, int age, String team) {
		try {
			String sql = "insert tblTeam(name, city, age, team)" + "values(?, ?, ?, ?)";
			PreparedStatement pstmt 		= con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, city);
			pstmt.setInt(3, age);
			pstmt.setString(4, team);
			int cnt = pstmt.executeUpdate();		// insert, update, delete ���� ���Ե� Ÿ��
			if(cnt == 1)
				System.out.println("�Է� ����");
			else
				System.out.println("�Է� ����");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateTeam(int num, String name, String city, int age, String team) {
		try {
			String sql = "update tblTeam set num= ?, name=?, city=?, age=?, team=? where num = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, num);
			pstmt.setString(2, name);
			pstmt.setString(3, city);
			pstmt.setInt(4, age);
			pstmt.setString(5, team);
			pstmt.setInt(6, num);
			int cnt = pstmt.executeUpdate();		// insert, update, delete ���� ���Ե� Ÿ��
			if(cnt == 1)
				System.out.println("�Է� ����");
			else
				System.out.println("�Է� ����");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}
	public void deleteTeam(int num) {
		try {
		String sql = "delete from tblTeam where num = ?";
		PreparedStatement pstmt 		= con.prepareStatement(sql);
		pstmt.setInt(1, num);
		int cnt = pstmt.executeUpdate();		// insert, update, delete ���� ���Ե� Ÿ��
		if(cnt == 1)
			System.out.println("�Է� ����");
		else
			System.out.println("�Է� ����");
	} catch (Exception e) {
		e.printStackTrace();
	}
	}
	public static void main(String[] args) {
		mySQLConnection mcon = new mySQLConnection();
		mcon.updateTeam(4, "�ŵ���", "�λ�", 38, "MC");
		mcon.listTeam();
	}

}

package dataDb;

import java.sql.Connection;
import java.sql.PreparedStatement;

import data.oracle.DbConnect;

public class MemberDB {
	DbConnect db = new DbConnect();

public	void insertMember(MemberDto dto)
{
	String sql="insert into member values (seq_mini.nextval,?,?,?,?,?,?,?,sysdate)";
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	
	pstmt = conn.prepareStatement(sql);
}

}

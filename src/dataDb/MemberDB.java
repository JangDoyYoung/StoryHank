package dataDb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.oracle.DbConnect;
import dataDto.MemberDto;

public class MemberDB {
	DbConnect db = new DbConnect();

public	void insertMember(MemberDto dto)
	{
		String sql="insert into member values (seq_mini.nextval,?,?,?,?,?,?,sysdate)";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
	
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getName());
			pstmt.setString(2, dto.getNickname());
			pstmt.setString(3, dto.getId());
			pstmt.setString(4, dto.getPass());
			pstmt.setString(5, dto.getEmil1());
			pstmt.setString(6, dto.getEmail2());
		
			pstmt.execute();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	public boolean idSearch(String id)
	{
		boolean find = false;
		String sql = "select * from member where id=?";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
				find=true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return find;
	}
	public List<MemberDto> getAllMember()
	{
		String sql="select * from member order by num asc";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MemberDto> list=new Vector<MemberDto>();
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				MemberDto dto = new MemberDto();
				
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setNickname(rs.getString("nickname"));
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setEmil1(rs.getString("emil1"));
				dto.setEmail2(rs.getString("email2"));
				dto.setGaipday(rs.getTimestamp("gaipday"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
		
	}








































}

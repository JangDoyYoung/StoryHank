<?xml version="1.0" encoding="UTF-8"?>
<%@page import="dataDto.GuestBookDto"%>
<%@page import="dataDb.GuestBookDB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
		request.setCharacterEncoding("utf-8");
	
		GuestBookDB db = new GuestBookDB();
		
		List<GuestBookDto> list = db.getList();
%>
<result>
	<%
		for(GuestBookDto dto : list)
		{%>
			<memodata>
				<num><%= dto.getNum() %></num>
				<subject><%= dto.getSubject() %></subject>
				<nickname><%= dto.getNickname() %></nickname>
				<wdate><%= dto.getWriteday() %></wdate>
			</memodata>
		<%}
	%>
</result>

<?xml version="1.0" encoding="UTF-8"?>
<%@page import="datadto.GuestBookDto"%>
<%@page import="dataDb.GuestBookDB"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String subject = request.getParameter("subject");
	
	System.out.println(subject);
	
	GuestBookDB db = new GuestBookDB();
	GuestBookDto dto = new GuestBookDto();
	
	dto.setSubject(subject);
	
	db.insertGuest(dto);
%>
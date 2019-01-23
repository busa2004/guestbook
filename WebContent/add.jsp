<%@page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");

	String firstName = request.getParameter("name");
	String lastName = request.getParameter("password");
	String email = request.getParameter("message");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setName(firstName);
	vo.setPassword(lastName);
	vo.setMessage(email);
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect("/guestbook1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
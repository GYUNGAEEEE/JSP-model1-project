<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	Map<String, String> userDB = new HashMap<>();
	userDB.put("user1", "pwd1");
	userDB.put("user2", "pwd2");
	userDB.put("user3", "pwd3");
	userDB.put("user4", "pwd4");
	
	String userID = request.getParameter("userID");
	String userPWD = request.getParameter("userPWD");
	
	boolean isError = false;
	if(userDB.containsKey(userID)) {
		String DBPWD = userDB.get(userID);
		if(DBPWD.equals(userPWD)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
			dispatcher.forward(request, response);
		} else {
			isError = true;
			request.setAttribute("errMSG", "비밀번호가 일치하지 않습니다.");
		}
	} else {
		isError = true;
		request.setAttribute("errMSG", "존재하지 않는 ID입니다.");
	}
	
	if(isError) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("loginForm.jsp");
		dispatcher.forward(request, response);
	}
%>
</body>
</html>
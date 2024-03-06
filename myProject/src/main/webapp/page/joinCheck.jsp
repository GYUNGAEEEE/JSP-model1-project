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
	
	String userName = request.getParameter("userName");
	String userID = request.getParameter("userID");
	String userPWD = request.getParameter("userPWD");
	String checkPWD = request.getParameter("checkPWD");
	
	boolean isError = false;
	if(userDB.containsKey(userID)) {
		//아이디중복
		isError = true;
		request.setAttribute("errMSG", "이미 가입된 아이디입니다.");
	} else {
		if(userPWD.equals(checkPWD)) {
			//가입성공
			session.setAttribute("USERNAME", userName);
			session.setAttribute("USERID", userID);
			session.setAttribute("USERPWD", userPWD);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("joinOk.jsp");
			dispatcher.forward(request, response);
		} else {
			//비번불일치
			isError = true;
			request.setAttribute("errMSG", "비밀번호가 일치하지 않습니다.");
		}
	}
	
	if(isError) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("joinForm.jsp");
		dispatcher.forward(request, response);
	}
%>
</body>
</html>
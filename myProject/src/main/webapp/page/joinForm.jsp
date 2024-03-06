<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<style>
	* {
		font-family: "Noto Sans KR", sans-serif;
	}
	body {
		background-color: #EBF7FF;
		margin: 0px;
	}
	.mid {
		display: flex;
		align-items: center;
		justify-content: center;
		height: 100vh;
	}
	.joinForm {
		background-color: #8EACCD;
		border-radius: 7px;
		text-align: center;
		padding: 10px 20px;
	}
	.set {
		display: flex;
		flex-direction: row;
		align-items: center;
		background-color: #ffffff;
		margin: 20px 10px;
		border-radius: 7px;
	}
	.icon {
		text-align: center;
	}
	form {
		padding-right: 15px;
		padding-left: 15px;
	}
	img {
		height: 25px;
		width: auto;
		text-align: center;
		margin-left: 10px;
	}
	input {
		padding: 15px;
		margin: 0px 10px 0px 0px;
		border: none;
		font-size: 1.2em;
	}
	input[type="submit"] {
		width: 200px;
		background-color: #F9F3CC;
		cursor: pointer;
		border-radius: 7px;
		margin: 0px 0px 10px;
	}
	input[type="submit"]:hover {
	  	background-color: #ffcc99;
	}
</style>
</head>
<body>
<%
	String errMSG = (String)request.getAttribute("errMSG");
	if(errMSG != null) {
%>
		<script>alert("<%=errMSG %>");</script>
<%
	}
%>
	<div class="mid">
		<div class="joinForm">
			<p>회원가입</p>
			<form action="joinCheck.jsp" method="post">
				<label><div class="set"><div class="icon"><img src="/myProject/img/person-vcard-fill.svg"/></div><div class="inputbox"><input type="text" name="userName" placeholder="이름" required="required"/></div></div></label>
				<label><div class="set"><div class="icon"><img src="/myProject/img/person-fill.svg"/></div><div class="inputbox"><input type="text" name="userID" placeholder="아이디" required="required"/></div></div></label>
				<label><div class="set"><div class="icon"><img src="/myProject/img/lock-fill.svg"/></div><div class="inputbox"><input type="password" name="userPWD" placeholder="비밀번호" required="required"/></div></div></label>
				<label><div class="set"><div class="icon"><img src="/myProject/img/key-fill.svg"/></div><div class="inputbox"><input type="password" name="checkPWD" placeholder="비밀번호 확인" required="required"/></div></div></label>
				<input type="submit" value="가입"/>
			</form>
		</div>
	</div>
</body>
</html>
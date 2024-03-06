<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<style>
	body {
		background-color: #EBF7FF;
		font-size: 1.2em;
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
	}
	.icon {
		text-align: center;
		margin: 10px;
	}
	form {
		padding-right: 15px;
		padding-left: 15px;
	}
	img {
		height: 25px;
		width: auto;
	}
	input {
		padding: 15px;
		margin: 10px;
		border: none;
		font-size: 1em;
	}
	input[type="submit"] {
		width: 271px;
		background-color: #F9F3CC;
		cursor: pointer;
		border-radius: 7px;
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
			<form action="joinCheck.jsp" method="post">
				<div class="set"><div class="icon"><img src="/myProject/img/person-vcard-fill.svg"/></div><div class="inputbox"><input type="text" name="userName" placeholder="이름" required="required"/></div></div>
				<div class="set"><div class="icon"><img src="/myProject/img/person-fill.svg"/></div><div class="inputbox"><input type="text" name="userID" placeholder="아이디" required="required"/></div></div>
				<div class="set"><div class="icon"><img src="/myProject/img/lock-fill.svg"/></div><div class="inputbox"><input type="password" name="userPWD" placeholder="비밀번호" required="required"/></div></div>
				<div class="set"><div class="icon"><img src="/myProject/img/key-fill.svg"/></div><div class="inputbox"><input type="password" name="checkPWD" placeholder="비밀번호 확인" required="required"/></div></div>
				<input type="submit" value="가입"/>
			</form>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MAIN</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Madimi+One&display=swap" rel="stylesheet">
<style>
	* {
		font-family: "Noto Sans KR", sans-serif;
	}
	body {
		background-color: #EBF7FF;
		margin: 0px;
	}
	.main {
		font-family: "Madimi One", sans-serif;
		font-weight: 400;
		font-style: normal;
		font-size: 50px;
		text-decoration: none;
		color: black;
	}
	.mainp {
		margin: 20px;
	}
	.headerbox {
		display: flex;
		flex-direction: row;
		align-items: center;
	}
	.profile {
		text-align: right;
		margin-right: 10px;
	}
	.blank {
		width: 100%;
	}
	.username {
    	display: inline-block;
    	white-space: nowrap;
    	margin-right: 20px;
	}
	nav>ul{
        list-style: none;
        text-align: center;
        border-top: 1px solid #8EACCD;
        border-bottom: 1px solid #8EACCD;
        padding: 10px 0;
        margin: 0px;
    }
    nav li{
        display: inline;
        padding: 0 10px;
        text-transform: uppercase;
        letter-spacing: 10px;
    }
    nav a{
        text-decoration: none;
        color: black;
    }
    nav a:hover{
        text-decoration: underline;
    }
    .imgbox {
        display: flex;
    	justify-content: center;
    	align-items: center;
    	height: 500px;
    	margin: 25px;
    }
    .woody {
        max-width: 100%;
   		max-height: 100%;
    }
</style>
</head>
<body>
<%
	String userName = (String)session.getAttribute("LOGINID");
%>
	<header>
		<div class="headerbox">
			<div><p class="mainp"><a href="main.jsp" class="main">WOODY</a></p></div>
			<div class="blank"></div>
			<div class="profile"><img src="/myProject/img/profile.png"/></div>
			<div class="username"><%=userName %> 님</div>
		</div>
	</header>
	
	<nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">News</a></li>
            <li><a href="#">My Account</a></li>
            <li><a href="#">Contacts</a></li>
        </ul>
    </nav>
    
    <div class="imgbox">
    	<img src="/myProject/img/woody.jpg" class="woody"/>
    </div>
</body>
</html>
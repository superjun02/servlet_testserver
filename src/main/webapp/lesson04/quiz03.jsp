<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<title>홍당무 마켓</title>
</head>
<style>

.top {
	height: 180px;
	background-color: #E97341;
}

header {
	height: 60%;
	font-size: 50px;
}

nav {
	height: 40%;
}

.nav-item {
	font-size: 20px;
}

.contents {
	height: 65%;
}

.text {
	color: #E97341;
}

footer {
	height: 150px;
}

.video {
	width: 320px;
	height: 220px;
}

.side {
	height: 350px;
	border-style: solid;
	border-color: #E97341;
}
.side:hover {
	background: #ffeceb;
}
.noImage {
	width: 320px;
	height: 240px;
	font-size: 30px;
}
</style>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	
	mysqlService.connection();
	
	String selectQuery1 = "select A.*, B.* from seller AS A join used_goods AS B on A.id = B.sellerId order by B.id DESC";
	ResultSet result = mysqlService.select(selectQuery1);
%>
	<div class="container">
		<div class="top">
			<header
				class="text-weight-bold text-white d-flex justify-content-center align-items-center">
				HONG당무마켓
			</header>
			<nav>
				<ul
					class="nav nav-fill w-100 h-100  d-flex justify-content-center align-self-center">
					<li
						class="nav-item d-flex justify-content-center align-self-center"><a
						href="/lesson04/quiz03.jsp" class="nav-link font-weight-bold text-white w-100">리스트</a></li>
					<li
						class="nav-item d-flex justify-content-center align-self-center"><a
						href="/lesson04/quiz03_1.jsp" class="nav-link font-weight-bold text-white w-100">물건
							올리기</a></li>
					<li
						class="nav-item d-flex justify-content-center align-self-center"><a
						href="#" class="nav-link font-weight-bold text-white w-100">마이
							페이지</a></li>
				</ul>
			</nav>
		</div>
		<div class="contents d-flex justify-content-between flex-wrap">
			<%
				while (result.next()) {	
			%>
			<div class="side mt-3" OnClick="location.href='#'">
				<div class="video m-2">
				<%
					if (result.getString("picture") == (null)) {
				%>
					<div class = "noImage text-secondary d-flex justify-content-center align-items-center">이미지 없음</div>
				<%
					} else {
				%>
					<img
						src="<%= result.getString("picture") %>"
						alt="사진" width="320" height="240"><br> 
				<% 
					}
				%>
					<div class="mt-2">
						<b><%= result.getString("title") %></b><br> 
						<small><%= result.getInt("price") %></small><br>
						<b class="text"><%= result.getString("nickname") %></b>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
		<footer class="d-flex justify-content-center align-items-center">
			<address class="text-secondary">
				<small>Copyright 2021. HONG All Rights Reserved.</small>
			</address>
		</footer>
	</div>
</body>
</html>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<style>

header {
	height: 10%;
}

nav {
	height: 5%;
}

.contents {
	height: 75%;
}

footer {
	height: 10%;
}
</style>
<%
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
	list.add(map);
	
	
	String category = request.getParameter("category");	
	
%>
<body>
	<div class="container">
		<header class="d-flex justify-content-center align-items-center text-danger">
			<h1>Sk Broadband IPTV</h1>
		</header>
		<nav class="bg-danger">
			<ul class="nav nav-fill w-100 d-flex justify-content-end pl-4">
				<li class="nav-item"><a href="/lesson03/quiz01/tamplate.jsp?category=전체"
					class="nav-link font-weight-bold text-white">전체</a></li>
				<li class="nav-item"><a href="/lesson03/quiz01/tamplate.jsp?category=지상파"
					class="nav-link font-weight-bold text-white">지상파</a></li>
				<li class="nav-item"><a href="/lesson03/quiz01/tamplate.jsp?category=드라마"
					class="nav-link font-weight-bold text-white">드라마</a></li>
				<li class="nav-item"><a href="/lesson03/quiz01/tamplate.jsp?category=예능"
					class="nav-link font-weight-bold text-white">예능</a></li>
				<li class="nav-item"><a href="/lesson03/quiz01/tamplate.jsp?category=영화"
					class="nav-link font-weight-bold text-white">영화</a></li>
				<li class="nav-item"><a href="/lesson03/quiz01/tamplate.jsp?category=스포츠"
					class="nav-link font-weight-bold text-white">스포츠</a></li>
			</ul>
		</nav>
		<div class="contents">
			<table class="table">
				<thead>
					<tr>
						<th class="col-2 text-center">채널</th>
						<th class="col-5 text-center">채널명</th>
						<th class="col-5 text-center">카테고리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<%
							for (int i = 0; i < list.size(); i++) {
								if (list.get(i).get("category").equals(category)) {
						%>
					<tr>
						<td class="text-center"><%= list.get(i).get("ch") %></td>
						<td class="text-center"><%= list.get(i).get("name") %></td>
						<td class="text-center"><%= list.get(i).get("category") %></td>
					</tr>
						<%
								} else if ((category == null) || (category.equals("전체"))) {
									
						%>
					<tr>
						<td class="text-center"><%= list.get(i).get("ch") %></td>
						<td class="text-center"><%= list.get(i).get("name") %></td>
						<td class="text-center"><%= list.get(i).get("category") %></td>
					</tr>	
						<%			
								}
							}
						%>
					</tr>
				</tbody>
		    </table>
		</div>
		<footer class="d-flex justify-content-center align-items-center">
			<address>Copyright 2021. marondal All Rights Reserved.</address>
		</footer>
	</div>
</body>
</html>
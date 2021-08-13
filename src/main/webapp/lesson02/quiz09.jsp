<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>기념일 계산</title>
</head>
<style>
	.text1 {
		font-size: 40px;
	}
</style>
<body>
	<div class="container">
		<h2>오늘부터 1일</h2>
		<%
			for (int i = 1; i <= 10; i++) {
				int num = i * 100;
				Calendar today = Calendar.getInstance();
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
				
				today.add(Calendar.DATE, +num);
				String date = sdf.format(today.getTime());
		%>
		<div class="text1">
			<%= num %>일: <span class="text-danger"> <%= date %> </span>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>
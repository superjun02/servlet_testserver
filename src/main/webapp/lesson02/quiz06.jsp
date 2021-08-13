<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>장보기 목록</title>
</head>
<style>
	th, td, tr {
		text-align: center;
	}
</style>
<body>
	<div class="container">
		<div class="d-flex justify-content-center mt-3">
			<h2>장보기 목록</h2>
		</div>	
		<div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>품목</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<%
							List<String> goodsList = Arrays.asList(new String[]{ 
							    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
							});
						
							Iterator<String> iter = goodsList.iterator();
							int num = 1;
							
							while (iter.hasNext()) {
								String title = iter.next();
						%>
					<tr>
						<th><%= num %></th>
						<td><%= title %></td>
					</tr>
						<%
							num++;	
						}
						%>
					</tr>
				</tbody>
		    </table>
		</div>
	</div>
</body>
</html>
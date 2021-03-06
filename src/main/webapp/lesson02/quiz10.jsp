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
<title>이번달 달력</title>
</head>
<style>
	td {
		font-size:36px;
	}
</style>
<body>
<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 EEE");
	
	String day = sdf.format(today.getTime());
	String num = day.substring(10, 12);
	String year = day.substring(0, 4);
	String month = day.substring(6, 8);
	
	int maxDate = today.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	int date = (Integer.valueOf(num)) - 1;
	
	today.add(Calendar.DATE, -date);
%>
	<div class="container">
		<div class="d-flex justify-content-center mt-3">
			<h2><%= year %>-<%= month %></h2>
		</div>	
		<div>
			<table class="table">
				<thead>
					<tr class="text-center">
						<th class="text-danger">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-center">
						<% // 첫번쨰 줄 여백 설정
							String dayOfMonth = sdf.format(today.getTime()).substring(14, 15);
							int count = 0;
							
							if (dayOfMonth.equals("월")) {
								count = 1;
							} else if (dayOfMonth.equals("화")) {
								count = 2;
							} else if (dayOfMonth.equals("수")) {
								count = 3;
							} else if (dayOfMonth.equals("목")) {
								count = 4;
							} else if (dayOfMonth.equals("금")) {
								count = 5;
							} else if (dayOfMonth.equals("토")) {
								count = 6;
							}
							
							for (int i = 0; i < count; i++) {
						%>
						<td></td>
						<%		
							}
						%>
						<%
							int number = 1;
						
							while(true) {							
								dayOfMonth = sdf.format(today.getTime()).substring(14, 15);
						%>
						<td><%= number %></td>
						<%		
								today.add(Calendar.DATE, +1);
								number++;
								if (dayOfMonth.equals("토")) {
									break;
								}
							}
						%>
					</tr>
					<%
						while(number <= maxDate) {				
					%>
					<tr class="text-center">
						<%
							while(true) {							
								dayOfMonth = sdf.format(today.getTime()).substring(14, 15); // 요일 생성
						%>
						<td><%= number %></td>
						<%		
								today.add(Calendar.DATE, +1);
								number++;
								if (dayOfMonth.equals("토") || number > maxDate) { // 조건으로 분기설정
									break;
								}
							}
						%>
					</tr>
					<%			
						}
					%>				
				</tbody>
		    </table>
		</div>
	</div>
</body>
</html>
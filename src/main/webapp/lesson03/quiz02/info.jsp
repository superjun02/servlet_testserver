<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://image.bugsm.co.kr/album/images/500/201991/20199158.jpg");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "http://image.yes24.com/momo/TopCate650/MidCate005/64130288.jpg");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>
<%
String type = request.getParameter("id");
int id = Integer.valueOf(type);

int min = (int) musicList.get(id - 1).get("time") / 60;
int sec = (int) musicList.get(id - 1).get("time") % 60;
%>
<div class="mt-2 ml-1 mb-2">
		<h5>
			<b>곡정보</b>
		</h5>
	</div>
<div class="d-flex contents1 border border-success">
	<div class="col-2 d-flex justify-content-center align-items-center m-2">
		<img alt="프로필사진" src="<%=musicList.get(id - 1).get("thumbnail")%>"
			width="180">
	</div>
	<div class="col-10 mt-2">
		<font size=6><%=musicList.get(id - 1).get("title")%></font><br>
			<div class="text-success"><b><%=musicList.get(id - 1).get("singer")%></b></div>
		<div>
			<table>
				<tbody>
					<tr>
						<td><small>앨범</small></td>
						<td class="pl-3"><small><%=musicList.get(id - 1).get("album")%></small></td>
					</tr>
					<tr>
						<td><small>재생시간</small></td>
						<td class="pl-3"><small><%= min %>:<%= sec %></small></td>
					</tr>
					<tr>
						<td><small>작곡가</small></td>
						<td class="pl-3"><small><%=musicList.get(id - 1).get("composer")%></small></td>
					</tr>
					<tr>
						<td><small>작사가</small></td>
						<td class="pl-3"><small><%=musicList.get(id - 1).get("lyricist")%></small></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="contents2">
	<div class="mt-3 ml-1 mb-2">
		<h5>
			<b>가사</b>
		</h5>
		<hr>
		<small>가사 정보 없음</small>
	</div>
</div>
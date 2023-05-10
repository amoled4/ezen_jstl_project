<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String food[] = {"사과", "배", "귤", "감", "딸기", "바나나"};
		request.setAttribute("f", food);  // request 객체에 담을 때 setAttribute 사용
	%>
	<!-- forEach : 반복문
		items : 대상배열, collection
		var : 요소를 저장할 변수
		varStatus : index와 count 속성이 있다. 변수.count, 변수.index (index는 0부터, count는 1부터 시작) -->
	<c:forEach items="${requestScope.f }" var="fname" varStatus="order">
		count : ${order.count } 
		index : ${order.index } 
		${fname } <br>
	</c:forEach>
</body>
</html>
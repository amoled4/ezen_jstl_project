<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.PersonVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL choose 연습</title>
</head>
<body>
	<!-- model 안에 PersonVO class 생성 
		멤버변수는 name, age만 추가 생성자, getter/setter만 추가 -->
		
	<!-- EL 방식으로 name, age를 출력 -->
	<%
		PersonVO person = new PersonVO("홍길동",22);
		request.setAttribute("pvo", person);
	%>
	이름 : ${pvo.name } <br>
	나이 : ${pvo.age }세 <br>
	
	<hr>
	
	<!-- 나이가 20살 이상이면 성인입니다. -->
	<c:if test="${pvo.age >= 20 }">
		나이가 20살 이상이면 나오는 글자 <br>
		${pvo.name }은 성인입니다.
	</c:if>
	
	<hr>
	
	<!-- 다중 조건을 사용할 경우 choose, when, otherwise -->
	<c:choose>
		<c:when test="${pvo.age >= 20 }">
		성인입니다. <br>
		</c:when>
		
		<c:when test="${pvo.age >=10 }">
		청소년입니다. <br>
		</c:when>
		
		<c:otherwise>
			유아입니다. <br>
		</c:otherwise>
	</c:choose>
	
	<hr>
	
	
</body>
</html>
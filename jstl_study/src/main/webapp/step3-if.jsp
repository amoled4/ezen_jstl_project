<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL if</title>
</head>
<body>
	<!-- JSTL if 조건 -->
	<c:if test="true">
		<!-- test 조건이 참일 경우에만 실행 -->
		true이므로 실행되어야 함
	</c:if>
	<!-- Query String 방식 -->
	<a href="step3-if.jsp?age=13&nick=apple">step3-if 다시 호출</a>
	<br><br>
	이름 : ${param.nick } <br>
	나이 : ${param.age } <br>
	<hr>
	
	
	<!-- 나이가 5보다 크면 출력 -->
	<c:if test="${param.age > 5 && param.nick == 'apple' }">
		나이가 5보다 크고 닉네임이 apple인 경우 출력되는 글자 <br>
		${param.nick }의 나이가 5살보다 많습니다.
	</c:if>
	
</body>
</html>
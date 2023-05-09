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
		PersonVO person = new PersonVO("홍길동",20);
		request.setAttribute("pvo", person);
	%>
	이름 : ${pvo.name } <br>
	나이 : ${pvo.age }세 <br>
	
</body>
</html>
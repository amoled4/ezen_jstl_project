<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// post 방식의 한글 처리 (인코딩 설정)
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	strong{
	color: green;
	font-size: 20px}
</style>
</head>
<body>

	<!-- step6-form.jsp, step6-action.jsp
		form 태그 안에 check box 생성
		주문자 : 이름
		체크박스의 내용물을 선택하여 action으로 전송
		
		action에서 c:forEach로 체크박스의 값을 배열로 받아 화면에 반복찍기 -->
		
			<strong>**** ${param.name } 님의 주문 목록 ****</strong> <br>
		<c:forEach items="${paramValues.fruit }" var="fname" varStatus="order">
			${order.count }번 ${fname } <br>
		</c:forEach>
		<hr>
		<a href="step6-form.jsp">이전으로 돌아가기</a>
		
		
</body>
</html>
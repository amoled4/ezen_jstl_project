<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step5-action</title>
</head>
<body>
	<!-- step5-form.jsp : 이름과 나이를 입력받기 step5-action.jsp로 전송 -->
	<!-- step5-action.jsp : 값을 받아 이름 출력하고, 나이 출력 후 c:choose-->
	<!-- 나이가 20살 이상이면 성인, 15세 이상이면 청소년, 5살이상이면 어린이, 1살이상이면 유아, 
	나머지는 아직 태어나지 않았습니다. -->
	<a href="step5-form.jsp">step5-form으로 이동</a>
	<hr>
	
	이름 : ${param.name } <br>
	나이 : ${param.age }세 <br>
	<hr>
	
	<c:choose>
		<c:when test="${param.age >=20 }">
			성인 <br>
		</c:when>
		<c:when test="${param.age >=15 }">
			청소년 <br>
		</c:when>
		<c:when test="${param.age >=5 }">
			어린이 <br>
		</c:when>
		<c:when test="${param.age >=1 }">
			유아 <br>
		</c:when>
		
		<c:otherwise>
			아직 태어나지 않았습니다. <br>
		</c:otherwise>
		
		
	</c:choose>
	
</body>
</html>
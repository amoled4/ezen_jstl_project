<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step5-form</title>
</head>
<body>
	<!-- step5-form.jsp : 이름과 나이를 입력받기 step5-action.jsp로 전송 -->
	<!-- step5-action.jsp : 값을 받아 이름 출력하고, 나이 출력 후 c:choose-->
	<!-- 나이가 20살 이상이면 성인, 15세 이상이면 청소년, 5살이상이면 어린이, 1살이상이면 유아, 
	나머지는 아직 태어나지 않았습니다. -->
	<a href="step5-action.jsp">step-action으로 이동</a>
	<hr>
	<form action="step5-action.jsp">
	이름 : <input type="text" name="name"> <br>
	나이 : <input type="text" name="age"> <br>
	<input type="submit" value="전송">
	</form>
</body>
</html>
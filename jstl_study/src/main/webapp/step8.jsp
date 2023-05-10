<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.PersonVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table, th, td{
	border: 1px solid black;
	text-align: center;
	border-collapse: collapse;}
</style>
</head>
<body>
	<%
		// PersonVO 객체를 이용하여 list에 여러 명을 추가 (5명)
		// list를 request 객체에 담아 jsp 전송
		ArrayList<PersonVO> person = new ArrayList<>();
		person.add(new PersonVO("홍길동",20));
		person.add(new PersonVO("홍길순",34));
		person.add(new PersonVO("강감찬",19));
		person.add(new PersonVO("신사임당",25));
		person.add(new PersonVO("이성계",7));
		request.setAttribute("personList", person);
	%>
	
	<!-- 테이블을 생성 -->
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>연령대</th>
		</tr>
			
	<c:forEach items="${requestScope.personList }" var="p" varStatus="num">
	
		<tr>
			<td>${num.count }</td>
			<td>${p.name }</td>
			<td>${p.age }</td>
			<td>
				<c:if test="${p.age >=20 }">
					성인
				</c:if>
				<c:if test="${p.age < 20 }">
					미성년
				</c:if>
			</td>
			
		</tr>
	
	</c:forEach>
	</table>
</body>
</html>
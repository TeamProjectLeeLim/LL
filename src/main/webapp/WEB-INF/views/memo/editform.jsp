<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>editform.jsp</title>
</head>
<body>
<form:form  modelAttribute="u" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Week</td><td><form:input path="week" /></td></tr>
		<tr><td>Class Name</td><td><form:input path="clas" /></td></tr>
		<tr><td>Title</td><td><form:input path="title" /></td></tr>
		<tr><td>Keyword</td><td><form:input path="keyword" /></td></tr>
		<tr><td>Content</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
		<tr><td>Understanding</td><td><form:input path="understanding" /></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기"/>

</form:form>
</body>
</html>

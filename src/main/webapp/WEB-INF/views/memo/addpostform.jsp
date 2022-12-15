<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <%--    <link rel="stylesheet" href="${path}/resources/css/style.css" type="text/css"/>--%>
</head>
<body>
<form action="addok" method="post">
    <table id = "edit">
        <tr><td>Week</td><td><input type="text" name="week"/></td></tr>
        <tr><td>Class Name</td><td><input type="text" name="clas"/></td></tr>
        <tr><td>Title</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Keyword</td><td><input type="text" name="keyword"/></td></tr>
        <tr><td>Content</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr><td>Understanding</td><td>
        <div>
            <input type="radio" id="1" name="check">
            <label for="1">1</label>
            <input type="radio" id="2" name="check">
            <label for="2">2</label>
            <input type="radio" id="3" name="check">
            <label for="3">3</label>
        </div>
        </td></tr>

    </table>
    <input type="reset" value="Reset">
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>
</body>
</html>
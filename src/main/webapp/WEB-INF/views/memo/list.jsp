<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Memo</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deletepost.jsp?id=' + id;
        }
    </script>
</head>
<body>

<h1>수업 내용 정리</h1>

<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Week</th>
        <th>Class Name</th>
        <th>Title</th>
        <th>Keyword</th>
        <th>Content</th>
        <th>RegDate</th>
        <th>Understanding</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.week}</td>
            <td>${u.clas}</td>
            <td>${u.title}</td>
            <td>${u.keyword}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td>${u.understanding}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="delete_ok/${u.seq}">Delete</a></td>
                <%--        <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>--%>
        </tr>
    </c:forEach>
</table>

<br/><a href="add">Add New Post</a>
</body>
</html>
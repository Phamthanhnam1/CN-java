<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sach sinh vien</title>
</head>
<body>
<h2>Danh sach sinh vien</h2>

<form method="get" action="/students">
    <input type="text" name="keyword" value="${keyword}" placeholder="Tim ten hoac email"/>
    <button type="submit">Tim kiem</button>
</form>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Ten</th>
        <th>Email</th>
        <th>Điem</th>
    </tr>
    <c:forEach var="student" items="${studentPage.content}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>${student.score}</td>
        </tr>
    </c:forEach>
</table>

<div>
    <c:if test="${studentPage.totalPages > 1}">
        <c:forEach begin="0" end="${studentPage.totalPages - 1}" var="i">
            <a href="/students?page=${i}&keyword=${keyword}">${i + 1}</a>
        </c:forEach>
    </c:if>
</div>

</body>
</html>

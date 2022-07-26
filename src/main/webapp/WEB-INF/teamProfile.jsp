<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for validations -->
<%@ page isErrorPage="true"%>



<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/style.css"/>
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type = "text/javascript" src ="/js/script.js"></script>

    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<div class="container">
    <h1>${ team.city } ${ team.teamName }'s Details</h1>
    <p>Ballpark: ${ team.ballpark }</p>
    <p>${ team.teamName } are located in: ${ team.city }, ${ team.state }</p>

    <c:forEach var="player" items="${ team.players}">
        <c:out value="${ player.firstName }" />
    </c:forEach>


</div>

</body>
</html>
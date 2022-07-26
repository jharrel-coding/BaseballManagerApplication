<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- for validations -->
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/style.css" />
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/script.js"></script>

    <meta charset="UTF-8">
    <title>Teams</title>
</head>
<body>
<div class="container">
    <h2>All Teams</h2>
    <a href="/teams/new">Add a New Team</a>
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th>Team Name</th>
            <th>League</th>
            <th>Ballpark</th>
            <th>City, State</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ allTeams }" var="team">
            <tr>
                <td>${ team.teamName }</td>
                <td>
                    <c:choose>
                        <c:when test="${ team.league == true }">
                        American League
                        </c:when>
                        <c:otherwise>
                        National League
                        </c:otherwise>
                    </c:choose>
                <td>${ team.ballpark }</td>
                <td>${ team.city }, ${ team.state}</td>

                <td><a href= "/teams/${ team.id }">View</a> | <a href="/teams/${ team.id }/edit">Edit</a> |
                    <form action="/teams/${ team.id }/destroy" method = "POST">
                        <input type="hidden" name="_method" value="delete">
                        <input type="submit" value="Delete" /></form>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for validations -->
<%@ page isErrorPage="true"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>



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
    <title>Insert title here</title>
</head>

<body>
    <section>
        <div class="container">
        <form:form action="/games/create" method="POST" modelAttribute="newGame">

            <div class="container">
                <div class="row justify-content-around">
                    <div class="col-4">
                        <div class="row">
                            <form:label path="homeTeam" class="form-label">Home Team</form:label>
                            <form:select path="homeTeam">
                                <c:forEach var = "team" items = "${ allTeams }">
                                    <option value="${ team.teamName }">${ team.teamName }</option>
                                </c:forEach>
                            </form:select>
                            <form:errors path="homeTeam" class="text-danger" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row justify-content-around">
                    <div class="col-4">
                        <div class="row">
                            <form:label path="awayPitcher" class="form-label">Home Team</form:label>
                            <form:select path="awayPitcher">
                                <c:forEach var = "player" items = "${ allPlayers }">
                                    <option value="${ player.id }">${ player.fullName() }, ${ player.playerPosition }</option>
                                </c:forEach>
                            </form:select>
                            <form:errors path="homeTeam" class="text-danger" />
                        </div>
                    </div>
                </div>
            </div>
            
            </form:form>

</body>
</html>
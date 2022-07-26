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
                        <%--        HOME PLAYER SELECTION       --%>
                    <div class="row">
                        <form:label path="homeHitter1" class="form-label">Player One</form:label>
                        <form:select path="homeHitter1">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter1" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homeHitter2" class="form-label">Player One</form:label>
                        <form:select path="homeHitter2">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter2" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homeHitter3" class="form-label">Player One</form:label>
                        <form:select path="homeHitter3">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter3" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homeHitter4" class="form-label">Player One</form:label>
                        <form:select path="homeHitter4">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter4" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homeHitter5" class="form-label">Player One</form:label>
                        <form:select path="homeHitter5">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter5" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homeHitter6" class="form-label">Player One</form:label>
                        <form:select path="homeHitter6">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter6" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homeHitter7" class="form-label">Player One</form:label>
                        <form:select path="homeHitter7">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter7" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homeHitter8" class="form-label">Player One</form:label>
                        <form:select path="homeHitter8">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter8" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homeHitter9" class="form-label">Player One</form:label>
                        <form:select path="homeHitter9">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homeHitter9" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="homePitcher" class="form-label">Home Starting Pitcher</form:label>
                        <form:select path="homePitcher">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="homePitcher" class="text-danger" />
                    </div>
                </div>




                <div class="col-4">
                    <div class="row">
                        <form:label path="awayTeam" class="form-label">Away Team</form:label>
                        <form:select path="awayTeam">
                            <c:forEach var = "team" items = "${ allTeams }">
                                <option value="${ team.teamName }">${ team.teamName }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayTeam" class="text-danger" />
                    </div>
                        <%--        AWAY STARTING LINEUP        --%>
                    <div class="row">
                        <form:label path="awayHitter1" class="form-label">Player One</form:label>
                        <form:select path="awayHitter1">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter1" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayHitter2" class="form-label">Player One</form:label>
                        <form:select path="awayHitter2">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter2" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayHitter3" class="form-label">Player One</form:label>
                        <form:select path="awayHitter3">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter3" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayHitter4" class="form-label">Player One</form:label>
                        <form:select path="awayHitter4">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter4" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayHitter5" class="form-label">Player One</form:label>
                        <form:select path="awayHitter5">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter5" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayHitter6" class="form-label">Player One</form:label>
                        <form:select path="awayHitter6">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter6" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayHitter7" class="form-label">Player One</form:label>
                        <form:select path="awayHitter7">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter7" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayHitter8" class="form-label">Player One</form:label>
                        <form:select path="awayHitter8">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter8" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayHitter9" class="form-label">Player One</form:label>
                        <form:select path="awayHitter9">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayHitter9" class="text-danger" />
                    </div>

                    <div class="row">
                        <form:label path="awayPitcher" class="form-label">Away Starting Pitcher</form:label>
                        <form:select path="awayPitcher">
                            <c:forEach var = "player" items = "${ allPlayers }">
                                <option value="${ player.fullName() }">${ player.fullName() }</option>
                            </c:forEach>
                        </form:select>
                        <form:errors path="awayPitcher" class="text-danger" />
                    </div>
                </div>
            </div>

            <div class="row">
                <form:label path="gameDate" class="form-label">Game Date</form:label>
                <form:input path="gameDate" class="form-control" type = "date"/>
                <form:errors path="gameDate" class="text-danger" />
            </div>

            <div class="row">
                <form:label path="ballpark" class="form-label">Game Location</form:label>
                <form:select path="ballpark">
                    <c:forEach var = "team" items = "${ allTeams }">
                        <option value="${ team.ballpark }">${ team.ballpark }</option>
                    </c:forEach>
                </form:select>
                <form:errors path="awayPitcher" class="text-danger" />
            </div>




            <input class = "btn btn-primary" type="submit" value="Submit" />
        </div>
    </form:form>
</div>

</body>
</html>
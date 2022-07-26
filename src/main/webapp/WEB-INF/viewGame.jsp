<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>${game.homeTeam } vs. ${ game.awayTeam } |
        <fmt:formatDate pattern = "EEEEE, MMMM dd" value = "${game.gameDate}"
        />
    </title>
</head>
<body>

    <div class="container">
        <h1>${ game.homeTeam } vs. ${ game.awayTeam } </h1>
        <p>Game Date:
        <td>
            <fmt:formatDate pattern = "EEEEE, MMMM dd" value = "${game.gameDate}" />
        </td>
        </p>
        <p>Ballpark: ${ game.ballpark }</p>


        <div class="row justify-content-around">
            <div class="col-4">
                <h3>${ game.homeTeam }'s Starting Lineup</h3>
                <list>
                    <li>Player 1: ${ game.homeHitter1 }</li>
                    <li>Player 2: ${ game.homeHitter2 }</li>
                    <li>Player 3: ${ game.homeHitter3 }</li>
                    <li>Player 4: ${ game.homeHitter4 }</li>
                    <li>Player 5: ${ game.homeHitter5 }</li>
                    <li>Player 6: ${ game.homeHitter6 }</li>
                    <li>Player 7: ${ game.homeHitter7 }</li>
                    <li>Player 8: ${ game.homeHitter8 }</li>
                    <li>Player 9: ${ game.homeHitter9 }</li>
                    <hr>
                    <li>Starting Pitcher: ${ game.homePitcher }</li>

                </list>
            </div>
            <div class="col-4">
                <h3>${ game.awayTeam }'s Starting Lineup</h3>
                <list>
                    <li>Player 1: ${ game.awayHitter1 }</li>
                    <li>Player 2: ${ game.awayHitter2 }</li>
                    <li>Player 3: ${ game.awayHitter3 }</li>
                    <li>Player 4: ${ game.awayHitter4 }</li>
                    <li>Player 5: ${ game.awayHitter5 }</li>
                    <li>Player 6: ${ game.awayHitter6 }</li>
                    <li>Player 7: ${ game.awayHitter7 }</li>
                    <li>Player 8: ${ game.awayHitter8 }</li>
                    <li>Player 9: ${ game.awayHitter9 }</li>
                    <hr>
                    <li>Starting Pitcher: ${ game.awayPitcher }</li>

                </list>
            </div>
        </div>


    </div>

</body>
</html>
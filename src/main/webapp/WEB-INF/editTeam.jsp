<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for validations -->
<%@ page isErrorPage="true"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="container">
        <h1>${ team.city } ${ team.teamName } Team Information</h1>

        <form:form action="/teams/${ team.id }/update " method="POST" modelAttribute="editTeam">
        <input type="hidden" name="_method" value="put">
        <div class="row">
            <form:label path="teamName" class="form-label">Team Name</form:label>
            <form:input path="teamName" class="form-control" value="${ team.teamName }" type = "text"/>
            <form:errors path="teamName" class="text-danger" />
        </div>

        <div class="row">
            <form:label path="ballpark" class="form-label">Home Ballpark</form:label>
            <form:input path="ballpark" class="form-control" value="${ team.ballpark }" type = "text"/>
            <form:errors path="ballpark" class="text-danger" />
        </div>
        <div class="row">
            <form:label path="city" class="form-label">City</form:label>
            <form:input path="city" class="form-control" value="${ team.city }" type = "text"/>
            <form:errors path="city" class="text-danger" />
        </div>
        <div class="row">
            <form:label path="state" class="form-label">State</form:label>
            <form:input path="state" class="form-control" value="${ team.state }" type = "text"/>
            <form:errors path="state" class="text-danger" />
        </div>

        <input class = "btn btn-primary" type="submit" value="Submit" />
    </div>
    </form:form>
    </div>

</body>
</html>

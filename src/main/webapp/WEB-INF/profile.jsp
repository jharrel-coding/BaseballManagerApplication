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
		<h1>${ dog.name }'s Details</h1>
		<p>Breed: ${dog.breed}</p>
		<p>Age: ${dog.age}</p>
		<p>House Broken: ${dog.houseBroken}</p>
		
		<h3>Assigned trainers for ${dog.name}</h3>
		<c:forEach items="${dog.trainers}" var="trainer">
			<h4>Trainer : ${trainer.name}</h4>
			<p>
				Skill: ${trainer.skill}
			</p>
			<h6>Dogs Trained by ${trainer.name}</h6>
			<c:forEach items="${trainer.dogs}" var="dog">
				${dog.name} - ${dog.breed} ||
			</c:forEach>
			<hr>
		
		</c:forEach>
		
		<hr>
		<h6>Assign new trainer</h6>
		<form action="/assign/${dog.id}" method="POST">
		<select name="trainerId" id="trainerId">
			<c:forEach items="${allTrainers}" var="trainer">
				<option value="${trainer.id}">
					${trainer.name}
				</option>
			</c:forEach>
		</select>
		
		<button>Assign Trainer</button>
		
		</form>
		
	</div>

</body>
</html>
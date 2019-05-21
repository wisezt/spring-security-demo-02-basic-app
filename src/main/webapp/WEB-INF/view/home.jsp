
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	
	Welcome to the luv2code company home page!
	
	
	<hr>
	<!-- display user name and role -->
	
	<p>
	User: <security:authentication property="principal.username"/>
	<br>
	Role(s):<security:authentication property="principal.authorities"/>
	
	</p>
	
	
	
	<hr>
	
	
	
	<form:form action="${pageContext.request.contextPath}/logout" mehtod="POST">
		
		<input type="submit" value="logout"/>
	
	</form:form>
	
	

</body>

</html>
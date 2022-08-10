
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>

<title>hospital-Add form</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width">

</head>
<body bgcolor="pink">
	<center>
		<h1>employe List</h1>
		<table border="2" width="70%" cellpadding="2">
			<tr>
				<th>empId</th>
				<th>name</th>
				<th>dpt</th>
			
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="em" items="${list}">
				<tr>
					<td>${em.empId}</td>
					<td>${em.name}</td>
					<td>${em.dpt}</td>
					
					
					//<td><a href="editeemp/${em.empId}">Edit</a></td>
				//	<td><a href="deleteemp/${em.empId}">Delete</a></td>


				</tr>
			</c:forEach>
		</table>
		<br /> <a href="viewform">Add New hospital</a>
</body>

</html>

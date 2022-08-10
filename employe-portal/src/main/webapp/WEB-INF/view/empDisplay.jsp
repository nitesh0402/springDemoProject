<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<title>Hospital - Add form</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width">

</head>
<style>
body {
    background-image: url("https://images.app.goo.gl/SVRYmS7t6L4bTbvY8");
}
.no-background {
    background-image: url("C:/Users/MY-PC/Desktop/hospital.jpg");
}
</style>

	<form method="post" action="viewemp">

		<center>

			<h1>Welcome Employes Please fill the detail below</h1>

			<table border="2" bgcolor="grey" style="color: blue">

				<tr>

					<td><b> empId:</b></td>

					<td><input type="number" name="empId"></td>

				</tr>
				<tr>

					<td><b>name:</b></td>

					<td><input type="text" name="name"></td>

				</tr>

				<tr>

					<td><b>dpt:</b></td>

					<td><input type="text" name="dpt"></td>

				</tr>

				



				<tr>

					<td><input type="submit" value="viewemp"></td>

					<td><input type="reset" value="Reset"></td>

				</tr>

			</table>
	</form>
<style>
</body>

</html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<title>Employee-Edit form</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width">

</head>

<body background="nitesh-employee-portal/hospital-portal/hospital.jpg" bgcolor="pink">

<!-- <p style="background-image: url('D:/nitesh-employee-portal/hospital-portal/hospital.jpg');"> -->
	<form method="post" action="editsave" >

		<center>

			<h1>Welcome Hospital Please Edit the detail below</h1>

			<table border="2" bgcolor="grey" style="color: blue">

				<tr>

					<td><b>employe id:</b></td>

					<td><input type="number" name="empId" value=${emp.empId}></td>

				</tr>
				<tr>

					<td><b> Employe Name :</b></td>

					<td><input type="text" name="Name" value=${emp.name}></td>

				</tr>

				<tr>

					<td><b>dpt:</b></td>

					<td><input type="text" name="dpt" value=${emp.dpt}></td>

				</tr>

				


				<tr>

					<td><input type="submit" value="EditSave"></td>

					<td><input type="reset" value="Reset"></td>

				</tr>

			</table>
	</form>
</p>
</body>

</html>
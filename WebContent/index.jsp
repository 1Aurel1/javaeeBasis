<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Testing JSP</title>
</head>
<body>
	<h3>Enter some information form the user</h3>
	<form action="ProcessInfo" method="POST">
		<label>First Name : </label>
		<input type="text" name="fName"><br/>
		<label>Last Name : </label>
		<input type="text" name="lName"><br/>
		<label>Phone : </label>
		<input type="text" name="phone"><br/>
		<label>State : </label>
		<input type="text" name="state"><br/>
		<label>City : </label>
		<input type="text" name="city"><br/>
		<label>Street	 : </label>
		<input type="text" name="street"><br/>
		<label>Zip code : </label>
		<input type="text" name="zipcode"><br/>
		<label>eMail : </label>
		<input type="text" name="email"><br/>
		<label>Password : </label>
		<input type="text" name="password"><br/>
		<input type="submit" value="Sent" >
		
	</form>
			<%= request.getParameter("passedParameter") %> <br>
	 
</body>
</html>
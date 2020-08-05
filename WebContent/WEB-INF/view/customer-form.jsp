<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Form</title>
<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css"/> <!-- gives the proper name of the app location -->
<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/> <!-- gives the proper name of the app location -->
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	<div id="container">
		<h3>Save Customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST"> <!-- saveCustomer - send to Spring MVC mapping, customer - attribute in controller -->
			<!-- need to associate this data with customer id, adding the customer id -->
			<form:hidden path="id"/>
			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><form:input path="firstName"/></td>
					</tr>
					<tr>
						<td><label>Last Name:</label></td>
						<td><form:input path="lastName"/></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email"/></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="submit" class="save"></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
	</div>
</body>
</html>
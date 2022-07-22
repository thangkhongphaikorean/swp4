<%@ page import="mainpackage.Doctor" %>
<%
Doctor doc = (Doctor)session.getAttribute("user-info");
%>
	Welcome <%= doc.getUsername() %> !<br>
	<br><h3>Your Infos:</h3>
	<table>
		<tr><td>Username</td><td><%= doc.getUsername() %></td></tr>
		<tr><td>Specialty</td><td><%= doc.getSpec() %></td></tr>
		<tr><td>Name</td><td><%= doc.getDoctorName() %></td></tr>
		<tr><td>Phone</td><td><%= doc.getDoctorPhone() %></td></tr>
	</table><br>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List, org.home.knightingal.bean.City"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>queryCities</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>COUNTRY CODE</th>
			<th>DISTRICT</th>
			<th>POPULATION</th>
		</tr>
		<%
		List<City> cities = ((List<City>)request.getAttribute("cities"));
		for (int i = 0; i < cities.size(); i++) {
		%>
		<tr>
			<td>
			<%= cities.get(i).getId() %>
			</td>
			<td>
			<%= cities.get(i).getName() %>
			</td>
			<td>
			<%= cities.get(i).getCountryCode() %>
			</td>
			<td>
			<%= cities.get(i).getDistrict() %>
			</td>
			<td>
			<%= cities.get(i).getPopulation() %>
			</td>
		</tr>
		<% } %>
	</table>
</body>
</html>
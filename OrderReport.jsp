<%@page import="master.dao.OrderDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    <jsp:include page="Nav.jsp"></jsp:include>
                
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDER PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

</head>
<body>
<div style="text-align:center; border:3px solid black; width:45%; margin:50px auto; border-radius: 15px ;">
	<h2 class="text-primary" style="text-align:center; margin-top:20px;">LIST OF ORDER DETAILS</h2>
	<table CLASS="table-striped table table-hover table-bordered">
		<thead class="table-dark">
			<tr>
				<th>ORDER ID</th>
				<th>ORDER DATE</th>
				<th>FOOD ID</th>
				<th>FOOD QUANTITY</th>
				<th>CUSTOMER NAME</th>
			</tr>
		</thead>
		<%
		OrderDao odao=new OrderDao();
		ResultSet rs=odao.getData();
		while(rs.next())
		{
		%>
		<tbody>
		<tr>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getDate(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getInt(4) %></td>
			<td><%=rs.getString(5) %></td>
		</tr>
		</tbody>
		<%
		}
		%>
	</table>
</div>
</body>
</html>
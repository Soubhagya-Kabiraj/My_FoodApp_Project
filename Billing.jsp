<%@page import="master.dao.OrderDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <jsp:include page="NavClient.jsp"></jsp:include>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEARCH FOOD</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

</head>
<body>
	<div style="width: 30%; margin: 50px auto; text-align:center; border:2px solid black; border-radius: 15px;"" ">
		<form action="Billing.jsp" method="post">
			<h2 class="text-primary">BILLING INFORMATION</h2>
			<input type="text" class="form-control" name="uname" placeholder="ENTER THE USERNAME"/>

			<input style="margin: 10px;"type = "submit" class="btn btn-outline-info" value="GENERATE BILL"/>
		</form>
	</div>
		
		<div style="text-align:center; border:3px solid black; width:80%; margin:50px auto; border-radius: 15px ;">
		<h2 class="text-primary" style="text-align:center; margin-top:20px;">BILLING DETAILS</h2>
		<table CLASS="table-striped table table-hover table-bordered">
			<thead class="table-dark">
				<tr>
					<th>ORDER ID</th>
					<th>ORDER DATE</th>
					<th>FOOD ID</th>
					<th>FOOD NAME</th>
					<th>FOOD QUANTITY</th>
					<th>FOOD PRICE</th>
					<th>NET PRICE</th>
					<th>CUSTOMER NAME</th>
				</tr>
			</thead>
			<tbody>
			<%
		String uname=request.getParameter("uname");
		OrderDao odao=new OrderDao();
		ResultSet rs=odao.billing(uname);
		while(rs.next()) 
		{
		%>
			<tr>
				<td><%=rs.getInt(1) %></td>
				<td><%=rs.getDate(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getInt(5) %></td>
				<td><%=rs.getDouble(6) %></td>
				<td><%=rs.getDouble(7) %></td>
				<td><%=rs.getString(8) %></td>
			</tr>
			
			</tbody>
	
	
			<%
			}
			%>
	</table>
</div>
</body>
</html>
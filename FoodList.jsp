<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    <jsp:include page="NavClient.jsp"></jsp:include>
                
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FOOD LIST</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

</head>
<style>
body {
        
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #1f4037, #99f2c8);
        }
</style>
<body>
<div style="text-align:center; border:3px solid black; width:45%; margin:50px auto; border-radius: 15px ;">
	<h2 class="text-primary" style="text-align:center; margin-top:20px;">LIST OF FOOD AVAILABLE</h2>
	<table CLASS="table-striped table table-hover table-bordered">
		<thead class="table-dark">
			<tr>
				<th>FOOD ID</th>
				<th>FOOD NAME</th>
				<th>FOOD PRICE</th>
			</tr>
		</thead>
		<%
		FoodDao fdao=new FoodDao();
		ResultSet rs=fdao.getData();
		while(rs.next())
		{
		%>
		<tbody>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getDouble(3) %></td>
		</tr>
		</tbody>
		<%
		}
		%>
	</table>
</div>
</body>
</html>
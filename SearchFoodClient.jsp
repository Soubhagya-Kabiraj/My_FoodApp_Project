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
		<form action="SearchFoodClient.jsp" method="post">
			<h2 class="text-primary">SEARCH ANY FOOD FOR ITS DETAILS</h2>
			<input type="text" class="form-control" name="fid" placeholder="ENTER THE FOOD ID"/>

			<input style="margin: 10px;"type = "submit" class="btn btn-outline-info" value="SEARCH"/>
		</form>
	</div>
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
		String fid=request.getParameter("fid");
		FoodDao fdao=new FoodDao();
		ResultSet rs=fdao.searchfid(fid);
		if(rs.next()) 
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
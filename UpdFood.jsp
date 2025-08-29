<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <jsp:include page="Nav.jsp"></jsp:include>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE FOOD PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

</head>
<body>
	<div style=" width: 30%; margin: 50px auto; text-align:center; border:2px solid black; border-radius: 15px; ">
		<form action="FoodupdServlet" method="post">
			<h2 class="text-primary">UPADTE FOOD DETAILS</h2>
			<input type="text" class="form-control" name="fid" placeholder="ENTER THE FOOD ID"/>
			<input type="text" class="form-control" name="fname" placeholder="ENTER THE FOOD NAME"/>
			<input type="text" class="form-control" name="price" placeholder="ENTER THE FOOD PRICE"/>
			<input style="margin: 10px;"type = "submit" class="btn btn-outline-info" value="UPDATE"/>
		</form>
	</div>
</body>
</html>
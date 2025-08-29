<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <jsp:include page="NavClient.jsp"></jsp:include>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDER FOOD</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

</head>
<body>
<div style=" width: 30%; margin: 50px auto; text-align:center; border:2px solid black; border-radius: 15px; ">
		<form action="OrderServe" method="post">
			<h2 class="text-primary">ADD ORDER</h2>
			<input type="text" class="form-control" name="fid" placeholder="ENTER THE FOOD ID"/>
			<input type="text" class="form-control" name="qty" placeholder="ENTER THE QUANTITY"/>
			<input type="text" class="form-control" name="uname" placeholder="ENTER THE USERNAME"/>
			
			<input style="margin: 10px;"type = "submit" class="btn btn-outline-secondary" value="ORDER"/>
		</form>
	</div>
</body>
</html>
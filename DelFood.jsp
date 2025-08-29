<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE FOOD PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

</head>
<body>
	<div style=" width: 30%; margin: 50px auto; text-align:center; border:2px solid black; border-radius: 15px; ">
		<form action="FoodDelServlet" method="post">
			<h2 class="text-primary">DELETE FOOD FORM</h2>
			<input type="text" class="form-control" name="fid" placeholder="ENTER THE FOOD ID"/>

			<input style="margin: 10px;"type = "submit" class="btn btn-outline-info" value="DELETE"/>
		</form>
	</div>
</body>
</html>
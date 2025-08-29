<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<style>
body {
        
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #1f4037, #99f2c8);
        }
</style>
<body>
	<div style=" width: 30%;padding:20px; margin: 50px auto; text-align:center; border:4px solid black; border-radius: 15px; ">
		<form action="RegisterAddServe" method="post">
			<h2 style="background:blue; color:white;">REGISTRATION FORM</h2>
			<input type="text" class="form-control" name="uname" placeholder="ENTER THE USERNAME"/>
			<input type="password" class="form-control" name="pass" placeholder="ENTER THE PASSWORD"/>
			<input type="text" class="form-control" name="nm" placeholder="ENTER YOUR NAME"/>
			<input style="margin: 10px;"type = "submit" class="btn btn-outline-info" value="REGISTER"/>
		</form>
	</div>
</body>
</html>
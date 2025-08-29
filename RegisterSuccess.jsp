<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Success</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

</head>
<style>
body {
        
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #1f4037, #99f2c8);
        }
@keyframes popIn {
  0% {
    opacity: 0;
    transform: scale(0.5);
  }
  80% {
    opacity: 1;
    transform: scale(1.1);
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}

#img {
  animation: popIn 1s ease-out forwards;
}
</style>

<body>
<div id="img" style="text-align:center; margin:15px auto;">
<img src="https://tse2.mm.bing.net/th/id/OIP.b75uQVXbRQNekqW3cYNIGgHaHa?cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3"
alt="no image"
height="200px"
width="200px">
</div>
<div style="text-align:center;  width:40%; margin:50px auto;">
	<h2 style="text-align:center; margin-top:20px;color:white;">REGISTRATION SUCCESFULL</h2>
	<button class="btn btn-outline-info" style="margin-bottom: 10px;">
		<a  class="text-primary"href="Home.jsp">TAP TO HOME PAGE</a>
	</button>
</div>
</body>
</html>
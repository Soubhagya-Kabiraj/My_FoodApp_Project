<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAV FOOD</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

<style>
  body {
        
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #1f4037, #99f2c8);
        }
#left{
width:20%;
background-color:black;
color:white;
text-align:center;
margin-left:40%;
margin-top:5px;
}
#right{
width:50%;
margin:20px auto;
}
@keyframes popOut {
  0%{
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

#main {
  animation: popOut 1s ease-out forwards;
}

</style>
</head>
<body>
	<div id="main">
		<div id="left">
			<h2>FOOD APP MENU</h2>&nbsp;&nbsp;
		</div>
		<div id="right">
			<a href="FoodList.jsp"class="btn btn-info fw-bold w-20 py-3" >FOODLIST</a> &nbsp;&nbsp;
			<a href="SearchFoodClient.jsp"class="btn btn-info fw-bold w-20 py-3" >SEARCH FOOD</a> &nbsp;&nbsp;
			<a href="Order.jsp"class="btn btn-info fw-bold w-20 py-3">ORDER FOOD</a> &nbsp;&nbsp;
			<a href="Billing.jsp" class="btn btn-info fw-bold w-20 py-3">FOOD BILLING</a>  &nbsp;&nbsp;
			<a href="Home.jsp"class="btn btn-secondary fw-bold w-20 py-3">LOG OUT</a>
			
		</div>
	</div>
</body>
</html>
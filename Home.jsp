<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

<style>
    
    body {
        margin: 0;
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #1f4037, #99f2c8);
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

       #title {
        text-align: center;
        font-size: 40px;
        font-weight: bold;
        color: white;
        background: rgba(0, 0, 0, 0.6);
        border-radius: 15px;
        width: 80%;
        margin: 20px auto;
        padding: 15px;
        backdrop-filter: blur(8px);
        box-shadow: 0px 4px 15px rgba(0,0,0,0.3);
        letter-spacing: 2px;
    }

    img {
        border-radius: 15px;
        box-shadow: 0px 6px 20px rgba(0,0,0,0.5);
        transition: transform 0.3s ease;
    }
    img:hover {
        transform: scale(1.05);
    }

    .btn {
        border-radius: 50px;
        font-size: 18px;
        padding: 12px 35px;
        box-shadow: 0px 4px 12px rgba(0,0,0,0.3);
        transition: all 0.3s ease;
    }

    .btn-info {
        background: linear-gradient(135deg, #00c6ff, #0072ff);
        border: none;
        color: white;
    }

    .btn-info:hover {
        background: linear-gradient(135deg, #0072ff, #00c6ff);
        transform: translateY(-3px);
        box-shadow: 0px 6px 15px rgba(0,0,0,0.4);
    }

    div[style] {
        background: rgba(255,255,255,0.1);
        padding: 30px;
        border-radius: 20px;
        backdrop-filter: blur(10px);
        box-shadow: 0px 8px 25px rgba(0,0,0,0.3);
    }
</style>
</head>
<body>
<div id="title">MY FOOD APP</div>
<div style="text-align:center; margin:50px; ">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiV4hpXN4xeS5JzLdMsYGWH9Y0p05ENjyV06kzraiYGPG7S77E1htm_NjRgMiCfDUXYjI&usqp=CAU"
height="300px"
width="400px"
alt="NO IMAGE">
<p>
<br/><br/>
<a href="Register.jsp"class="btn btn-info fw-bold w-20 py-3" >REGISTER</a> &nbsp; &nbsp;
<a href="Login.jsp"class="btn btn-info fw-bold w-20 py-3" >LOGIN</a>

</div>
</body>
</html>

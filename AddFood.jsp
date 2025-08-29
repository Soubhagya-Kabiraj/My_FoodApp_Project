<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD FOOD PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<script>
function validateForm(){
	var isValid=true;
	var fid=document.f1.fid.value;
	alert("FID:"+fid);
	var fname=document.f1.fname.value;
	alert("FNAME:"+fname);
	var price=document.f1.price.value;
	alert("PRICE:"+price);
	if(fid.length<1)
	{
		//alert("FID CAN'T BLANK");
		var hfid=document.getElementById("hfid");
		hfid.innerText="FID CAN'T BLANK";
		isValid=false;
	}
	if(fname.length<1)
	{
		//alert("FOOD NAME MUST BE GIVEN");
		var hfname=document.getElementById("hfname");
		hfname.innerText="FNMAE CAN'T BLANK";
		isValid=false;
	}
	if(price.length<1)
	{
		//alert("PRICE MUST BE GIVEN");
		var price=document.getElementById("hprice");
		hprice.innerText="PRICE CAN'T BLANK";
		isValid=false;
	}
	return isValid;
}
</script>
</head>
<body>
	<div style=" width: 30%; margin: 50px auto; text-align:center; border:2px solid black; border-radius: 15px; ">
		<form name="f1"action="FoodAddServlet" method="post" onsubmit="return validateForm()">
			<h2 class="text-primary">ADD FOOD FORM</h2>
			<input type="text" class="form-control" name="fid" placeholder="ENTER THE FOOD ID"/>
			<h3 id="hfid"class="text-danger"></h3>
			<input type="text" class="form-control" name="fname" placeholder="ENTER THE FOOD NAME"/>
			<h3 id="hfname"class="text-danger"></h3>
			<input type="text" class="form-control" name="price" placeholder="ENTER THE FOOD PRICE"/>
			<h3 id="hprice"class="text-danger"></h3>
			<input style="margin: 10px;"type = "submit" class="btn btn-outline-info" value="ADD"/>
		</form>
	</div>
</body>
</html>
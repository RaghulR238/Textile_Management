<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Textile Management</title>
</head>
<body style="margin:0px;padding:0px">


<div style="display: flex; justify-content: space-between;height:80px; width: 100%;background-color:#489c9c;color:white; align-items: center;">
    <img src="logo3.png" alt="Your Image" style="height:80px;width:80px;">    
    <div style="display: flex; justify-content: flex-end;justify-content:space-between; width: 50%; padding-right:30px">
      <a href="main.jsp" style="text-decoration:none;color:white">
    <h2 style="cursor:pointer">Home</h2>
</a>
        <h2 style="cursor:pointer">Service</h2>
          <a href="monthlyStatement.jsp" style="text-decoration:none;color:white">
    <h2 style="cursor:pointer">GST Billing</h2>
</a>
        <h2 style="cursor:pointer">Report</h2>
         <a href="textile/display" style="text-decoration:none;color:white">
    <h2 style="cursor:pointer">View Statement</h2>
</a>
        <h2 style="cursor:pointer">Contact</h2>
    </div>
</div>

<div style="margin:50px;display:flex;justify-content:space-evenly">
<img src="texpic2.jpg" alt="Your Image" style="height:500px;width:600px;margin-top:20px"> 
<div >
<h1 style="text-align:center;margin-top:20px;">Insert Yarn</h1>
    <form action="textile/insertYarn" method="post" style="text-align: center;">
        <div style="margin-bottom: 10px;">
            <label for="date" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Date:</label>
            <input type="text" id="date" name="date" style="width: 200px; height: 38px;" placeholder="Date">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="yarn_details" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Details about yarn:</label>
            <input type="text" id="yarn_details" name="yarn_details" style="width: 200px; height: 38px;" placeholder="Details about yarn">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="brand_name" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Brand Name:</label>
            <input type="text" id="brand_name" name="brand_name" style="width: 200px; height: 38px;" placeholder="Brand Name">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="quality" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Quality Type:</label>
            <input type="text" id="quality" name="quality" style="width: 200px; height: 38px;" placeholder="Quality Type">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="kg" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Enter the KG:</label>
            <input type="number" id="kg" name="kg" style="width: 200px; height: 38px;" step="0.01" placeholder="Enter the KG">
        </div>
        
        <input type="submit" value="Add to Database" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; margin-top:20px;border-bottom: 10px solid grey;width:70%;height:70px	;padding:10px;border-radius:30px;cursor:pointer">
    </form>
</div>
</div>


</body>
</html>
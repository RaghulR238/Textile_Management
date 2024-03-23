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
<img src="texpic5.jpg" alt="Your Image" style="height:500px;width:600px;margin-top:20px"> 
<div >
<h1 style="text-align:center;margin-top:20px;">Insert Meter</h1>

<div style="display: flex; justify-content: center; align-items: center; padding: 10px;">
    <form action="textile/insertMeter" method="post" style="text-align: center;">
        <div style="margin-bottom: 10px;">
            <label for="date" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Date:</label>
            <input type="text" id="date" name="date" style="width: 200px; height: 38px;" placeholder="Date">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="meter_details" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Detail about Meter:</label>
            <input type="text" id="meter_details" name="meter_details" style="width: 200px; height: 38px;" placeholder="Details about Meter">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="meter" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Meter:</label>
            <input type="number" id="meter" name="meter" style="width: 200px; height: 38px;" step="0.01" placeholder="Meter">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="pic" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Pic:</label>
            <input type="number" id="pic" name="pic" style="width: 200px; height: 38px;" step="0.01" placeholder="Pic">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="pic_rate" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 220px; display: inline-block; text-align: center; line-height: 38px;">Pic Rate:</label>
            <input type="number" id="pic_rate" name="pic_rate" style="width: 200px; height: 38px;" step="0.01" placeholder="Pic Rate">
        </div>
        
        <input type="submit" value="Add to Database" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; margin-top:20px;border-bottom: 10px solid grey;width:70%;height:70px	;padding:10px;border-radius:30px;cursor:pointer">
    </form>
</div>
</div>
</body>
</html>
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
        <h2 style="cursor:pointer">Home</h2>
        <h2 style="cursor:pointer">Service</h2>
        <h2 style="cursor:pointer">GST Billing</h2>
        <h2 style="cursor:pointer">Report</h2>
        <h2 style="cursor:pointer">View Statement</h2>
        <h2 style="cursor:pointer">Contact</h2>
    </div>
</div>

<div style="margin:50px;display:flex;justify-content:space-evenly">
<img src="texpic8.jpg" alt="Your Image" style="height:500px;width:600px;margin-top:20px"> 
<div style="display: flex; flex-direction: column; justify-content: center;">

<h1 style="text-align:center;margin-top:20px;">Monthly Statement</h1>


<div style="display: flex; justify-content: center; align-items: center; padding: 10px;">
    <form action="textile/month_Statement" method="post" style="text-align: center;">
        <div style="margin-bottom: 10px;">
            <label for="start_date" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 200px; display: inline-block; text-align: center; line-height: 38px;">Starting Date:</label>
            <input type="text" id="start_date" name="start_date" style="width: 200px; height: 38px;" placeholder="Starting Date">
        </div>
        
        <div style="margin-bottom: 10px;">
            <label for="end_date" style="font-weight:bold;color:#489c9c;font-size: 25px; width: 200px; display: inline-block; text-align: center; line-height: 38px;">Ending Date:</label>
            <input type="text" id="end_date" name="end_date" style="width: 200px; height: 38px;" placeholder="Ending Date">
        </div>
        
        <input type="submit" value="Generate Bill" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; margin-top:20px;border-bottom: 10px solid grey;width:70%;height:70px	;padding:10px;border-radius:30px;cursor:pointer">
    </form>
</div>
</div>
</div>
</body>
</html>
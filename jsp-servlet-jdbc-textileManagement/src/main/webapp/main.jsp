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

    </div>

<div style="margin:50px">


<div style="display: flex; width: 100%;">
    <img src="texpic10.jpg" alt="Your Image" style="height:500px;width:600px;margin-right:20px;margin-top:20px">    
    <div style="width: 50%;;margin-top:50px">
        <h1 style="font-size:50px;color:#489c9c;text-align:center">Textile Management System</h1>
        <p style="padding-top:80px;color:grey;font-size:25px;text-align: justify;">Welcome to our Textile Management System, a cutting-edge solution revolutionizing the way textile businesses operate. Our comprehensive system is meticulously designed to automate every aspect of textile management, from stock tracking to delivery logistics, raw material procurement to billing, and beyond.</p>
    </div>
</div>

 
 
 <h1 style="color:#489c9c;text-align:center;margin-top:100px">FEATURES</h1>
    
    
<div style="display: flex; flex-wrap: wrap; ">
    <div style="flex:1;margin:10px;">
        <form action="insertYarn.jsp" >
            <input type="submit" value="Insert Yarn Details" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey;width:100%;height:100px	;padding:10px;border-radius:30px;cursor:pointer" >
        </form>
    </div>
    <div style="flex:1;margin:10px">
        <form action="insertWarp.jsp">
            <input type="submit" value="Insert Warp Details" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey;;width:100%;height:100px;padding:10px;border-radius:30px;cursor:pointer">
        </form>
    </div>
    <div style="flex:1;margin:10px">
        <form action="insertMeter.jsp">
            <input type="submit" value="Insert Meter Details" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey;width:100%;height:100px;padding:10px;border-radius:30px;cursor:pointer"	>
        </form>
    </div>
</div>

<div style="display: flex; flex-wrap: wrap; ">
    <div style="flex:1;margin:10px">
        <form action="updateYarn.jsp" >
            <input type="submit" value="Update Yarn Details"  style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey;width:100%;height:100px	;padding:10px;border-radius:30px;cursor:pointer" >
        </form>
    </div>
    <div style="flex:1;margin:10px">
        <form action="updateWarp.jsp">
            <input type="submit" value="Update Warp Details" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey;width:100%;height:100px;padding:10px;border-radius:30px;cursor:pointer" >
        </form>
    </div>
    <div style="flex:1;margin:10px">
        <form action="updateMeter.jsp">
            <input type="submit" value="Update Meter Details" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey;width:100%;height:100px	;padding:10px;border-radius:30px;cursor:pointer" >
        </form>
    </div>
</div>

<div style="display: flex; flex-wrap: wrap; width: 100%;">
    <div style="flex:1;margin:10px">
        <form action="monthlyStatement.jsp">
            <input type="submit" value="Monthly Statement" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey;width:100%;height:100px	;padding:10px;border-radius:30px;cursor:pointer" >
        </form>
    </div>
    <div style="flex:1;margin:10px">
        <form action="textile/display" method="get">
            <input type="submit" value="Display Details" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey;width:100%;height:100px;padding:10px;border-radius:30px;cursor:pointer" >
        </form>
    </div>
</div>

</div>
</body>
</html>
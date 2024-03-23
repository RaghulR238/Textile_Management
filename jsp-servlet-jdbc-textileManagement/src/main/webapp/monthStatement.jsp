<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Textile Management</title>
</head>
<body style="margin:0px">

<div style="display: flex; justify-content: space-between;height:80px; width: 100%;background-color:#489c9c;color:white; align-items: center;">
    <img src="../logo3.png" alt="Your Image" style="height:80px;width:80px;">    
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
<img src="../invoice.jpg" alt="Your Image" style="height:500px;width:600px;margin-top:20px"> 
<div >
<% 
                List<Double> list = (List<Double>) request.getAttribute("list");%>
<div style="display: flex;flex-direction:column; justify-content: center; align-items: center; padding: 10px;">
    
        <div style="margin-bottom: 10px;">
            <p  style="font-weight:bold;color:#489c9c;font-size: 25px;  display: inline-block; text-align: center; line-height: 38px;"><%out.println("Total Delivered Meter : "+list.get(0)); %></p>
        </div>
        <div style="margin-bottom: 10px;">
            <p  style="font-weight:bold;color:#489c9c;font-size: 25px; display: inline-block; text-align: center; line-height: 38px;"><%out.println("Total Amount : "+list.get(2)); %></p>
        </div>
        <div style="margin-bottom: 10px;">
            <p  style="font-weight:bold;color:#489c9c;font-size: 25px;  display: inline-block; text-align: center; line-height: 38px;"><%out.println("Total CGST : "+list.get(3)); %></p>
        </div>
        <div style="margin-bottom: 10px;">
            <p  style="font-weight:bold;color:#489c9c;font-size: 25px;  display: inline-block; text-align: center; line-height: 38px;"><%out.println("Total SGST : "+list.get(4)); %></p>
        </div>
         <div style="margin-bottom: 10px;">
            <p  style="font-weight:bold;color:#489c9c;font-size: 25px;  display: inline-block; text-align: center; line-height: 38px;"><%out.println("Grand Total : "+list.get(5)); %></p>
        </div>
</div>
</div>






<form action="gst" method="post" style="text-align: center;margin-top:100px">
<div style="display: flex; justify-content: center; align-items: center; padding: 10px;">
    <label for="buyName" style="font-weight:bold;color:#489c9c;font-size:25px;width:220px;display:inline-block;text-align:center;line-height:38px;">Company Name:</label><br>
    <input type="text" id="buyName" name="buyName" style="width: 200px; height: 38px; margin-bottom: 10px; font-weight: bold; color: #489c9c; " placeholder="Company Name"><br>
    </div>
    <div style="display: flex; justify-content: center; align-items: center; padding: 10px;">
    <label for="To_address" style="font-weight:bold;color:#489c9c;font-size:25px;width:220px;display:inline-block;text-align:center;line-height:38px;">To Address:</label><br>
    <input type="text" id="To_address" name="To_address" style="width: 200px; height: 38px; margin-bottom: 10px; font-weight: bold; color: #489c9c; " placeholder="To Address"><br>
    </div>
    <div style="display: flex; justify-content: center; align-items: center; padding: 10px;">
    <label for="Gstnum" style="font-weight:bold;color:#489c9c;font-size:25px;width:220px;display:inline-block;text-align:center;line-height:38px;">GST Number:</label><br>
    <input type="text" id="Gstnum" name="Gstnum" style="width: 200px; height: 38px; margin-bottom: 10px; font-weight: bold; color: #489c9c; " placeholder="GST Number"><br>
    </div>
    <input type="hidden" name="totalDeliveredMeter" value="<%= list.get(0) %>">
    <input type="hidden" name="totalAmount" value="<%= list.get(2) %>">
    <input type="hidden" name="totalPaymentReceived" value="<%= list.get(1) %>">
    <input type="hidden" name="totalCGST" value="<%= list.get(3) %>">
    <input type="hidden" name="totalSCST" value="<%= list.get(4) %>">
    <input type="hidden" name="grandTotal" value="<%= list.get(5) %>">
    
    <input type="submit" value="Gst Download" style="width: 200px; height: 38px; font-weight: bold; color: #fff; background-color: #489c9c; border: none; border-radius: 5px; cursor: pointer; transition: background-color 0.3s ease;">
</form>


</body>
</html>
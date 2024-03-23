	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Textile Management</title>
	</head>
	<body style="margin:0px;padding:0px">
	
	
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
  
	<div style="margin:50px">
	<h1 style="text-align:center;margin-top:20px;">Display Statement</h1>
	
	<table border="1">
	    <tr>
	        <th>Transaction ID</th>
	        <th>Date</th>
	        <th>Details</th>
	        <th>Brand Name</th>
	        <th>Quality</th>
	        <th>In Yarn kg</th>
	        <th>Out Yarn kg</th>
	        <th>Balance Yarn kg</th>
	        <th>In Warp meter</th>
	        <th>Out Warp meter</th>
	        <th>Balance Warp meter</th>
	        <th>Debit</th>
	        <th>Credit</th>
	        <th>Balance</th>
	        <th>CGST</th>
	        <th>SGST</th>
	        <th>Final Amount</th>
	        <th>Total</th>
	    </tr>
	<% 
	    List<List<String>> list = (List<List<String>>) request.getAttribute("list");
	    for(List<String> row : list) {
	%>
	    <tr>
	    <% 
	        for(String cell : row) {
	            if(cell == null || cell.isEmpty()) {
	                cell = "-";
	            }
	    %>
	            <td><%= cell %></td>
	    <% 
	        } 
	    %>
	    </tr>
	<%
	    } 
	%>
	</table>
	<form action="../textile/PdfGeneratorServlet" method="post" style="display:flex;justify-content:center">
	    <button type="submit" style="font-weight:bold;color:#489c9c;border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; margin-top:20px;border-bottom: 10px solid grey;width:20%;height:70px	;padding:10px;border-radius:30px;cursor:pointer">Download as PDF</button>
	</form>
	</div>
	</body>
	</html>

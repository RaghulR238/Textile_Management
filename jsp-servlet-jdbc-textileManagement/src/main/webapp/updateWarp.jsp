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

<div style="margin: 50px; display: flex; justify-content: space-evenly;">
    <img src="texpic6.jpg" alt="Your Image" style="height: 500px; width: 600px; margin-top: 20px;">
    <div style="display: flex; flex-direction: column; justify-content: center;">
        <h1 style="text-align: center;">Update Warp</h1>
        <div style="display: flex; justify-content: center;">
            <form action="textile/updateWarp" method="post" style="text-align: center;">
                <div style="margin-bottom: 10px;">
                    <label for="t_id" style="font-weight: bold; color: #489c9c; font-size: 25px;">Transaction ID :</label>
                    <input type="number" id="t_id" name="t_id" style="width: 200px; height: 38px;" placeholder="Enter the Transaction ID">
                </div>
                <div style="margin-bottom: 10px;">
                    <label for="update_meter" style="font-weight: bold; color: #489c9c; font-size: 25px;">Update Meter :      </label>
                    <input type="number" id="update_meter" name="update_meter" style="width: 200px; height: 38px;" step="0.01" placeholder="Enter the Meter">
                </div>
                <input type="submit" value="Add to Database" style="font-weight: bold; color: #489c9c; border-left: 10px solid #489c9c; border-top: 8px solid #489c9c; border-right: 10px solid grey; border-bottom: 10px solid grey; width: 70%; height: 70px; padding: 10px; border-radius: 30px; cursor: pointer;">
            </form>
        </div>
    </div>
</div>
	



</body>
</html>
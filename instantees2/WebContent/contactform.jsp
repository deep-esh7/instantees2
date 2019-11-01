<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style> .cent {
  position: absolute;
  padding: 10%;
  top: 45%;
  left: 30%;
  transform: translate(-50%, -50%); }
  .ce {
  position: absolute;
  padding: 10%;
  top: 17%;
  right: 20%;
  transform: translate(-50%, -50%); }
  
   .cente {
  position: absolute;
  padding: 10%;
  top:50%;
  right: -6%;
  transform: translate(-50%, -50%); }</style>
  
<body><div class="containr"> 
<img src="./images/wave1.png" alt="Nature" style="width:100%;height: 700px">
<div class="ce"> <h1><font color="#4d4dff">Get IN Touch!</font></h1></div>
 <div class="cent"> <img src="./images/customer-service (2).png"> </div>
 <div class="cente"><form action="contactus" method="post"><input type="text"  name="name" size="22%" placeholder="Full Name" value=""><br><br>
 <input type="text"  name="email" size="22%" placeholder="Email" value=""><br><br>
 <input type="text"  name="mobileno" size="22%" placeholder="Mobile No" value=""><br><br>
 <textarea rows="3" cols="25" placeholder="Please Enter Your Query" name="message">
</textarea><br><center>
<button type="button" class="btn btn-primary">SEND MESSAGE</button></center></form></div>

    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="main">
   
</div>
<!-- popup form #1 -->
<a href="#x" class="overlayy" id="login_form"></a>
   <div class="popup">
    <form action="login" method="post"><h2>Welcome Guest!</h2>
     <p>Please enter your login and password here</p>
   <div>
   <label for="login">Login</label>
   <input type="text" id="login" value="">
   </div>
   <div>
   <label for="password">Password</label>
   <input type="password" id="password" value="">
   </div>
   <input type="button" value="Log In" /> </form>
   <a class="close" href="#close"></a>
</div>
</body>
</html>
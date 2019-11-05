<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
		
		<div id="messageDiv" style="display: none;"></div>
	
	<script>
		jQuery(function($) {
			$("input[type='submit']").click(function(e) {
				e.preventDefault();
				var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
				var email = $("input[name='email']").val();
				var password = $("input[name='password']").val();

				var data = {
					email : email,
					password : password,
				}
				$.ajax({
					type : "POST",
					url : "./login",
					data : data,
				}).done(function(data) {
					alert(data);
					window.location = './delete.jsp';
				}).fail(function(jqXHR, textStatus) {
					alert(textStatus);
				});
			});
		});

		//function to display message to the user
		function showMessage(results) {
			if (results == 'SUCCESS') {
				$('#messageDiv')
						.html(
								"<font color='green'>You are successfully logged in. </font>")
			} else if (results == 'FAILURE') {
				$('#messageDiv')
						.html(
								"<font color='red'>Username or password incorrect </font>")
			}
		}
	</script>
<body><CENTER>
<h1>PLEASE LOGIN WITH YOUR CREDENTIALS</h1><BR>


 <form action="login" method="post"><h2>
     
   <div>
   <label for="login">Email</label>
   <input type="text" name="email" value="">
   </div>
   <div>
   <label for="password">Password</label>
   <input type="password" id="password" value="">
   </div>
   <input type="button" value="Log In" /> </form>

</CENTER>
</body>
</html>
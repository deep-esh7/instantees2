<center><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="messageDiv" style="display: none;"></div>
	
	<script>
		jQuery(function($) {
			$("input[type='submit']").click(function(e) {
				e.preventDefault();
				
				var name = $("input[name='nameofclient']").val();
				var email = $("input[name='emailofclient']").val();
				var address = $("input[name='addressofclient']").val();
				var phone = $("input[name='phoneofclient']").val();
				var description = $("input[name='descriptionofclient']").val();
				var imagelink1 = $("input[name='imagelink1']").val();
				var imagelink2 = $("input[name='imagelink2']").val();
				var imagelink3 = $("input[name='imagelink3']").val();
				
				
				var catagory =  $('#list option:selected').text();
				var subcid =  $('#list2 option:selected').text();

				var data = {
					name : nameofclient,
					email : emailofclient,
					address : addressofclient,
					phone : phoneofclient,	
				    description : descriptionofclient,
				    imagelink1 : imagelink1,
					imagelink2 : imagelink2,
					 imagelink3 : imagelink3,	
					list : list,
					list2 : list2,
					
				}
				$.ajax({
					type : "POST",
					url : "./education",
					data : data,
				}).done(function(data) {
					alert(data);
					window.location = './panel.jsp';
					
				}).fail(function(jqXHR, textStatus) {
					alert(textStatus);
				});
			});
		});

		//function to display message to the user
		function showMessage(results) {
			if (results == 'DATA HAS BEEN ENTERED SUCCESSFULLY!') {
				$('#messageDiv')
						.html(
								"<font color='green'>DATA HAS BEEN ENTERED SUCCESSFULLY!</font>")
			} else if (results == 'FAILURE') {
				$('#messageDiv')
						.html(
								"<font color='red'>DATA CANNOT BE ENTERED!</font>")
			}
		}
	</script>


<div class="messageDiv"></div>


<form action="education" method="post">
NAME OF ORGANIZATION:  <input type="text" name="nameofclient"><br>
 CONTACT NO. <input type="text" name="phoneofclient"><br>
 EMAIL ID: <input type="text" name="emailofclient"><br>
ADDRESS:  <input type="text" name="addressofclient"><br>
 DESCRIPTION: <input type="text" name="descriptionofclient"><br>
 IMAGE LINK 1: <input type="text" name="imagelink1"><br>
IMAGE LINK 2:  <input type="text" name="imagelink2"><br>
 IMAGE LINK 3: <input type="text" name="imagelink3"><br>
  


<br>
SELECT CATEGORY:
<select name="list">
 
  <option  value="PROPERTIES">PROPERTIES</option>
  <option value="FOR SALE">FOR SALE</option>
  <option  value="FLATS">FLATS</option>
  <option value="PLOTS">PLOTS</option>
    <option  value="OFFICE AREA">OFFICE AREA</option>
    <option  value="INDUSTRIAL">INDUSTRIAL</option>
  <option  value="WARE HOUSE">WARE HOUSE/option>
  <option  value="VILLA<">VILLA</option>
  <option  value="UPCOMING">UPCOMING</option>

  
  
  
 
</select><br>

Category ID: <select name="list2">
 <option  value="47">47</option>
  <option  value="48">48</option>
  <option value="49">49</option>
  <option  value="50">50</option>
  <option value="51">51</option>
  <option  value="52">52</option>
  <option  value="53">53</option>
  <option  value="54">54</option>
    <option  value="55">55</option>

   
        
</select><br>
  <input type="submit">
  
  
  
   <center><font color="red">PLEASE ENTER DATA ACCORDING TO CATEGORY ID:
   
   <BR>    <H1> 47: PROPERTIES <BR>
   48: FOR SALE<BR>
   49: FLATS<BR>
   50: PLOTS<BR>
   51: OFFICE AREA
   <BR> 52: INDUSTRIAL<BR>
   53: WARE HOUSE<BR>
   54: VILLA <BR>
   55: UPCOMING<BR>
  </H1>
   
   
   
   </font></center>
</form>
</body>
</html>
</center>

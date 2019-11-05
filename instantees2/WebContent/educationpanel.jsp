<center><<jsp:include page="header2.jsp"></jsp:include><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
 <option  value="GATE COACHING">GATE COACHING</option>
  <option  value="MBA">MBA</option>
  <option value="IAS">IAS</option>
  <option  value="Cell Center And BPO">Cell Center And BPO</option>
  <option value="COMMUNICATION SKILLS">COMMUNICATION SKILLS</option>
  <option  value="SOFT SKILLS">SOFT SKILLS</option>
  <option  value="TAXATION">TAXATION</option>
  <option  value="TEAM BUILDING TRAINING">TEAM BUILDING TRAINING</option>
    <option  value="STRESS MANAGEMENT TRAINING">STRESS MANAGEMENT TRAINING</option>
        <option  value="YOGA CLASSES">YOGA CLASSES</option>
        <option  value="PERSONALITY BUILDING">PERSONALITY BUILDING</option>
</select><br>

Category ID: <select name="list2">
 <option  value="1">1</option>
  <option  value="2">2</option>
  <option value="3">3</option>
  <option  value="4">4</option>
  <option value="5">5</option>
  <option  value="6">6</option>
  <option  value="7">7</option>
  <option  value="8">8</option>
    <option  value="9">9</option>
        <option  value="10">10</option>
        <option  value="11">11</option>
</select><br>
  <input type="submit">
  
  
  
   <center><font color="red">PLEASE ENTER DATA ACCORDING TO CATEGORY ID:
   
   <BR>    <H1> 1: GATE COACHING <BR>
   2: MBA<BR>
   3: IAS<BR>
   4: CELL CENTER AND BPO<BR>
   5: COMMUNICATION SKILLS
   <BR> 6: SOFT SKILLS<BR>
   7: TAXATION<BR>
   8: TEAM BUILDING TRIAINING <BR>
   9: STRESS MANAGEMENT TRAINING<BR>
   10: YOGA CLASSES<BR>
   11: PERSONALLITY BUILDING<BR></H1>
   
   
   
   </font></center>
</form>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>/center>

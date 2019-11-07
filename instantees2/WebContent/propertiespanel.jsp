<img src="./images/header.png" width=100% style="margin-top: -10px; margin-left: 0px; margin-right: -20px;"><br>
<a href="http://instantees.in"><img src="./images/logoi.png" alt="INSTANTEES.IN" width="100%" /></a><center><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
:root {
    --input-padding-x: 1.5rem;
    --input-padding-y: .75rem;
  }
  
  body {
     background-color:#6666ff;                 
  }
  
  .card-signin {
    border: 0;
    border-radius: 1rem;
    box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
  }
  
  .card-signin .card-title {
    margin-bottom: 2rem;
    font-weight: 300;
    font-size: 1.5rem;
  }
  
  .card-signin .card-body {
    padding: 2rem;
  }
  
  .form-signin {
    width: 100%;
  }
  
  .form-signin .btn {
    font-size: 80%;
    border-radius: 5rem;
    letter-spacing: .1rem;
    font-weight: bold;
    padding: 1rem;
    transition: all 0.2s;
  }
  
  .form-label-group {
    position: relative;
    margin-bottom: 1rem;
  }
  
  .form-label-group input {
    height: auto;
    border-radius: 2rem;
  }
  
  .form-label-group>input,
  .form-label-group>label {
    padding: var(--input-padding-y) var(--input-padding-x);
  }
  
  .form-label-group>label {
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    width: 100%;
    margin-bottom: 0;
    line-height: 1.5;
    color: #495057;
    border: 1px solid transparent;
    border-radius: .25rem;
    transition: all .1s ease-in-out;
  }
  
  .form-label-group input::-webkit-input-placeholder {
    color: transparent;
  }
  
  .form-label-group input:-ms-input-placeholder {
    color: transparent;
  }
  
  .form-label-group input::-ms-input-placeholder {
    color: transparent;
  }
  
  .form-label-group input::-moz-placeholder {
    color: transparent;
  }
  
  .form-label-group input::placeholder {
    color: transparent;
  }
  
  .form-label-group input:not(:placeholder-shown) {
    padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
    padding-bottom: calc(var(--input-padding-y) / 3);
  }
  
  .form-label-group input:not(:placeholder-shown)~label {
    padding-top: calc(var(--input-padding-y) / 3);
    padding-bottom: calc(var(--input-padding-y) / 3);
    font-size: 12px;
    color: #777;
  }
  
  .btn-google {
    color: white;
    background-color: #ea4335;
  }
  
  .btn-facebook {
    color: white;
    background-color: #3b5998;
  }
    
  @supports (-ms-ime-align: auto) {
    .form-label-group>label {
      display: none;
    }
    .form-label-group input::-ms-input-placeholder {
      color: #777;
    }
  
  
  @media all and (-ms-high-contrast: none),
  (-ms-high-contrast: active) {
    .form-label-group>label {
      display: none;
    }
    .form-label-group input:-ms-input-placeholder {
      color: #777;
    }
  }
          </style>
      
</head>
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
        <div class="container">
                <div class="row">
                  <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                      <div class="card-body">
                <h5>Enter data acording to category id</h5>
                        <form class="form-signin">
                          <div class="form-label-group">
                            <input type="name" id="inputName" class="form-control" name="nameofclient"  required autofocus>
                            <label for="inputName">Name of organisation</label>
                          </div>
                          <div class="form-label-group">
                                <input type="number" id="inputNumber" class="form-control" name="phoneofclient"  required>
                                <label for="inputNumber">Contact No</label>
                              </div>
                
                              <div class="form-label-group">
                                    <input type="email" id="inputEmail" class="form-control" name="emailofclient"   required>
                                    <label for="inputEmail">Email Id</label>
                                  </div>
                    
                                  <div class="form-label-group">
                                            <input type="name" id="inputName" class="form-control" name="addressofclient"  required>
                                            <label for="inputName">Address</label>
                                          </div>
                        
                                      <div class="form-label-group">
                                            <input type="name" id="inputName" class="form-control" name="descriptionofclient"  required>
                                            <label for="inputName">Description</label>
                                          </div>
                            
                                          <div class="form-label-group">
                                                <input type="text" id="" class="form-control" name="imagelink1"  required>
                                                <label for="">Image Link 1:</label>
                                              </div>
                                
                                              <div class="form-label-group">
                                                    <input type="text" id="" class="form-control" name="imagelink2"  required>
                                                    <label for="">Image Link 2:</label>
                                                  </div>
                                                  
                                              <div class="form-label-group">
                                                    <input type="text" id="" class="form-control" name="imagelink3"  required>
                                                    <label for="">Image Link 3:</label>
                                                  </div>
                                    
               
SELECT CATEGORY:
<select name="list">
        <div class="form-group col-md-4">
                <option  value="PROPERTIES">PROPERTIES</option>
  <option value="FOR SALE">FOR SALE</option>
  <option  value="FLATS">FLATS</option>
  <option value="PLOTS">PLOTS</option>
    <option  value="OFFICE AREA">OFFICE AREA</option>
    <option  value="INDUSTRIAL">INDUSTRIAL</option>
  <option  value="WARE HOUSE">WARE HOUSE/option>
  <option  value="VILLA<">VILLA</option>
  <option  value="UPCOMING">UPCOMING</option>

  </select>
  </div>
  
  
 
</select><br>

Category ID: <select name="list2">
        <div class="form-group col-md-4" >
                <option  value="47">47</option>
  <option  value="48">48</option>
  <option value="49">49</option>
  <option  value="50">50</option>
  <option value="51">51</option>
  <option  value="52">52</option>
  <option  value="53">53</option>
  <option  value="54">54</option>
    <option  value="55">55</option>

   
   
  </select> 
  </div>
        
</select><br>
<button class="btn btn-lg btn-danger btn-block text-uppercase" style="margin-top:-50px; margin-bottom:30px;" input type="submit">Submit</button>

  
  
<center>
    
    <div class="container">
      <div class="jumbotron" style="color:green">
        <h4>PLEASE ENTER DATA ACCORDING TO CATEGORY ID:</h4>
    
       </div>
       </div>
            <div class="container">
      <ul class="list-group">
        <li class="list-group-item list-group-item-success">47:PROPERTIES </li>
        <li class="list-group-item list-group-item-success">48:FOR SALE</li>
        <li class="list-group-item list-group-item-success">49:FLATS</li>
        <li class="list-group-item list-group-item-success">50:PLOTS</li>
        <li class="list-group-item list-group-item-success">51:OFFICE AREA</li>
        <li class="list-group-item list-group-item-success">52:INDUSTRIAL</li>
        <li class="list-group-item list-group-item-success">53:WARE HOUSE</li>
        <li class="list-group-item list-group-item-success">54:VILLA  </li>
        <li class="list-group-item list-group-item-success">55:UPCOMING</li>
      </ul>
     </div> 
     
       </font></center>   
</form>
</body>
</html>
</center>
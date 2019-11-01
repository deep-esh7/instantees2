<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<style>table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  
  font-size: 20px;
  font-weight: ;
  width: 100%;
  
 
}

th, td {
  padding: 15px;
}

.slideshow {
  margin: 80px auto;
  position: relative;
  width: 240px;
  height: 240px;
  padding: 10px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

.slideshow > div {
  position: absolute;
  top: 10px;
  left: 10px;
  right: 10px;
  bottom: 10px;
}
.centered {
  position: absolute;
  padding: 10%;
  top: 45%;
  left: 14%;
  transform: translate(-50%, -50%); }

.centerd {
  position: absolute;
  padding: 10%;
  top: 45%;
  right: 3%;
  transform: translate(-50%, -50%); }
  
  .centerdd {
  position: absolute;
  padding: 10%;
  top: 45%;
  right: -38%;
  transform: translate(-50%, -50%); }
  
  

  .bg-img {
  /* The image used */
  background-image: url("./images/pexels-photo-271816.jpeg");

  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.containr {
  position: relative;
  font-family: Arial;
}

.text-block {
  position: absolute;
  bottom: 20px;
  right: 20px;
  background-color: black;
  color: white;
  padding-left: 20px;
  padding-right: 20px;
}
.over-img{
    position: absolute;
    top: 28%;
    left: -15%;
}
.h2 {
  font-size: 25px;
}
</style>


   
                            	



<div class="bg-img"><br><br><br><br><br><br>
<center><input type="text" size="70%" style="border-radius: 15px;"  placeholder="  Search Our Experts">
 <input type="submit" class="btn btn-danger" style="border-radius: 15px;" value="Search Now"></center></div>
<br>
<div class="container"><div class="row"><div class="col-md-4"><table><tr><td><center><h3>Happy Users</h3><div class="count"> <h1 >200</h1><br></div></center></td></table></div><div class="col-md-4"><table><tr><td> <center><h3>Verified Experts</h3><div class="count"> <h1>400</h1><br></div></center></td></table></div><div class="col-md-4"><table><tr><td><center> <h3>Catagories</h3><div class="count"> <h1>12</h1><br></div></center></td></table></div></div></div>

<script>
$('.count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 4000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});
</script>
<br>

<div class="containr">
  <img src="./images/wave.png" alt="Nature" style="width:100%;height: 700px">

</div>

    <br><br>

</body>
</html>
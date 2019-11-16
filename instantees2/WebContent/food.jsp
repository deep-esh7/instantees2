<CENTER><jsp:include page="header2.jsp"></jsp:include>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EDUCATION</title>
    <meta name="description" content="Creative CV is a HTML resume template for professionals. Built with Bootstrap 4, Now UI Kit and FontAwesome, this modern and responsive design template is perfect to showcase your portfolio, skils and experience."/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href="csss/aos.css" rel="stylesheet">
    <link href="csss/bootstrap.min.css" rel="stylesheet">
    <link href="styless/main.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
            .checked {
              color: orange;
            }
            </style>
  </head>
    <body id="top">
      <header>
        <div class="profile-page sidebar-collapse">
          <nav class="navbar navbar-expand-lg fixed-top navbar-transparent bg-primary" color-on-scroll="400">
            <div class="container">
             <div class="navbar-translate">
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-bar bar1"></span><span class="navbar-toggler-bar bar2"></span><span class="navbar-toggler-bar bar3"></span></button>
              </div>
              <div class="collapse navbar-collapse justify-content-end" id="navigation">
       
              </div>
            </div>
          </nav>
        </div>
      </header>
      <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://instantees.czcfvkewfkpd.us-east-2.rds.amazonaws.com/instantees"  
     user="instantees"  password="instantees"/>  
      <sql:query dataSource="${db}" var="rs">  
SELECT * from catagory where subcid='${param.id}';  
</sql:query>  
      
      <div class="page-content">
        <div>
  <div class="profile-page">
    <div class="wrapper">
      <div class="page-header page-header-small" filter-color="white">
        <div class="page-header-image" data-parallax="true" style="background-image: url('./images/FOOD.jpg');"></div>
        <div class="container">
          <div class="content-center">
            <div class="cc-profile-image"><a href="#"><img src="./images/Artboard 1 copy-100.jpg" alt="Image"/></a></div>
            <div class="h2 title">${param.name}</div>
            <p class="category text-white">GET DELICIOUS FOOD!</p><a class="btn btn-primary smooth-scroll mr-2" href="#contact" data-aos="zoom-in" data-aos-anchor="data-aos-anchor">Discover</a></a>
          </div>
        </div>
        <div class="section">
          <div class="container">
            <div class="button-container"><a class="btn btn-default btn-round btn-lg btn-icon" href="#" rel="tooltip" title="Follow me on Facebook"><i class="fa fa-facebook"></i></a><a class="btn btn-default btn-round btn-lg btn-icon" href="#" rel="tooltip" title="Follow me on Twitter"><i class="fa fa-twitter"></i></a><a class="btn btn-default btn-round btn-lg btn-icon" href="#" rel="tooltip" title="Follow me on Google+"><i class="fa fa-google-plus"></i></a><a class="btn btn-default btn-round btn-lg btn-icon" href="#" rel="tooltip" title="Follow me on Instagram"><i class="fa fa-instagram"></i></a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  

<c:forEach var="table" items="${rs.rows}"> 



<div class="section" id="about">
<center>       


 </center> <br><br><br>
  <div class="container">
    <div class="card" data-aos="fade-up" data-aos-offset="1">
      <div class="row">
        <div class="col-lg-6 col-sm-6 col-md-6">
          <div class="card-body">
        <img src="${table.imagelink1}" style="height:50%; width:50%">
          </div>
        </div>
        <div class="col-lg-6 col-sm-6 col-md-6">
          <div class="card-body">
            <div class="h4 mt-0 title"> 



${table.nameofclient}

 </div>
            <div class="row">
              
            </div>
            <div class="row mt-3">
                <div class="col-sm-8">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star "></span>
                    <span class="fa fa-star "></span>
                    </div>
            </div>
            <div class="row mt-3">
              <div class="col-sm-4"><strong class="text-uppercase">Email:</strong></div>
              <div class="col-sm-8">${table.emailofclient}</div>
            </div>
            <div class="row mt-3">
              <div class="col-sm-4"><strong class="text-uppercase">Phone:</strong></div>
              <div class="col-sm-8">${table.phoneofclient}</div>
            </div>
            <div class="row mt-3">
              <div class="col-sm-4"><strong class="text-uppercase">Address:</strong></div>
              <div class="col-sm-8">${table.addressofclient}</div>
            </div>
            <div class="row mt-3">
      
            </div>
                  <div class="row mt-3">
                <div class="col-sm-4"><a href="tel:${table.phoneofclient}"><button type="button" class="btn btn-danger">CALL</button></a>
                </div> <div class="col-sm-4"><a href="mailto:${table.emailofclient}"><button type="button" class="btn btn-danger">EMAIL</button></a>
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div> </c:forEach>
<script src="./jss/core/jquery.3.2.1.min.js"></script>
<script src="./jss/core/popper.min.js"></script>
<script src="./jss/core/bootstrap.min.js"></script>
<script src="./jss/now-ui-kit.js?v=1.1.0"></script>
<script src="./jss/aos.js"></script>
<script src="./scriptss/main.js"></script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html></CENTER>
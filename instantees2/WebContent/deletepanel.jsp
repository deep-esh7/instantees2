 <jsp:include page="header2.jsp"></jsp:include>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Delete Panel</title>
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
      <sql:update dataSource="${db}" var="rs">  
delete from catagory where cid='${param.id}'; 
</sql:update>  
      
       <h1><center> <c:if test="${rs>=1}">
            <font size="5" color='green'> Congratulations ! Data deleted
            successfully.</font>
              <a href="delete.jsp">Go Back</a>          
        </c:if>
       </center></h1>  



<script src="./jss/core/jquery.3.2.1.min.js"></script>
<script src="./jss/core/popper.min.js"></script>
<script src="./jss/core/bootstrap.min.js"></script>
<script src="./jss/now-ui-kit.js?v=1.1.0"></script>
<script src="./jss/aos.js"></script>
<script src="./scriptss/main.js"></script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
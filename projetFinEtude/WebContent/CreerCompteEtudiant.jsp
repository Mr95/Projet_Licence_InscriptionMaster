<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

  <body class="login-img3-body">

    <div class="container">

      <form class="login-form" action="ControlleurCreerCompteEtudiant" method="Post">        
        <div class="login-wrap">
            <h3 style="color:grey; text-align: center;">Création Compte</h3>
            <div class="col-sm-12">
              
              <input type="text" class="form-control" placeholder="Nom" name="nom" autofocus required>
              
            </div><br>
            <div class="col-sm-12">
               
                <input type="text" class="form-control" placeholder="Prenom" name="prenom" required>
            </div> <br>
            
            <div class="col-sm-12">
               
                <input type="email" class="form-control" placeholder="Email" name="email" required>
            </div> <br>
            <div class="col-sm-12">
               
                <input type="password" class="form-control" placeholder="Password" name="password" required>
            </div> <br>
            
 					<!--<div class="col-sm-12">
 						 <select class="form-control" id="sel1"  name="type">
   							  <%// for(int i =0 ;i<list.size();i++){ %>
   							 <option><%//= list.get(i).getNomFormation() %></option>
   							 <%//} %>
  							<<option>interne</option>
  							<option>externe / ancienne promo</option>
  							<option>equivalence</option>
  						</select>
  						 </div>
				 <br>-->
            <div class="col-sm-12">
               
                <input type="date" class="form-control" placeholder="date" name="daten" required>
            </div> <br>
            <div class="col-sm-12">
               
                <input type="tel" class="form-control" placeholder="telephone" name="tel" required>
            </div> <br>
            
            &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; <button class="btn btn-primary" type="submit" >valider</button>
            
        </div>
      </form>
    
    </div>


  </body>
</html>

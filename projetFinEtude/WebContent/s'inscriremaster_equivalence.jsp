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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Blank | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />    
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="css/fullcalendar.css">
    <link href="css/widgets.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/xcharts.min.css" rel=" stylesheet"> 
    <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="index.jsp" class="logo">Faculté <span class="lite">NTIC</span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->                
            </div>

            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    
                   <!-- alert notification start-->
                    <li id="alert_notificatoin_bar" class="dropdown">
                        <a href="SeeAllNotification.jsp">
						<!--<a data-toggle="dropdown" class="dropdown-toggle" href="#">-->
						<%@page import="modele.notification"%>
						<%@page import="modele.Find"%>
						<%@page import="modele.etudiant"%>
						<%@page import="java.util.ArrayList"%>
						<%@page import="java.util.List"%>
					
						<% 
						int i_etudi = (int) request.getSession().getAttribute("id_etudiant") ;
							
						Find ff =new Find();
							
						 int x =0 ;
							
						 	ArrayList<notification> li = ff.nombrenotification(i_etudi);
						 	 		
						%>
							

							<!-- lazem ntesté beli kraha ou nom -->
                            <i class="icon-bell-l"></i>
                           <%if(li.size()==0){ %>
                           <span class="badge bg-important"></span>
                           <%}else{ %>
                            <span class="badge bg-important"><%=li.size() %></span>
                            <%} %>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">Mes notification</p>
                            </li>
                            
                            <%if(li.size()==0){ %>
                            
                            <li>
                                <p style="color:red;"> pas de notification. </p>
                            </li>
                            
                            <%}else if(li.size()!=0){  %>
                            
                            
                            <% for(int i=0;i<li.size();i++){ %>
                           	
                           	 <li>
                            
                                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span> 
                                 	
                                 	<b><%=li.get(i).getInformation()%></b>
                                          <% request.setAttribute("",""); %>                     
                                </a>
                            </li>
                           		 
                            <%}%>
                            <%} %>
                            
                           
                                
                            <li>
                                <a href="SeeAllNotification.jsp">See all notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="">
                            </span>
                            <%@page import="modele.etudiant" %>
                            <%@page import="modele.Find" %>
                           
                            <%
                            Find fii =new Find();
                            int idee=(int) request.getSession().getAttribute("id_etudiant") ;
                            etudiant e =f.getEtudiantById(idee);
                            %>
                            
                            
                            <span class="username"><%=e.getNom()+" "+e.getPrenom() %></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                           
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                            </li>
                           <li>
                                <a href="#"><i class="icon_mail_alt"></i> Abondonner</a>
                            </li>
                            
                            <li>
                                <a href="login.jsp"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                            
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header> 
          
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                 <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="index.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Accueil</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>S'inscrire</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="s'inscriremaster.jsp">Etudiant Interne</a></li>                          
                          <li><a class="" href="s'inscriremaster_externe.jsp">Etudiant Externe</a></li>
                          <li><a class="" href="s'inscriremaster_equivalence.jsp">Equivalence</a></li>
                      </ul>
                  </li>       
                  <li class="">
                      <a href="suivre_dossier.jsp" class="">
                          <i class="icon_desktop"></i>
                          <span>Suivre Dossier</span>
                        <!--    <span class="menu-arrow arrow_carrot-right"></span>-->
                      </a>
                   <!--    <ul class="sub">
                          
                          <li><a class="" href="prendrerdv.jsp">Prendre RDV</a></li>
                          <li><a class="" href="joindrepiece.jsp">Joindre pièce</a></li>
                      </ul>-->
                  </li>
                  
                  <li>
                      <a class="" href="prendrerdv.jsp">
                          <i class="icon_document_alt"></i>
                          <span>RDV entretien</span>
                      </a>
                  </li>
                  
                  
                  <li>
                      <a class="" href="affichage.jsp">
                          <i class="icon_document_alt"></i>
                          <span>Consulter affichage</span>
                      </a>
                  </li>
                  <li>
                      <a class="" href="demander_recours.jsp">
                          <i class="icon_document_alt"></i>
                          <span>Demander Recours</span>
                      </a>
                  </li>
              
                  
              </ul>
                 
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa fa-bars"></i> S'inscrire au Master</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
						<li class=""><i class="fa fa-bars"></i>S'inscrire Master</li>
						
					</ol>
				</div>
			</div>
              <!-- page start-->
             

<div class="container-fluid">
  <div class="text-center">
    <h1>Formulaire d'inscription</h1>
    <p class="lead">veuillez remplir tout les champs ci-dessous et cliquez sur valider.
    (NB: veuillez bien vérifier que toutes les informations que vous avez entrer sont correctes.) 
    </p>
  </div>
  <form class="form-horizontal" enctype="multipart/form-data" role="form" method="post" action="controlleurInscription">
  
  <input type="hidden" name="inscription" value="equivalence">
  
    <%@page import="modele.Find" %>
                  <%@page import="java.util.List" %>
                  <%@page import="modele.formation" %>
                 <%! List<formation> list =null ;
                 Find f =new Find();%>
                  <% list = f.getFormations();%>
  <fieldset> 
    <%  int id =(int)request.getSession().getAttribute("id_etudiant"); 
   		Find f =new Find();
   		 
   
   %>
  
  <fieldset>
  <legend>Information général</legend>
    <div class="form-group">
     <label class="col-sm-2 control-label">Nom</label>
        <div class="col-sm-10">
         <input type="text" class="form-control" placeholder="votre nom" name="" value="<%=f.getEtudiantById(id).getNom()%>" disabled>
        </div>
    </div>
     <div class="form-group">
     <label class="col-sm-2 control-label">Prénom</label>
        <div class="col-sm-10">
         <input type="text" class="form-control" placeholder="votre prénom" name="" value="<%=f.getEtudiantById(id).getPrenom()%>" disabled>
        </div>
    </div>
    
    
    
    
     <div class="form-group">
     <label class="col-sm-2 control-label">Date Naissance</label>
        <div class="col-sm-10">
         <input type="date" class="form-control" name="" value="" disabled>
        </div>
    </div>
   
     
 		<div class="form-group">
 			<label class="col-sm-2 control-label">Specialité</label>
 			<div class="col-sm-10">
 			 <select class="form-control" id="sel1"  name="formation" required>
   				  <% for(int i =0 ;i<list.size();i++){ %>
   					 <option><%= list.get(i).getNomFormation() %></option>
   						 <%} %>
  			</select>
  			</div>
  		 </div>
		
    
    </fieldset>
   
    <fieldset>
        <legend>Cursus</legend>
         <div class="form-group">
            <label class="col-sm-2 control-label">Relevet du BAC</label>
            <div class="col-sm-10">
                <input type="file" accept=".pdf,.jpg,.png" class="form-control" name="relevetbac" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne du BAC</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" placeholder="moyenne bac" name="moyennebac" disabled>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Relevet 1ère année</label>
            <div class="col-sm-10">
                <input type="file" accept=".pdf,.jpg,.png" class="form-control" name="annee1" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne 1ère année</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" placeholder="moyenne de votre premiere année" name="mannee1" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Relevet 2ème année</label>
            <div class="col-sm-10">
                <input type="file" accept=".pdf,.jpg,.png" class="form-control" name="annee2" required >
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne 2ème année</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" placeholder="moyenne de votre 2ème année" name="mannee2" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Relevet 3ème année</label>
            <div class="col-sm-10">
                <input type="file" accept=".pdf,.jpg,.png" class="form-control" name="annee3" >
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne 3ème année</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" placeholder="moyenne de votre 3ème année" name="mannee3" required>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-2 control-label">Relevet 4ème année</label>
            <div class="col-sm-10">
                <input type="file" accept=".pdf,.jpg,.png" class="form-control"name="annee4" required >
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne 4ème année</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" placeholder="moyenne de votre 4ème année" name="mannee4" required>
            </div>
        </div>
        
         <div class="form-group">
            <label class="col-sm-2 control-label">Diplome equivalent</label>
            <div class="col-sm-10">
                <input type="file" accept=".pdf,.jpg,.png" class="form-control" name="diplomel" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Atestation de classement</label>
            <div class="col-sm-10">
                <input type="file" accept=".pdf,.jpg,.png" class="form-control" name="attcla" required>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-2 control-label">Atestation de bonne conduite</label>
            <div class="col-sm-10">
                <input type="file" accept=".pdf,.jpg,.png" class="form-control" name="bonne" required>
            </div>
        </div> 
        
       
        <div class="form-group">
        <label class="col-sm-2 control-label"></label>
         
         <%@page import="modele.Periodes" %>
         <%@page import="java.util.Date" %>
         <%@page import="java.text.SimpleDateFormat" %>
       
         <%! String debutInscJour , finInscJour , debutInscMois ,finInscMois,current; 
             Date date ;SimpleDateFormat sd;
             int x1,x2,x3,x4,x5,x6 ; 
             Periodes p =null ;
          %>
        
        
         <% 
         date = new Date();	
         sd = new SimpleDateFormat("YYYY-MM-dd");
         p =f.getPeriodes();
         	debutInscJour = sd.format(p.getDebutInscription()) ;
      	    finInscJour = sd.format(p.getFinInscription()) ;
      	 	current =sd.format(date);
      	      	    
      	    String[] datesI =debutInscJour.split("-");
      	    String[] datefI =finInscJour.split("-");
      	    String[] currentd =current.split("-");
    	    int x1 = Integer.valueOf(datesI[0]);
      	    x2=Integer.valueOf(datesI[1]);
    	    x3=Integer.valueOf(datesI[2]);
 	      
    	    int x4=Integer.valueOf(datefI[0]);
    	    x5=Integer.valueOf(datefI[1]);
    	    x6=Integer.valueOf(datefI[2]);
    	    
    	    int x7=Integer.valueOf(currentd[0]);
    	    int x8=Integer.valueOf(currentd[1]);
    	    int x9=Integer.valueOf(currentd[2]);
    	     	    
         	%>
      
      <%if( (x3<=x9) && (x9<=x6) && (x7==x4) && (x4==x1)&&(x8==x5)&&(x5==x2) && (f.getEtudiantById(id).isEtat_Inscription()==false) ){ %>
            &nbsp; &nbsp; &nbsp;<button type="submit" class="btn btn-primary">valider</button>
        <% }else{  %>
           &nbsp; &nbsp; &nbsp;<button type="submit" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="deja inscrit" disabled>valider</button>
          
        
        <% } %>   
            </div>
        </div>
    </fieldset>
  </form>
  
   </div>


<!-- /.container -->
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
      <div class="text-right">
            <div class="credits">
                <!-- 
                    All the links in the footer should remain intact. 
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
                -->
                <a href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
  </section>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script><!--custome script for all page-->
    <script src="js/scripts.js"></script>


  </body>
</html>

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

    <title>Affichage</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!-- external css -->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
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
							
						 int y =0 ;
							
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
                            Find fff =new Find();
                            int id=(int) request.getSession().getAttribute("id_etudiant") ;
                            etudiant e =fff.getEtudiantById(id);
                            %>
                            
                            
                            <span class="username"><%=e.getNom()+" "+e.getPrenom() %></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                           
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i>Mon compte</a>
                            </li>
                          
                            
                            <li>
                                <a href="login.jsp"><i class="icon_key_alt"></i>Se deconnecter</a>
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
                  <li class="">
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
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_genius"></i> Affichage</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
						<li><i class="icon_genius"></i>Consulter Affichage</li>
						
				</div>
			</div>
          	<%@page import="java.text.SimpleDateFormat" %>
       		<%@page import="modele.Periodes" %>
       		<%@page import="modele.Find" %>
       		<%@page import="java.util.Date" %>
       		<%@page import="modele.etudiant" %>
       		<%@page import="java.util.List" %>
          	<% Find f = new Find();
          	   int id_formation= (int)request.getSession().getAttribute("id_formation");
          	   
          	   
          	   
          	   SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY"); 
          	   Periodes p = new Periodes(); 
          	   Date d = new Date();
          	  
          	   p = f.getPeriodes();
          	
          	   etudiant ceEtudiant=null; 
              ceEtudiant = f.getEtudiantById(i_etudi); 
          	   
          	   if(p==null){
          		   %>
          		      <div class="row">
                <div class="col-md-12">
                    <section class="panel panel-primary">
                          <header class="panel-heading">
                              <h3>Affichage des listes</h3>
                              
                          </header>
                    <div class="panel-body">
					
	<div class="panel-group" id="accordion">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
        <%!// etudiant ceEtudiant=null; %>
        <%// ceEtudiant = f.getEtudiantById(i_etudi); %>
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Periode d'affichages </a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
        
        <h3>Il n'ya pas encore de dates pour l'affichage des listes </h3>
        </div></div></div></div></div></section></div></div>
          		   
          		   <%
          	   }else{
          		   
          		
          		   
          	   String debutaffichage = dateFormat.format(p.getAffichage1());
          	   String affichageAR = dateFormat.format(p.getAffichage2());
          	   String affichageFinal = dateFormat.format(p.getAffichage3());
          	   String current = dateFormat.format(d);
          	   
          	   String[] Daffichage = debutaffichage.split("/");
          	   String[] affichage2 = affichageAR.split("/");
          	   String[] finalAffichage = affichageFinal.split("/");
       	   	   String[] Dcurrent = current.split("/");
          	   
       	  	  int firstafD = Integer.valueOf(Daffichage[0]),
   	     	  firstafM=Integer.valueOf(Daffichage[1]),
 	     	  firstafY=Integer.valueOf(Daffichage[2]);
       	  	  
       	  	  int afD = Integer.valueOf(affichage2[0]),
       	  		  afM = Integer.valueOf(affichage2[1]),
       	  		  afY = Integer.valueOf(affichage2[2]);
       	  	  
       	  	  int afFinalD = Integer.valueOf(finalAffichage[0]),
       	  		  afFinalM = Integer.valueOf(finalAffichage[1]),
       	  	  	  afFinalY = Integer.valueOf(finalAffichage[2]);
       	  	  
	      
 	   		  int currentD =Integer.valueOf(Dcurrent[0]),
 	      	  currentM=Integer.valueOf(Dcurrent[1]),
 	          currentY=Integer.valueOf(Dcurrent[2]);
          	   
          	   
          	 
          	   if(currentD>=firstafD && firstafD<=afD && firstafM==currentM && firstafY==currentY){ //si la date courante est supérieur a la date de l'affichage
          		 int nombre_place = f.getNombrePlace(id_formation);
          		 List<etudiant> admisInterne = f.classementInterne(id_formation, "interne", nombre_place);
          		 List<etudiant> admisExterne = f.classementExterne(id_formation, "externe/ancienne promo", nombre_place);
          		 List<etudiant> admisEquivalence = f.classementEquivalence(id_formation, "equivalence", nombre_place);
          	   	%>
          	   	
          		<h1 style="text-align:center; color:black; background-color:#f35656;  ">Ceci est une première liste des étudiants admis en Master <%=f.getFormation(id_formation) %></h1>
          		<!-- ******************************************** page start ********************************** -->
          		<div class="row">
                <div class="col-md-12">
                    <section class="panel panel-primary">
                          <header class="panel-heading">
                              <h3>Affichage</h3>
                              
                          </header>
                    <div class="panel-body">
					
	<div class="panel-group" id="accordion">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Liste des Etudiants admis (Interne)</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisInterne.size();i++){ %>
                                <tr>
                                 <td> <%= admisInterne.get(i).getNom() %> </td>
                                  <td> <%= admisInterne.get(i).getPrenom() %> </td>
                                   <td> <%= admisInterne.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
        </div>
      </div>
    </div>
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Liste des Etudiants admis (Externe) </a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisExterne.size();i++){ %>
                                <tr>
                                 <td> <%= admisExterne.get(i).getNom() %> </td>
                                  <td> <%= admisExterne.get(i).getPrenom() %> </td>
                                   <td> <%= admisExterne.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
        </div>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Liste des Etudiants admis (Equivalence)</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisEquivalence.size();i++){ %>
                                <tr>
                                 <td> <%= admisEquivalence.get(i).getNom() %> </td>
                                  <td> <%= admisEquivalence.get(i).getPrenom() %> </td>
                                   <td> <%= admisEquivalence.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
                    
                    <div class="col-sm-12">
						
					</div>
                     
                  
                    
                 
        
        
        
        
        </div>
      </div>
    
    				 
    
    </div>
  </div> 
</div>	
					
					
        
                    
                    </section>
                </div>
              </div>
              	<%   }else if( currentD>=afD && afD<afFinalD && afM==currentM && afY==currentY){ //si la date courante est supérieur a la date de l'affichage{%>
          		<!-- ******************************************** page end ************************************ -->
          		<%
          		 int nombre_place = f.getNombrePlace(id_formation);
          		 List<etudiant> admisInterne = f.classementInterne(id_formation, "interne", nombre_place);
          		 List<etudiant> admisExterne = f.classementExterne(id_formation, "externe/ancienne promo", nombre_place);
          		 List<etudiant> admisEquivalence = f.classementEquivalence(id_formation, "equivalence", nombre_place);
          	   	%>
          	   	
          		<h1 style="text-align:center; color:black; background-color:#f35656;  ">ceci est une deuxième liste après recours des étudiants <%=f.getFormation(id_formation)%> </h1>
          		<!-- ******************************************** page start Apres Recours ********************************** -->
          		<div class="row">
                <div class="col-md-12">
                    <section class="panel panel-primary">
                          <header class="panel-heading">
                              <h3>Affichage</h3>
                              
                          </header>
                    <div class="panel-body">
					
	<div class="panel-group" id="accordion">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Liste des Etudiants admis (Interne)</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisInterne.size();i++){ %>
                                <tr>
                                 <td> <%= admisInterne.get(i).getNom() %> </td>
                                  <td> <%= admisInterne.get(i).getPrenom() %> </td>
                                   <td> <%= admisInterne.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
        </div>
      </div>
    </div>
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Liste des Etudiants admis (Externe) </a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisExterne.size();i++){ %>
                                <tr>
                                 <td> <%= admisExterne.get(i).getNom() %> </td>
                                  <td> <%= admisExterne.get(i).getPrenom() %> </td>
                                   <td> <%= admisExterne.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
        </div>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Liste des Etudiants admis (Equivalence)</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisEquivalence.size();i++){ %>
                                <tr>
                                 <td> <%= admisEquivalence.get(i).getNom() %> </td>
                                  <td> <%= admisEquivalence.get(i).getPrenom() %> </td>
                                   <td> <%= admisEquivalence.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
                    
                    <div class="col-sm-12">
						
					</div>
                     
                  
                    
                 
        
        
        
        
        </div>
      </div>
    
    				 
    
    </div>
  </div> 
</div>	
					
					
        
                    
                    </section>
                </div>
              </div>
              	<%   }else if(currentD>=afFinalD && afFinalM==currentM && afFinalY==currentY){%>
          		<!-- ******************************************** page end Apres Recours ************************************ -->
          		<%
          		 int nombre_place = f.getNombrePlace(id_formation);
          		 List<etudiant> admisInterne = f.classementInterne(id_formation, "interne", nombre_place);
          		 List<etudiant> admisExterne = f.classementExterne(id_formation, "externe/ancienne promo", nombre_place);
          		 List<etudiant> admisEquivalence = f.classementEquivalence(id_formation, "equivalence", nombre_place);
          	   	%>
          	   	
          		<h1 style="text-align:center; color:black; background-color:#f35656;  ">Ceci est la liste final des étudiants admis au Master spécialité <%=f.getFormation(id_formation) %> </h1>
          		<!-- ******************************************** page start Affichage Final ********************************** -->
          		<div class="row">
                <div class="col-md-12">
                    <section class="panel panel-primary">
                          <header class="panel-heading">
                              <h3>Affichage</h3>
                              
                          </header>
                    <div class="panel-body">
					
	<div class="panel-group" id="accordion">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Liste des Etudiants admis (Interne)</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisInterne.size();i++){ %>
                                <tr>
                                 <td> <%= admisInterne.get(i).getNom() %> </td>
                                  <td> <%= admisInterne.get(i).getPrenom() %> </td>
                                   <td> <%= admisInterne.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
        </div>
      </div>
    </div>
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Liste des Etudiants admis (Externe) </a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisExterne.size();i++){ %>
                                <tr>
                                 <td> <%= admisExterne.get(i).getNom() %> </td>
                                  <td> <%= admisExterne.get(i).getPrenom() %> </td>
                                   <td> <%= admisExterne.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
        </div>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Liste des Etudiants admis (Equivalence)</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
        <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td>NOM</td>
                                  <td>PRENOM</td>
                                  <td>MOYENNE CLASSEMENT</td>
                                </tr>
                              </thead>
                              <tbody>
                              <%for(int i=0;i<admisEquivalence.size();i++){ %>
                                <tr>
                                 <td> <%= admisEquivalence.get(i).getNom() %> </td>
                                  <td> <%= admisEquivalence.get(i).getPrenom() %> </td>
                                   <td> <%= admisEquivalence.get(i).getMc() %> </td>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                          </div>
                    
                    <div class="col-sm-12">
						
					</div>
                     
                  
                    
                 
        
        
        
        
        </div>
      </div>
    
    				 
    
    </div>
  </div> 
</div>	
					
					
        
                    
                    </section>
                </div>
              </div>
              	<% }
              	
              	
              	
              	
              	
              	
              	
              	}%>
          		<!-- ******************************************** page end Affichage Final ************************************ -->
          		
          		
          		
          
          		
          	
          	
          	
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
               
            </div>
        </div>
  </section>
  <!-- container section end -->

    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- jquery knob -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>

  <script>

      //knob
      $(".knob").knob();

  </script>

  </body>
</html>

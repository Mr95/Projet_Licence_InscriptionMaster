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

    <title>Button | Creative - Bootstrap 3 Responsive Admin Template</title>

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
                            Find fi =new Find();
                            int idee=(int) request.getSession().getAttribute("id_etudiant") ;
                            etudiant e =fi.getEtudiantById(idee);
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
                                <a href="#"><i class="icon_mail_alt"></i>Mon compte</a>
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
                      <a href="suivre_dossier.jsp" class="active">
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
					<h3 class="page-header"><i class="fa fa-th"> Prendre RDV</i></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
						<li><i class="fa fa-desktop"></i>Suivre Dossier</li>
						<li><i class="fa fa-th"></i></li>
					</ol>
				</div>
			</div>
              <div class="row">
                <div class="col-md-12">
                    <section class="panel panel-primary">
                          <header class="panel-heading">
                              <h3>Mon dossier</h3>
                              
                          </header>
                    <div class="panel-body">
					
	<div class="panel-group" id="accordion">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">L'etat de mon dossier</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
        <%@page import="modele.Find" %>
        <%@page import="java.text.SimpleDateFormat" %>
        <%@page import="modele.etudiant" %>
        
        <%Find find =new Find();
         etudiant e1 =find.getEtudiantById(idee);
         %>
        
        <%if(e1.getEtat_dossier().equals("dossier manquant")){ 
       
       String piece[]=e1.getManque_dossier().split("/");	%> 
       
       
       <h2><u><b><i> Les pieces manquantes dans votre dossiers sont  :</i></b></u></h2>  
        <%for (String x : piece){ %>
        <h3><i><%=""+x%></i></h3>
        
        <%}%>
        <h3><u><b><i> Veuillez corriger votre documents le plus tot possible.</i></b></u></h3>
      		
      		
       <% }else if(e1.getEtat_dossier().equals("verifié")){%>
        	
        	<div class="alert alert-success">
 			 <strong>Success </strong> Votre dossier a été validé .
			</div>
        	
        	<div class="alert alert-info">
  			
  				<strong>Info!</strong> Votre dossier est en cours de traitement ,Veuillez consulter l'espace "Suivre dossier" ultérieurement.
			
			</div>
        	
       <% }else if(e1.getEtat_dossier().equals("accepté")){ %>
        
        	<div class="alert alert-success">
 			 <strong>Success </strong> Votre dossier a été accepté pour la candidature de master .
			</div>
        
        <!-- had les oper ydirhoum RF f traitement -->
        <%}else if(e1.getEtat_dossier().equals("rejeté")){%>
        	
        	<div class="alert alert-danger">
 			 <strong>Failed ! </strong> Votre dossier a été refusé .
			</div>
        	
       <% } %>
        
        	
        
        </div>
      </div>
    </div>
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Corriger manque du dossier</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
        
      		
        
        <%if(e1.getEtat_dossier().equals("dossier manquant")){ 
       
        	/**************je dois aussi testé la date d'inscription ***************/
        	
       String piece[]=e1.getManque_dossier().split("/");	%> 
       
        <h3><i> Veuillez joindre les documents manquant</i></h3>
       <%@page import="java.util.ArrayList"%> 
        <%
        ArrayList<String> p =new ArrayList<String>();
        
        for (String x : piece){ 
           
        	p.add(x);   
        
        }%>
      
      		<form action="controlleurInscription" method="post" enctype="multipart/form-data">
      		
      		<input type="hidden" name="inscription" value="correction"> 
      		
      		<%for(int i=0 ;i<p.size();i++){%>
      		
      		<%if(p.get(i).equals("Relevet Bac")){ %>
      		
      		
        	<div class="form-group">
            	<label class="col-sm-2 control-label">Relevet Bac</label>
            	<div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="relevetbac" required>
            	</div>
        	</div>
      		
      		 <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne bace</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="moyenne de votre premiere année" name="moyennebac" required >
            </div>
        	</div>
      		
    	  		
      		<%}else if(p.get(i).equals("Relevet 1ere annee")){%>
      	
      			<div class="form-group">
            	<label class="col-sm-2 control-label">Relevet 1ere annee</label>
            	<div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="annee1" required>
            	</div>
        	</div>
      		
      		 <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne 1ere annee</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="moyenne de votre premiere année" name="mannee1" required>
            </div>
        	</div>
      			
      		<%}else if(p.get(i).equals("Relevet 2eme annee")){ %>
      		
      		<div class="form-group">
            	<label class="col-sm-2 control-label">Relevet 2eme annee</label>
            	<div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="annee2" required>
            	</div>
        	</div>
      		
      		 <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne 2eme annee</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="moyenne de votre premiere année" name="mannee2" required>
            </div>
        	</div>
      	
      		
      		<%}else if(p.get(i).equals("Relevet 3eme annee")){%>
      	
      			<div class="form-group">
            	<label class="col-sm-2 control-label">Relevet 3eme annee</label>
            	<div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="annee3" required>
            	</div>
        	</div>
      		
      		 <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne 3 eme annee</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="moyenne de votre premiere année" name="mannee3" required>
            </div>
        	</div>
      	
      		<%}else if(p.get(i).equals("Relevet 4eme annee")){%>
      	
      			<div class="form-group">
            	<label class="col-sm-2 control-label">Relevet 4eme annee</label>
            	<div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="annee4" required>
            	</div>
        	</div>
      		
      		 <div class="form-group">
            <label class="col-sm-2 control-label">Moyenne 4eme annee</label>
            <div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="mannee4" required>
            	</div>
        	</div>
      			
      		
      			     		
      		<%}else if(p.get(i).equals("Diplome Licence")||p.get(i).equals("Diplome equivalent")){ %>	     		
      			     		
      		  <div class="form-group">
            <label class="col-sm-2 control-label">Diplome </label>
            <div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="diplomel" required>
            	</div>
        	</div> 		
      		
      		
      		<%}else if(p.get(i).equals("Attestation de classement")){ %>
      		
      		<div class="form-group">
            <label class="col-sm-2 control-label">Attestation de classement</label>
            <div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="attcla" required>
            	</div>
        	</div>
      		
      		
      		
      		<%}else if(p.get(i).equals("Attestation de bonne conduite")){ %>
      		
      		<div class="form-group">
            <label class="col-sm-2 control-label">Attestation de bonne conduite</label>
            <div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="bonne" required>
            	</div>
        	</div>
      		
      		
      		
      		<%}else if(p.get(i).equals("Identité")){ %>    
      		      <div class="form-group">
            <label class="col-sm-2 control-label">Piece d'identité</label>
            <div class="col-sm-10">
                	<input type="file" accept=".pdf,.jpg,.png" class="form-control" name="relevetbac" required>
            	</div>
        	</div>

      		<%} %>
      		
      		
      		
       
        
        <%}%>
      		&nbsp; &nbsp; &nbsp; <button class="btn btn-primary" type="submit"> Corriger </button>
      	<%}else{%>
          
         <b> <%= "Rien a corriger" %></b>
      		
      		<%} %>
      		</form>
        
        </div>
      </div>
    </div>
   <!-- <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Mon recours</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
        
        
        
        
        
        </div>
      </div>
    
    				 <div class="panel panel-success">
      					<div class="panel-heading">
     					   <h4 class="panel-title">
      				    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Reponse de l'equipe pedagogique</a>
     					   </h4>
     				 </div>
    			  <div id="collapse4" class="panel-collapse collapse">
     			   <div class="panel-body">
        			
        			
        			
        			
        
        			
        
        </div>
      </div>
    </div>-->
    
    </div>
  </div> 
</div>	
					
					
        
                    
                    </section>
                </div>
              </div>
              <!-- page start-->              




              <div class="row">
                  <div class="col-sm-6">
                    
                       
                      
                                         
                  </div>
                  <div class="col-sm-6">                      
                      
                  </div>
              </div>
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
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>


  </body>
</html>
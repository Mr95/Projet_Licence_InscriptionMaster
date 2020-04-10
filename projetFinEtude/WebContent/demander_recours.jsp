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
					<h3 class="page-header"><i class="fa fa-th"> Prendre RDV</i></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
						<li><i class="fa fa-desktop"></i>Suivre Dossier</li>
						<li><i class="fa fa-th"></i>Prendre RDV</li>
					</ol>
				</div>
			</div>
              <div class="row">
                <div class="col-md-12">
                    <section class="panel panel-primary">
                          <header class="panel-heading">
                              <h3>Demander Recours</h3>
                              
                          </header>
                    <div class="panel-body">
					
	<div class="panel-group" id="accordion">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Periode de recours</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
        <%@page import="modele.Find" %>
        <%@page import="java.text.SimpleDateFormat" %>
        <%@page import="modele.Periodes" %>
        
        <%Find find =new Find();
         Periodes per =new Periodes();	
        per =find.getPeriodes() ;
      		SimpleDateFormat simpledate =new SimpleDateFormat("dd/MMM/YYYY");
 		       
        %>
        
       <h2> L'equipe pédagogique de l'université Constantine 2 vous informe que :</h2>  
        
        <h3>- La periode du recours commence le : <%=simpledate.format(per.getDebutRecours()) %></h3>
        
        <h3>- La periode du recours se termine le : <%=simpledate.format(per.getFinRecours()) %></h3>
        </div>
      </div>
    </div>
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Information recours</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
        
        ici je vais mettre les condition et tout w beli rahin ndorsso bien recours ta3ou
        
        </div>
      </div>
    </div>
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Mon recours</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
        
         <%@page import="modele.Periodes" %>
         <%@page import="java.util.Date" %>
         <%@page import="modele.Find" %>
         <%@page import="java.text.SimpleDateFormat" %>
       
         <%! String debutRecours , finRecours , debutRecoursMois ,current; 
             Date date ;SimpleDateFormat sd;
             int x1,x2,x3,x4,x5,x6 ; 
             Periodes p =null ;
         // 'etudiant est inscrit  **fait
         //    aussi s'il est admis  -*pas encore
             %>
        
        
         <% 
         int id =(int)request.getSession().getAttribute("id_etudiant"); 
         Find f =new Find();
        
         date = new Date();	
         sd = new SimpleDateFormat("YYYY-MM-dd");
         p = f.getPeriodes();
         	
         debutRecours = sd.format(p.getDebutRecours()) ;
         finRecours   = sd.format(p.getFinRecours()) ;
         current      = sd.format(date);
      	      	    
      	    String[] Drecours = debutRecours.split("-");
      	    String[] Frecours = finRecours.split("-");
      	    String[] Dcurrent = current.split("-");
    	    
      	    int x1 = Integer.valueOf(Drecours[0]);
      	       x2=Integer.valueOf(Drecours[1]);
    	       x3=Integer.valueOf(Drecours[2]);
 	      
    	    int x4=Integer.valueOf(Frecours[0]);
    	        x5=Integer.valueOf(Frecours[1]);
    	        x6=Integer.valueOf(Frecours[2]);
    	    
    	    int x7=Integer.valueOf(Dcurrent[0]);
    	    int x8=Integer.valueOf(Dcurrent[1]);
    	    int x9=Integer.valueOf(Dcurrent[2]);
    	   
         	%>
      
                 <form action="ControlleurRecours" method="Post">
                    
                    <input type="hidden" name="Recours" value="demanderRecours">
                    
                    <div class="col-sm-12">
						<textarea rows="10" cols="150" name="Monrecours"></textarea><br>
					</div>
                     
                  
                    
                  <% if((x3<=x9) && (x9<=x6) && (x7==x4) && (x4==x1) && (x8==x5) && (x5==x2)){ 
                   	
                	  
                   	if(f.getEtudiantById(id).isEtat_Inscription()==false /*|| f.getEtudiantById(id).isAdmis()==true*/||f.hasRecours(id)){	%>
                 
                  	<div class="col-sm-12">
                  
                    <button type="submit"  class="btn btn-primary" disabled>valider</button>
                  
                   </div>  
                   
                   <%}else{ %>
                   
                   <div class="col-sm-12">
                  
                    <button type="submit"  class="btn btn-primary" >valider</button>
                  
                   </div>
                   
                   <%} %>
                   
                   <%  }else{ %>
                   <div class="col-sm-12">
                  
                      <button type="submit"  class="btn btn-primary" disabled>valider</button>
                  
                 </div>
                    <% } %>
                   
                    
                    
                    </form>
        
        
        
        
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
        			
        			<%if(f.getReponseRecours(id)==null){}else{ %>
        			
      				<%if(f.getReponseRecours(id).equals("Accepté")){ %>
					
					<h2> Le comité pédagogique de l'université Constantine 2 , vous informe que votre demande de recours a été : <span class="label label-success">Accepté</span> </h2>	
        
        			<%}else if(f.getReponseRecours(id).equals("Rejeté")){%>
        				
        			<h2> Le comité pédagogique de l'université Constantine 2 , vous informe que votre demande de recours a été :<span class="label label-danger">Refusé</span> </h2>	
        		
        			<%}else{ %>
        				
        				<%= "" %>
        				
        			<%} 
      				}%>
        
        			
        
        </div>
      </div>
    </div>
    
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
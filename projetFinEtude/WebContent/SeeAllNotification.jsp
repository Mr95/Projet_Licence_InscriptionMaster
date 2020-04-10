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


			<% int id_etudiant =(int)request.getSession().getAttribute("id_etudiant"); %>



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
                                <a href="#"><i class="icon_mail_alt"></i>Mon compte</a>
                            </li>
                            
                            <li>
                                <a href="login.jsp"><i class="icon_key_alt"></i>se déconnecter</a>
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
					<h3 class="page-header"><i class="fa fa-th"> Notifications</i></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp"></a></li>
						<li><i class="fa fa-desktop"></i></li>
						<li><i class="fa fa-th"></i></li>
					</ol>
				</div>
			</div>
              <div class="row">
                <div class="col-md-12">
                    <section class="panel panel-primary">
                          <header class="panel-heading">
                              <h3>Mes notifications</h3>
                              
                          </header>
                    <div class="panel-body">
					
					<%@page import="modele.Find" %>
					<%@page import="java.util.ArrayList" %>
					<%@page import="modele.notification"%>
					<% Find f = new Find();
					
					
						ArrayList<notification>list =new ArrayList<notification>();
					
							list =f.notificationAll(idee);
					%>
					
				
						<%if(list.size()==0){ %>
	
							<div class="well well-lg"><p style="font-family:Times New Roman ;font-size:30px ; color:red ;"> Pas de notification  </div>
	
						<%}else{ %>
	
	
							<%for(int i =0 ;i<list.size();i++){ %>
							
	
							<div class="well well-lg"><p style="font-family:Times New Roman ;font-size:30px ; color:green;"> <%=list.get(i).getInformation()%></p> <%= list.get(i).getTime().toLocaleString() %> </div>
							
							
								<!-- pour marquer les notifs comme lu -->
								<% f.notificationLu(list.get(i).getId_notification()); %>
								
					
	
	
								<%}%>
	
						<%} %>
        
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
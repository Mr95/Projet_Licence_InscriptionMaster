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
                    
                    <!-- task notificatoin start -->
                    <li id="task_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-task-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 pending tasks</p>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Design PSD </div>
                                        <div class="percent">90%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                            <span class="sr-only">90% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">
                                            Project 1
                                        </div>
                                        <div class="percent">30%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                            <span class="sr-only">30% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Digital Marketing</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Logo Designing</div>
                                        <div class="percent">78%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                            <span class="sr-only">78% Complete (danger)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Mobile App</div>
                                        <div class="percent">50%</div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar"  role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                            <span class="sr-only">50% Complete</span>
                                        </div>
                                    </div>

                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- task notificatoin end -->
                    <!-- inbox notificatoin start-->
                    <li id="mail_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                    </span>
                                    <span class="message">
                                        I really like this admin panel.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">
                                     Hi, What is next project plan?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Phillip   Park</span>
                                    <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">
                                        I am like to buy this Admin Template.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Ray   Munoz</span>
                                    <span class="time">1 day</span>
                                    </span>
                                    <span class="message">
                                        Icon fonts are great.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox notificatoin end -->
                    <!-- alert notification start-->
                    <li id="alert_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 4 new notifications</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span> 
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>  
                                    John location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span> 
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span> 
                                    Mick appreciated your work.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
                            </li>                            
                            <li>
                                <a href="#">See all notifications</a>
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
                            <%@page import="modele.personne" %>
                            
                            <%@page import="modele.Find" %>
                           
                            <%
                            Find f2 =new Find();
                            int id=(int) request.getSession().getAttribute("id_responsableP") ;
                            personne p =f2.getRP(id);
                            %>
                            
                            
                            <span class="username"><%=p.getNom()+" "+p.getPrenom() %></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                           
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
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
                      <a class="" href="accueilrp.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Accueil</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="place_pedagogie.jsp" class="">
                          <i class="icon_document_alt"></i>
                          <span>Nombre Places</span>
                          
                      </a>
                      
                  </li>       
                  <li class="">
                      <a href="definirPeriode.jsp" class="">
                          <i class="icon_desktop"></i>
                          <span>Définir Périodes</span>
                          
                      </a>
                      
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="" >
                          <i class="icon_genius"></i>
                          <span>Gérer Comptes </span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="creer_compte.jsp">Créer</a></li>
                          <li class=""><a  href="controlleurModifCompte">Modifier/Supprimer</a></li>
                          
                      </ul>
                  </li>
                  <li class="">
                      <a href="consulter_recours.jsp" class="">
                          <i class="icon_document_alt"></i>
                          <span>consulter Recours</span>
                          
                      </a>
                      
                  </li>   
                  <li class="">
                      <a href="ajouter_formation.jsp" class="">
                          <i class="icon_document_alt"></i>
                          <span>Ajouter Formation</span>
                          
                      </a>
                      
                  </li>   
                    <li class="">
                      <a href=".jsp" class="">
                          <i class="icon_document_alt"></i>
                          <span> Evaluation</span>
                          
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
					<h3 class="page-header"><i class="fa fa-th"> Créer Compte</i></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
						<li><i class="fa fa-desktop"></i>Gérer Comptes</li>
						<li><i class="fa fa-th"></i>Créer compte</li>
					</ol>
				</div>
			</div>
              <div class="row">
                <div class="col-md-12">
                    <section class="panel panel-primary">
                          <header class="panel-heading">
                              <h3>Création d'un compte</h3>
                              
                          </header>
    
    		<%String x=(String) request.getAttribute("creer") ; %>
    
    		<%if(x==null){ %>
    	
    
    		<%}else if(x.equals("agent")){ %>
              <div class="alert alert-success">
 				 <strong>Success :</strong> Compte agent bien creé .
			</div>
              
            <%}else if(x.equals("responsable")){ %>  
                  
                <div class="alert alert-success">
					  <strong>Success :</strong>Compte responsable formtion bien creé .
				</div>
                          
            <% } %>	             
	
		<form action="ControlleurAjoutRFA" method="post" >
                  <div class="radio">
                   &nbsp; <label>
                        <input type="radio" name="choixcompte"  value="agent" checked>
                        Agent de Scolarité
                    </label>
                  </div>
                  <div class="radio">
                    &nbsp;<label>
                        <input type="radio" name="choixcompte"  value="rf" >
                        Responsable de Foramtion
                    </label>
                  </div>
                  <%@page import="modele.Find" %>
                  <%@page import="java.util.List" %>
                  <%@page import="modele.formation" %>
                 <%! List<formation> list =null ;
                 Find f =new Find();%>
                  <% list = f.getFormations();%>
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Nom</label>
                     <div class="col-sm-10">
                         <input type="text" name="nom"  class="form-control" required>
                     </div>
                  </div>
                  
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Préonm</label>
                     <div class="col-sm-10">
                         <input type="text" name="prenom"  class="form-control" required>
                     </div>
                  </div>
                  <div class="form-group">
 					 <label for="sel1"  class="col-sm-2 control-label">Specialité:</label>
 						<div class="col-sm-10">
 						 <select class="form-control" id="sel1" name="formation">
   							 <% for(int i =0 ;i<list.size();i++){ %>
   							 <option><%= list.get(i).getNomFormation() %></option>
   							 <%} %>
   							 
    						 
  						</select>
  						 </div>
				  </div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label">email</label>
                     <div class="col-sm-10">
                         <input type="email" name="email"  class="form-control" required>
                     </div>
                  </div>
                  
                  
                  
                  <div class="form-group">
                     <label class="col-sm-2 control-label">password</label>
                     <div class="col-sm-10">
                         <input type="password" name="password"  class="form-control" required>
                     </div>
                  </div>
                  
                  
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Téléphone</label>
                     <div class="col-sm-10">
                         <input type="number" name="telephone"  class="form-control" required>
                     </div>
                  </div>
                  
                  
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Date Naissance</label>
                     <div class="col-sm-10">
                         <input type="date" name="daten" class="form-control" required>
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Adresse</label>
                     <div class="col-sm-10">
                         <input type="text" name="adresse" class="form-control" required>
                     </div>
                  </div>
                 &nbsp;&nbsp; <button type="submit" class="btn btn-primary">Valider</button>
    </form>    
                       
              
                    </section>
                </div>
              </div>
             
              <!-- Modal -->
  			<div class="modal fade" id="myModal" role="dialog">
   				 <div class="modal-dialog">
    
    		 <!-- Modal content-->
     		 <div class="modal-content">
      		  <div class="modal-header">
      		    <button type="button" class="close" data-dismiss="modal">&times;</button>
       			   <h4 class="modal-title">Res</h4>
       		 </div>
      
      	  <div class="modal-body">
        	  <p>Compte creer .</p>
        </div>
        	<div class="modal-footer">
          	
          	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        	
        	</div>
      	</div>
      
    </div>
  </div>
  
</div>
             
             
             
             
             
              <!-- page start-->              




             
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
      
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

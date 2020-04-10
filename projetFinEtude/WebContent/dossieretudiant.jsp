<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Dossier</title>

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
                                <a href="#">See all notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username">Jenifer Smith</span>
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
      <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="accueilagent.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Accueil</span>
                      </a>
                  </li>
				 
                  <li>
                      <a class="" href="etablirCertificat.jsp">
                          <i class="icon_genius"></i>
                          <span>Etablir certificat</span>
                      </a>
                  </li>
                
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
        
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-th"> VERIFIER DOSSIER</i></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
						<li><i class="fa fa-desktop"></i>Suivre Dossier</li>
						<li><i class="fa fa-th"></i>Prendre RDV</li>
					</ol>
				</div>
			</div>
              <div class="row">
               	
                <div class="col-md-12">
                    <section class="panel">
                          <header class="panel-heading">
                    
                          </header>
                    <%@page import="modele.etudiant" %>
                    <%@page import="modele.Find" %>
                    <%! String nomEtudiant=null ,type_etudiant=null ;String id ; %>
                  <% 
                  	id =(String) request.getSession().getAttribute("idEtudiant");//idEtudiant
                     nomEtudiant =(String)request.getSession().getAttribute("nomEudiant");
                     type_etudiant =(String)request.getSession().getAttribute("type_etudiant");
                  	 Find f =new Find();	
                  	 int ID =Integer.valueOf(id);
                     etudiant e = f.getEtudiantById(ID) ;
                     %>
                   
                   <%if(type_etudiant.equals("interne")){ %>
                    
                  <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					    
     					    <form action="ControlleurInfoDossier" method="Post">
     					    
     					     <input type="hidden" name="verifierdossier" value="signaler">
     					    
     					    <div class="panel-heading">relevet de Bac</div>
    					 <div class="panel-body">
    					
    					 <a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet_bac&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
					     	<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet_bac&idEtudiant=<%=id%>" width="280" height="300">
                        </a>
                        
                         <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="relBac" value="Relevet Bac ">Manquant</label>
						</div>
                        
                         </div>
   					 </div>
                 </div> 	
                    
                  
                  
                
                <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 1ere annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet1&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
							<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet1&idEtudiant=<%=id%>" width="280" height="300">
                        	</a> 
                        	
                        	 <input type="text" name="" value="<%=e.getMoyenne1()%>" disabled>
                        	
                        	<div class="checkbox">
 								 <label><input type="checkbox" name="rel1" value="Relevet 1ere annee">Manquant</label>
							</div>
  						</div>
   					 </div>
                 </div> 	
                
                
                
                
                <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 2eme annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet2&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet2&idEtudiant=<%=id%>" width="280" height="300">
                        </a> 
                        
                         <input type="text" name="" value="<%=e.getMoyenne2()%>" disabled>
                        
                        <div class="checkbox">
  						<label><input type="checkbox" name="rel2" value="Relevet 2eme annee">Manquant </label>
						</div>
                        
                         </div>
   					 </div>
                 </div> 	
                
                
                
                
                
                <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 3eme annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet3&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet3&idEtudiant=<%=id%>" width="280" height="300">
                        </a> 
                        
                         <input type="text" name="" value="<%=e.getMoyenne3()%>" disabled>
                        
                        <div class="checkbox">
 						 <label><input type="checkbox" name="rel3" value="Relevet 3eme annee">Manquant</label>
							</div>
                        
                          </div>
   					 </div>
                 </div> 	
                 
                 <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Attestation de bonne conduite</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= bonne_conduite&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= bonne_conduite&idEtudiant=<%=id%>" width="280" height="300">
                        </a> 
                        
                         <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
 						 <label><input type="checkbox" name="conduite" value="Attestation de bonne conduite">Manquant</label>
							</div>
                        
                          </div>
   					 </div>
                 </div> 	
                 
                 <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Identité</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= bonne_conduite&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= bonne_conduite&idEtudiant=<%=id%>" width="280" height="300">
                        </a> 
                        
                         <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
 						 <label><input type="checkbox" name="ident" value="Identité">Manquant</label>
							</div>
                        
                          </div>
   					 </div>
                 </div> 
                 
                 
                 
                 <div class="col-sm-1">
                        	<button type="submit"class="btn btn-danger btn-md">Signaler</button>
                        	</div>
                 
                </form>
              
             <!-- </section> -->
                </div>
              
                		<form action="ControlleurInfoDossier" method="Post" >
                		
     					     <input type="hidden" name="verifierdossier" value="verifié">
                		<div class="col-sm-1">
                        	<button type="submit"class="btn btn-success btn-md">Valider</button>
                        	</div>
                        </form>
                
                   	      
                      
                      <% }else if(type_etudiant.equals("externe/ancienne promo")){ %>
                        	
                    <div class="panel-body">
                     <form  action="ControlleurInfoDossier" method="Post">
                     
     					     <input type="hidden" name="verifierdossier" value="signaler">
                      <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					    <div class="panel-heading">relevet de Bac</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet_bac&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
					     	<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet_bac&idEtudiant=<%=id%>" width="220" height="300">
                        </a> 
                        
                         <input type="number" name="" value="" disabled>
                        
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="relBac" value="relevet de Bac">Manquant</label>
						</div>
                        
                        </div>
   					 </div>
                 </div> 	
                    
                  
                  
                
                <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 1ere annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet1&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet1&idEtudiant=<%=id%>" width="220" height="300">
                        </a> 
                        
                         <input type="number" name="" value="<%=e.getMoyenne1()%>" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="rel1" value="Relevet 1ere annee">Manquant</label>
						</div>
                        
                        </div>
   					 </div>
                 </div> 	
                
                
                
                
                <div class="col-sm-4">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 2eme annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet2&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet2&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number" name="" value="<%=e.getMoyenne2()%>"disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="rel2" value="Relevet 2eme annee">Manquant</label>
						</div>
                        
                        
                        </div>
   					 </div>
                 </div> 	
                
                
                
                
                
                <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 3eme annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet3&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet3&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number" name="" value="<%=e.getMoyenne3()%>" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="rel3" value="Relevet 3eme annee">Manquant</label>
						</div>
                        
                        
                        
                         </div>
   					 </div>
                 </div> 	
                         
                         
                         
                 <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Diplome Licence</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= diplome&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= diplome&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="diplome" value="Diplome Licence">Manquant</label>
						</div>
                        
                        
                        
                          </div>
   					 </div>
                 </div> 	        
                         
                         
                         <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Attestation de classement</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= attestation_classement&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= attestation_classement&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="classement" value="Attestation de classement">Manquant</label>
						</div>
                      </div>   
                        </div>
                        </div> 
                         
                         
                         
                         
                         
                         
                         
                    <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Attestation de bonne conduite</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= bonne_conduite&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= bonne_conduite&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="conduite" value="Attestation de bonne conduite">Manquant</label>
						</div>
                        
                        
                        
                          </div>
   					 </div>
                 </div> 	        
                    
                    
                       <div class="col-sm-1">
                        	<button type="submit"class="btn btn-danger btn-md">Signaler</button>
                        	</div>
                    
                </form>	
             
             
             	
                		<form action="ControlleurInfoDossier" method="Post">
                		  <input type="hidden" name="verifierdossier" value="verifié">
                		<div class="col-sm-1">
                        	<button type="submit"class="btn btn-success btn-md">Valider</button>
                        	</div>
                        </form>
             
             
             
                         
                </div>	      
                        	
                        
                     
                 
             
                        	
                        	
                        	
                       <%  }else if(type_etudiant.equals("equivalence")){ %>
                        	
                        	<div class="panel-body">
                       <form  action="ControlleurInfoDossier" method="Post">
                       
     					     <input type="hidden" name="verifierdossier" value="signaler">
                         <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					    <div class="panel-heading">relevet de Bac</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet_bac&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
					     	<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet_bac&idEtudiant=<%=id%>" width="220" height="300">
                        </a> 
                        
                         <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="relBac" value="relevet de Bac">Manquant</label>
						</div>
                        
                        
                        </div>
   					 </div>
                 </div> 	
                    
                  
                  
                
                <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 1ere annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet1&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet1&idEtudiant=<%=id%>" width="220" height="300">
                        </a> 
                        
                         <input type="number" name="" value="<%=e.getMoyenne1()%>" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="rel1" value="Relevet 1ere annee">Manquant</label>
						</div>
                        
                        
                        </div>
   					 </div>
                 </div> 	
                
                
                
                
                <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 2eme annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet2&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier=relevet2&idEtudiant=<%=id%>" width="220" height="300">
                        </a> 
                        
                         <input type="number" name="" value="<%=e.getMoyenne2()%>" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="rel2" value="Relevet 2eme annee">Manquant</label>
						</div>
                        
                         </div>
   					 </div>
                 </div> 	
                
                
                
                
                
                <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 3eme annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet3&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet3&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number" name="" value="<%=e.getMoyenne3()%>" disabled>
                        
                        <div class="checkbox">
  							<label><input type="checkbox" name="rel3" value="Relevet 3eme annee">Manquant</label>
						</div>
                        
                        
                         </div>
   					 </div>
                 </div> 	
                         
                         <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Relevet 4eme annee</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet4&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= relevet4&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number" name="" value="<%=e.getMoyenne4()%>" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="rel4" value="Relevet 4eme annee">Manquant</label>
						</div>
                        
                           </div>
   					 </div>
                 </div> 
                         
                         
                 <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Diplome equivalent</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= diplome&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= diplome&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="diplome" value="Diplome equivalent">Manquant</label>
						</div>
                        
                          </div>
   					 </div>
                 </div> 	        
                         
                       
                       
                       
                        <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Attestation de classement</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= attestation_classement&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= attestation_classement&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                         <input type="number"  value="" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="classement" value="Attestation de classement">Manquant</label>
						</div>
                        
                          </div>
   					 </div>
                 </div> 	
                       
                       
                       
                        <div class="col-sm-3">
                  	 <div class="panel panel-primary">
     					 <div class="panel-heading">Attestation de bonne conduite</div>
    					 <div class="panel-body"><a href="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= bonne_conduite&idEtudiant=<%=id%>" onclick="window.open(this.href, 'photo', 'height=300, width=400, top=0, left=100, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=yes, status=no'); return false;">
						<img class="img-responsive" alt="pas d'image" src="http://localhost:7778/projetFinEtude/ControlleurDossier?fichier= bonne_conduite&idEtudiant=<%=id%>" width="220" height="300">
                        </a>  
                        
                          <input type="number" name="" value="" disabled>
                        
                        <div class="checkbox">
  					<label><input type="checkbox" name="conduite" value="Attestation de bonne conduite">Manquant</label>
						</div>
                        
                          </div>
   					 </div>
                 </div> 	
                       
                 
                       <div class="col-sm-1">
                        	<button type="submit"class="btn btn-danger btn-md">Signaler</button>
                        	</div>
                    
                </form>	
             
             
             	
                		<form  action="ControlleurInfoDossier" method="Post">
                		
     					     <input type="hidden" name="verifierdossier" value="verifié">
                		<div class="col-sm-1">
                        	<button type="submit"class="btn btn-success btn-md">Valider</button>
                        	</div>
                        </form>      
                       
                       
                                     
                         
                  	</div>	      
                        	
                        	
                        	
                        	
                    <%    } %>
                  
                        
                        
                        
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
<%@ page import = "it.ats.modello.*"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="it.ats.persistenza.*" %>
<%@page import="it.ats.persistenza.impl.*" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>Woof</title>
	<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
	<!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">
	<!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<style>.border_radius { border-radius: 10px 10px 10px 10px; }</style>
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.jsp">W O O F !</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                 
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                   
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                   
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="profilo.jsp"><i class="fa fa-user fa-fw"></i>Profilo</a>
                       
                        <li class="divider"></li>
                        <li><a href="./Logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Cerca...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="index.html"> Dashboard</a>
                        </li>
                        <li>
                            <a href="#">I miei cani<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <%
                               List<Cane> listaCane=new ArrayList<Cane>();
                                listaCane=(List<Cane>)session.getAttribute("listaCani");
                                 
                                  for(Cane cane : listaCane){
                                	  %>
                                	  <li> 
                                	  <form method= "POST" action = "PassaggioCane">
                                	  <input type = "hidden" name = "idCane" id= "idCane" value ="<%=cane.getIdCane() %>" />
                                	  <button type = "submit" style= "background-color:transparent;border-color:transparent;"><%=cane.getNome() %></button>
                                	  
                                	  </form>
                                	  
                                	  </li>
                                	  <%
                                 
		                          }%>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                        <li>
                            
                        </li>
                        <li>
                            <a href="#"></i>Gestione cani<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                
                                <li>
                                    <a href="registrazioneCane.jsp">Aggiungi</a>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"></i>Dogsitter<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="VediDogsitter">Vedi</a>
                                </li>
                                <li>
                                    <a href="diventaDogSitter.jsp">Diventa Dogsitter</a>
                                </li>
                                
                               
                            </ul>
                           
                        </li>
                        <li class="active">
                            <a href="#">Toelettatura<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a class="active" href="VediToelettatori">Vedi</a>
                                </li>
                                <li>
                                    <a href="diventaToelettatore.jsp">Diventa Toelettatore</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li> <li>
                           <div>
                           <% 
                            int ruolo = (Integer) session.getAttribute("ruolo");
                        	if (ruolo==1 || ruolo==0){
                        	   System.out.print("sei sulla buona strada ");
                        	   %>
                        	    <li>
                                    <a  href="registrazioneDogFriendly.jsp">Aggiungi dogfrendly</a>
                        	   
                        	    </li>
                        	     <% if (ruolo==0){%>
                        	     
                        	    	 <%   } %>
                                <li>
                                    <a href="cambiaRuolo.jsp">Cambia Ruolo</a>
                                </li>
                        	   <% 
                           } %>
                           </div>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">PROFILO</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid 
            
            nome:prova
cognome:prova
sesso:maschio
username:prova
passwrd:prova
citta:prova
foto:foto
indirizzo:prova
verificato:0
mail:prova@gmail.com
telefono:prova@gmail.com
nascita:1234567890
-->
<% 
Utente utente = new Utente();

%>

             <table class="table table-user-information">
                    <tbody>
                   <tr>
                       <td>Foto profilo</td>
                       <td>
                        <form action="./UploadServlet" method="post" enctype="multipart/form-data">
						<input type="file" name="foto" />
						<!--   <input type="hidden" name="id_utente" value="<%= session.getAttribute("id_utente")%>">--> 
						<br>
						<input class="btn btn-primary" type="submit" />
						</form>
   					</td>
                      </tr>
                      <tr>
                        <td>Username</td>
                        <td><input type="text"  class="form-control" name="username" value="<%= session.getAttribute("username")%>"></td>
                      </tr>
                      <tr>
                        <td>Nome</td>
                        <td><input type="text" class="form-control"  name="nome" value="<%= session.getAttribute("nome")%>"></td>
                      </tr>
                      <tr>
                        <td>Cognome</td>
                        <td><input type="text" class="form-control"  name="cognome" value="<%= session.getAttribute("cognome")%>"></td>
                      </tr>
                   
                      <tr>
                      <td>Sesso</td>
                      <td>
                    	<div class="form-group">
						<div class=".radio-inline">
						<input type="radio" name="gender" value="maschio"> Maschio
						</div>
						<div class=".radio-inline">
						<input type="radio" name="gender" value="femmina"> Femmina
						</div>
						<div class=".radio-inline">
						<input type="radio" name="gender" value="altro"> Altro
						</div>
						</div>
						</td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><input type="email" class="form-control"  name="email" value="<%= session.getAttribute("mail")%>"></a></td>
                      </tr>
                       <tr>
                        <td>Password</td>
                        <td><input type="text" class="form-control"  name="password" value=""></a></td>
                      </tr>
                      <tr>
                      <td>Data di Nascita</td>
                      <td>
                      <input type="data" name="nascita" class="form-control" placeholder="(DD/MM/YYYY)" value="<%= session.getAttribute("nascita")%>">
                      </td>
                      </tr>
                        <tr>
                        <td>Indirizzo</td>
                        <td><input type="text" class="form-control" name="indirizzo" value="<%= session.getAttribute("indirizzo")%>"></td>
                      </tr>
                      <tr>  
                      <td>Telefono</td>
                        <td><input type="text" class="form-control"  name="telefono" value="<%= session.getAttribute("telefono")%>"></td>
                      </tr>
                      <tr>
                        <td>Citt�</td>
                        <td><input type="text" class="form-control"  name="citta" value="<%= session.getAttribute("citta")%>"></td>
                      </tr>
                      <tr>
                      <td>
                      <input type="hidden" name="id" value="<%= session.getAttribute("id_utente")%>">
                      <input type="submit" class="btn btn-success" value="Aggiorna">
                      </td>
                      </tr>
                      </form>
                    </tbody>
                  </table>
                  
        </div>
        <!-- /#page-wrapper -->

        
        

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>

</html>

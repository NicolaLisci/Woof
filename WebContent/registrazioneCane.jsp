<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="it.ats.modello.*" %>
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
                <a class="navbar-brand" href="index.html">W O O F !</a>
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
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Informazioni</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="/Logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
                                <li>
                                    <a href="flot.html">Cane 1 </a>
                                </li>
                                <li>
                                    <a href="morris.html">Cane 2</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                        <li>
                            
                        </li>
                        <li>
                            <a href="#"></i>Gestione cani<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panels-wells.html">Cerca</a>
                                </li>
                                <li>
                                    <a href="registrazioneCane.jsp">Aggiungi</a>
                                </li>
                                <li>
                                    <a href="modificaCane.jsp">Modifica</a>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"></i>Dogsitter<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Cerca</a>
                                </li>
                                <li>
                                    <a href="#">Diventa Dogsitter</a>
                                </li>
                               
                            </ul>
                           
                        </li>
                        <li class="active">
                            <a href="#">Toelettatura<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a class="active" href="blank.html">Cerca</a>
                                </li>
                                <li>
                                    <a href="#">Diventa Toelettatore</a>
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
                        <h1 class="page-header">REGISTRAZIONE CANE</h1>
                    </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
            
            
            <form class="form-horizontal" method="post" action="RegistrazioneCaneServlet">


<!-- Form Name -->


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nome">Nome</label>  
  <div class="col-md-4">
  <input id="nome" name="nome" type="text" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Taglia-->
<div class="form-group">
  <label class="col-md-4 control-label" for="taglia">Taglia</label>  
  <div class="col-md-4">
  <input id="taglia" name="taglia" type="text" placeholder="piccola,media,grande" class="form-control input-md" required="">
    
  </div>
</div>

<!--Razza -->
<div class="form-group">
  <label class="col-md-4 control-label" for="razza">Seleziona razza</label>
  <div class="col-md-4">
    <select id="razza" name="razza" class="form-control">
			
	<% 
		DAORazza daoRazza=new DAORazzaImpl();
		try {
			List<Razza>listaRazze=daoRazza.findAll();
			for (Razza razza : listaRazze) {
				if(razza!=null)
				{
					%>
					<option value="<%=razza.getIdRazza()%>"> <%=razza.getRazza()%></option>
					<%
				}

			}
			
		} catch (DAOException e) {
			e.printStackTrace();
		}
	
	%>  
    </select>
  </div>
</div>

<!-- chip-->
<div class="form-group">
<label class="col-md-4 control-label" for="chip">Chip</label>  
<div class="col-md-4">
<input id="chip" name="chip" type="text" placeholder="" class="form-control input-md" required="">
    
</div>
</div>
<div class="form-group">
<label class="col-md-4 control-label" for="gender">Sesso</label>  
<div class="col-md-4">
<label>
<input type="radio" name="gender"   value ="maschio">Maschio</label><br>
<label>
<input type="radio" name="gender"   value="femmina">Femmina</label> <br>
<label>
<input type="radio" name= "gender"   value="altro" checked="checked">Altro</label> <br>
</div>
</div>

<!-- Pelo-->
<div class="form-group">
  <label class="col-md-4 control-label" for="pelo">Pelo</label>  
  <div class="col-md-4">
  <input id="pelo" name="pelo" type="text" placeholder="corto,lungo" class="form-control input-md" required="">
    
  </div>
</div>

<!--dataNascita-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nascita">Data di nascita</label>  
  <div class="col-md-4">
  <input id="nascita" name="nascita" type="text" placeholder="gg/mm/aaaa" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="pedegree">Pedegree</label>
  <div class="col-md-4">
    <select id="pedegree" name="pedegree" class="form-control">
    <option value="0">Si</option>
<option value="1">No</option>
 </div>
</div>
<br>
<br>


<!-- Button -->
<br>
<br>

<div class="col-md-4 control-label">

<input type="submit" name="registrati" id="registrati" class="btn btn-add" value="Registra"> 

</div>



 

</form>
          
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


  <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>

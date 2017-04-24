<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");
%>
<%
    response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
    if(session.getAttribute("username1") !=null)
    {
        %> 

<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>NationalBank Admin </title>

  <!-- Bootstrap core CSS -->

  <link href="css/bootstrap.min.css" rel="stylesheet">

  <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="css/custom.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/maps/jquery-jvectormap-2.0.3.css" />
  <link href="css/icheck/flat/green.css" rel="stylesheet" />
  <link href="css/floatexamples.css" rel="stylesheet" type="text/css" />

  <script src="js/jquery.min.js"></script>
  <script src="js/nprogress.js"></script>

  <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>


<body class="nav-md">

  <div class="container body">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title"><span>National Bank</span></a>
          </div>
          <div class="clearfix"></div>

          <!-- menu prile quick info -->
          <div class="profile">
            <div class="profile_pic">
                <img src="images/user.png" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Welcome,</span>
                 <%
            String username=(String)session.getAttribute("username1");
            
            %>
             <%=username%>
              <br>
              <br>
            </div>
          </div>
          <!-- /menu prile quick info -->

          <br />

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

            <div class="menu_section">
              <ul class="nav side-menu">
                  <li><a href="ad_manage.jsp"><i class="fa fa-home"></i> Home </a></li>
                  <li><a href="ad_managerequest.jsp"><i class="fa fa-inbox"></i>Manage Request</a>
                </li>
                 <li><a><i class="fa fa-user"></i> User <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                      <li><a href="ad_showuser.jsp">Show</a>
                    </li>
                    <li><a href="ad_edituser.jsp">Edit</a>
                    </li>
                    <li><a href="ad_deleteuser.jsp">Delete</a>
                    </li>
                  

                  </ul>
                </li>

                                 <li><a><i class="fa fa-list-alt"></i> Transaction <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                      <li><a href="ad_addtransaction.jsp">Add</a>
                    </li>
                      <li><a href="ad_showtransaction.jsp">Show</a>
                    </li>
                    <li><a href="ad_managetransaction.jsp">Manage</a>
                    </li>
                  </ul>
           
              <li><a><i class="fa fa-list-alt"></i> History <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                      <li><a href="ad_addhistory.jsp">Add</a>
                    </li>
                      <li><a href="ad_showhistory.jsp">Show</a>
                    </li>
                    <li><a href="ad_managehistory.jsp">Manage</a>
                    </li>
                  </ul>
                              <li><a><i class="fa fa-amazon"></i> Offers <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                      <li><a href="ad_addoffers.jsp">Add</a>
                    </li>
                      <li><a href="ad_showoffers.jsp">Show</a>
                    </li>
                    <li><a href="ad_manageoffers.jsp">Manage</a>
                    </li>
                  </ul>
                <li><a><i class="fa fa-amazon"></i> Problems <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                      <li><a href="ad_showproblems.jsp">Show</a>
                    </li>
                    <li><a href="ad_manageproblems.jsp">Manage</a>
                    </li>
                  </ul>

                <li><a href="admin_logout.jsp"><i class="fa fa-lock"></i>Logout</a>
                </li>
              </ul>
            </div>
   
            </div>

          </div>
         
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">

        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/user.png" alt="">Admin
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                    <li><a href="admin_logout.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </li>
                </ul>
              </li>

              
        </div>

      </div>
      <!-- /top navigation -->


      <!-- page content -->
<div class="right_col" role="main">
        <div class="">

          <div class="page-title">
            <div class="title_left">
              <h3>Delete Offers</h3>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">

                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <br />
                     <% Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/creditcard","root","12345");
            PreparedStatement pst=conn.prepareStatement("SELECT * FROM Offers where username='"+request.getParameter("id")+"'");
          ResultSet resultset=pst.executeQuery(); 
        %>
	   
 <%
                       if(resultset.next()) {
        %>
        <h4>
               <form class="form-horizontal" action="Delete_offers" method="post">
                   <h4 style="color:blue">Offers: <%=resultset.getString(3)%></h1>
                   <input type="hidden" name="username" value="<%=resultset.getString(3)%>"/> 
                   <button type="submit" class="btn btn-success">Delete</button>
              
               </form>
        </h4>
                   <%
                       }
                       %>
                </div>
        </div>



  <script src="js/bootstrap.min.js"></script>

  <!-- gauge js -->
  <script type="text/javascript" src="js/gauge/gauge.min.js"></script>
  <script type="text/javascript" src="js/gauge/gauge_demo.js"></script>
  <!-- bootstrap progress js -->
  <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
  <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
  <!-- icheck -->
  <script src="js/icheck/icheck.min.js"></script>
  <!-- daterangepicker -->
  <script type="text/javascript" src="js/moment/moment.min.js"></script>
  <script type="text/javascript" src="js/datepicker/daterangepicker.js"></script>
  <!-- chart js -->
  <script src="js/chartjs/chart.min.js"></script>

  <script src="js/custom.js"></script>

  <!-- flot js -->
  <!--[if lte IE 8]><script type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->
  <script type="text/javascript" src="js/flot/jquery.flot.js"></script>
  <script type="text/javascript" src="js/flot/jquery.flot.pie.js"></script>
  <script type="text/javascript" src="js/flot/jquery.flot.orderBars.js"></script>
  <script type="text/javascript" src="js/flot/jquery.flot.time.min.js"></script>
  <script type="text/javascript" src="js/flot/date.js"></script>
  <script type="text/javascript" src="js/flot/jquery.flot.spline.js"></script>
  <script type="text/javascript" src="js/flot/jquery.flot.stack.js"></script>
  <script type="text/javascript" src="js/flot/curvedLines.js"></script>
  <script type="text/javascript" src="js/flot/jquery.flot.resize.js"></script>
  <script>

  <!-- worldmap -->
  <script type="text/javascript" src="js/maps/jquery-jvectormap-2.0.3.min.js"></script>
  <script type="text/javascript" src="js/maps/gdp-data.js"></script>
  <script type="text/javascript" src="js/maps/jquery-jvectormap-world-mill-en.js"></script>
  <script type="text/javascript" src="js/maps/jquery-jvectormap-us-aea-en.js"></script>
  <!-- pace -->

  <!-- /footer content -->
</body>

</html>
<%  }
    else
    {
          response.sendRedirect("admin.jsp");
    }
%>
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
              <h3>Edit Customer</h3>
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
                   <form class="form-horizontal form-label-left" method="post" action="Update">

                    <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">Id</label>
                      <div class="col-md-4 col-sm-4 col-xs-4">
                        <input type="number" class="form-control" name="id" placeholder="Id">
                      </div>
                    </div>
                           <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">First Name</label>
                      <div class="col-md-4 col-sm-4 col-xs-4">
                        <input type="text" class="form-control" name="firstname" placeholder="First name">
                      </div>
                    </div>
                           <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">Last Name</label>
                      <div class="col-md-4 col-sm-4 col-xs-4">
                        <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                      </div>
                    </div>
                         <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">Dob</label>
                      <div class="col-md-4 col-sm-4 col-xs-4">
                        <input type="date" class="form-control" name="dob">
                      </div>
                    </div>
                       <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">Address<span class="required">*</span>
                      </label>
                      <div class="col-md-4 col-sm-4 col-xs-4">
                        <textarea class="form-control" rows="3" placeholder="address" name="address"></textarea>
                      </div>
                    </div>
                            <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">City</label>
                        <div class="col-md-4 col-sm-4 col-xs-4">
                        <select class="form-control" name="city">
                        <option value="Select a Car">Select a City</option>
                       <option value="mumbai">Mumbai</option>
                       <option value="Delhi">Delhi</option>
                       <option value="Kolkata">Kolkata</option>
                       <option value="Chennai">Chennai</option> 
                   
                        </select>
                      </div>
                            </div>

                    <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">Occupation</label>
                      <div class="col-md-4 col-sm-4 col-xs-4">
                        <select name="occupation" class="form-control">
             <option value="Select a Occupation">Select a Occupation</option>
           <option value="homemaker">Homemaker</option>
            <option value="retired">Retired/Pension</option>
            <option value="salaried">Salaried</option>
            <option value="selfemployement">Self Employed</option>
               <option value="selfemployement">Student</option>
        </select><br>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">Qualification</label>
                      <div class="col-md-4 col-sm-4 col-xs-4">
                         <select name="qualification" class="form-control">
            <option value="Select a Qualification">Select a Qualification</option>
            <option value="graduate">Graduate</option>
            <option value="higher secondary">Higher secondary</option>
            <option value="metric below">Metric below</option>
            <option value="Post Graduate and Above">Post Graduate and Above</option>
        </select><br>
                      </div>
                    </div>
                         <div class="form-group">
                      <label class="control-label col-md-4 col-sm-4 col-xs-12">Annual Income</label>
                      <div class="col-md-4 col-sm-4 col-xs-4">
                         <select name="annualincome" class="form-control">
                    <option value="Select a Income">Select Annual Income</option>
            <option value="upto 2 lakhs">upto 2 lakhs</option>
            <option value="2 to 3 Lacs">2 to 3 Lacs</option>
            <option value="3 to 4 Lacs">3 to 4 Lacs</option>
            <option value="5 to 6 Lacs">5 to 6 Lacs</option> 
            <option value="7 to 8 Lacs">7 to 8 Lacs</option> 
              <option value="8 Lacs Above">8 Lacs Above</option>
        </select><br>
                      </div>
                    </div>
                         <div class="form-group">
    <label for="creditcard" class="control-label col-md-4 col-sm-4 col-xs-12">Credit Card <span class="red">*</span></label>
    <div class="col-md-4 col-sm-4 col-xs-4">
      <select name="creditcard" class="form-control" >
             <option value="Select a Card">Select a Card</option>
            <option value="visaclassic">Visa Classic</option>
            <option value="visagold">Visa Gold</option>
            <option value="visaplatinium">Visa Platinium</option>
            <option value="visainfinite">Visa Infinite</option> 
            <option value="visasignature">Visa Signature</option> 
        </select><br>
    </div>
  </div>
                         <div class="form-group">
    <label for="emailid" class="control-label col-md-4 col-sm-4 col-xs-12">Email ID</label>
    <div class="col-md-4 col-sm-4 col-xs-4">
      <input type="email" class="form-control" name="emailid" required placeholder="Email ID">
    </div>
  </div>
       <div class="form-group">
    <label for="mobile"  class="control-label col-md-4 col-sm-4 col-xs-12">Mobile</label>
    <div class="col-md-4 col-sm-4 col-xs-4 input-group">
                <span class="input-group-addon">+91</span>
        <input type="number" class="form-control" name="mobile" required placeholder="Mobile Number">

    </div>
  </div>
    <div class="form-group">
    <label for="username" class="control-label col-md-4 col-sm-4 col-xs-12">Username</label>
    <div class="col-md-4 col-sm-4 col-xs-4">
      <input type="text" class="form-control" name="username" required placeholder="username">
    </div>
  </div> <div class="form-group">
    <label for="password" class="control-label col-md-4 col-sm-4 col-xs-12">Password</label>
    <div class="col-md-4 col-sm-4 col-xs-4">
      <input type="password" class="form-control" name="password" required placeholder="password">
    </div>
  </div>
                       
                   
                   
      
                    <div class="ln_solid"></div>
                    <div class="form-group">
                      <div class="col-md-7 col-sm-7 col-xs-12 col-md-offset-5">
                       
                  
                        <button type="submit" class="btn btn-success">Submit</button>
                      </div>
                    </div>

                  </form>
                </div>
              </div>
            </div>
          </div>
        <!-- /top tiles -->

   
        </div>
        <br />

        <div class="row">


          <div class="col-md-4 col-sm-4 col-xs-12">
          
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
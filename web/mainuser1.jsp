<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
    #head
    {
        font-size:60px;
        color:whitesmoke;
        padding-left:20px;
        float:left;
    } 
    #head2
    {
       font-size:20px;
        color:whitesmoke;
        padding-top:70px;
        padding-left:850px;
    }
    .page-header
    {
        background-color:#000080;
        height:100px;

    }
    .foot
    {
        background-color:#000080;
        height:50px;
       margin-top:650px;
    }
    .well
    {
        text-align:center;
        font-size:30px;
    }

  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  #normal
  {
      float:left;
  }
  #normal1
  {
      float:right;
  }
.main-panel
{
    margin-top:40px;
    padding-left:20px;
}
</style>
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css/"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>



</head>
<body  class="nav-md">
  <div class="container">
     <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
           <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>  
      </button>
      <a class="navbar-brand" href="#myPage">Royal Bank</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
    
     
        <li><a href="loginboot.jsp">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>

        <div class="wrapper">
    <div class="sidebar" data-color="blue" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Creative Tim
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="mainuser.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Home</p>
                    </a>
                </li>
                  <li>
                    <a href="user.html">
                        <i class="pe-7s-user"></i>
                        <p>Profile</p>
                    </a>
                </li>
                <li>
                    <a href="transaction">
                        <i class="pe-7s-settings"></i>
                        <p>Transaction</p>
                    </a>
                </li>
                <li>
                    <a href="table.html">
                        <i class="pe-7s-note2"></i>
                        <p>History</p>
                    </a>
                </li>
                <li>
                     <a href="table.html">
                        <i class="pe-7s-note2"></i>
                        <p>Offers</p>
                    </a>
                </li>
                <li>
                       <a href="table.html">
                        <i class="pe-7s-note2"></i>
                        <p>Rewards</p>
                    </a>
                </li>
                <li>
               
                    <a href="mainboot.jsp">
                        <i class="pe-7s-lock"></i>
                        <p>Logout</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>
            <div class="main-panel">
            
           <div clas="well">
               Welcome
                </div>
            </div>

        </div>
    </body>
</html>

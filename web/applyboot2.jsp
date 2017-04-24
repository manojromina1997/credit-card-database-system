<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");
%>
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
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
   
    .foot
    {
        background-color:#000080;
        height:50px;
       margin-top:320px;
    }
     .mid
    {
        text-align:left;
        font-size:20px;
        float:left;
    }
    #space{
        margin-left:200px;
    }


</style>
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.css"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css/"/>
</head>
<body>
    <div class="container">
        <div class="container">
        <div class="page-header">
                        <h1 id="head">Royal Bank</h1>
            <h2 id="head2">Working for a better tomorrow</h2>
        </div>
     <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Royal Bank</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
          <li><a href="mainboot.jsp">HOME</a></li>
      <li><a href="applyboot.jsp">APPLY FOR CREDITCARD</a></li>
        <li><a href="helpboot.jsp">HELP</a></li> 
        <li><a href="contactusboot.jsp">CONTACT US</a></li> 
        <li><a href="loginboot.jsp">LOGIN</a></li>
      </ul>
    </div>
  </div>
</nav>
            </div>

       <div class="alert alert-danger" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  
</div>
      <% Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/creditcard","root","1234");
            PreparedStatement pst=conn.prepareStatement("SELECT * FROM customer where firstname='"+request.getParameter("id")+"'");
          ResultSet resultset=pst.executeQuery(); 
        %>
        <div id="main-body" class="container">
		<div class="jumbotron">
	   
 <%
                       if(resultset.next()) {
        %>
        <h4>

                  First Name: <%=resultset.getString(7)%><br>
                   <input type="hidden" name="firstname" value="<%=resultset.getString(7)%>"/> 
                  Last Name: <%=resultset.getString(8)%><br>
                   <input type="hidden" name="lastname" value="<%=resultset.getString(8)%>"/>  
                   Dob: <%=resultset.getString(5)%><br>
                   <input type="hidden" name="dob" value="<%=resultset.getString(5)%>"/>
                    City: <%=resultset.getString(4)%><br>
                   <input type="hidden" name="city" value="<%=resultset.getString(4)%>"/> 
                  Address: <%=resultset.getString(2)%><br>
                   <input type="hidden" name="address" value="<%=resultset.getString(2)%>"/>
                    Occupation: <%=resultset.getString(10)%><br>
                   <input type="hidden" name="occupation" value="<%=resultset.getString(10)%>"/> 
                  Qualification: <%=resultset.getString(11)%><br>
                   <input type="hidden" name="qualification" value="<%=resultset.getString(11)%>"/>  
                  Annual Income: <%=resultset.getString(3)%><br>
                   <input type="hidden" name="annualincome" value="<%=resultset.getString(3)%>"/>
                    Email: <%=resultset.getString(6)%><br>
                   <input type="hidden" name="emailid" value="<%=resultset.getString(6)%>"/> 
                  Mobile: <%=resultset.getString(9)%><br>
                   <input type="hidden" name="mobile" value="<%=resultset.getString(9)%>"/>  
                    Username: <%=resultset.getString(6)%><br>
                   <input type="hidden" name="username" value="<%=resultset.getString(6)%>"/>  
                    Password
                    <input type="password" name="password" placeholder="password""/> <br> 
               <input type="submit" value="accept"/>

        </h4>
                   <%
                       }
                       %>
                </div>
        </div>
      <div class="foot">
          </div>
        </div>
        

</body>
</html>

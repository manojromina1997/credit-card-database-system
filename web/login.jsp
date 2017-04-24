<%-- 
    Document   : login
    Created on : Mar 2, 2016, 10:44:49 AM
    Author     : manoj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<style>
#header
{
width:1350px;
height:100px;
background-color:#000080;



}
#inheader
{
    width:700px;
    height:50px;
    background-color:whitesmoke;
    margin-left:300px;
    margin-bottom:10px;

}
   #wrapper{
       
                text-align:left;
                width:1000px;
                position:relative;
            }
#header1
{
    padding-top:0.3px;
    margin-left:0.3px;
    float:left;
}


#footer{
 width:1350px;
height:50px;
background-color:#000080;
margin-bottom:100px;

}
#choose
{
    margin-top:-10px;
    width:1350px;
    height:50px;
    background-color:#5fee05;
    text-align:center;
    padding-top:15px;
    color:whitesmoke;
    font-syle: arial;
}
#content{
    margin-bottom:20px;
    width:1350px;
    height:950px;
    background-color:lightpink;
    margin-top:10px;
}
#actualcontent{
    margin-left:400px;
    width:600px;
    height:400px;
    border-style: solid;
    border-radius:20px;
    border-color:lightseagreen;
    background-color:white; 
    margin-top:80px;
    
}
#form
{
     background-color:lightskyblue;
                width:100%;
                height:210px;
                text-align:center;
                padding-top:100px;
                font-size:35px;
                margin-top:50px
                    
}

      #nav a:hover {
	text-decoration: underline;
}
#nav, #nav a {
    padding-left:20px;
    padding-top:10px;
	color: black;
	text-decoration: none;
            font-size:30px;
}


</style>
</head>
<body>
    <div id="wrapper">
<div id="header">
    <div id="header1">

<img src="pictures/icon_mr_180_black (1).png" height="100" width="270"/>
      <div id="inheader">
         <div id="nav">
             <a href="main.jsp">Home</a> | <a href="apply.jsp">Apply</a> | <a href="help.jsp">Help</a> | <a href="contactus.jsp">Contact us</a> |
                <a href="login.jsp">Login</a>
          </div> 
              </div>
    </div>
</div>
        <br>
        <br>
        <br>
    <div id="content">
     <img src="pictures/d-slide-4.jpg" width="1350"/>
        <h1 id="choose">Login</h1>
        <div id="actualcontent">
            <div id="form">
            <form action="admin_login" method="post">
                Username <input type="text" required placeholder="username" name="username"><br>
                
                Password <input type="password" required placeholder="password" name="password"><br>
                <input type="submit" value="Login">
            </form>
            </div>
          </div>
    </div>
      <div id="footer"> 
    </div>
    </div>
  
 
</body>
</html>

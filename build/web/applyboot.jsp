
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>National Bank</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="lib/css/bootstrap.min.css" rel="stylesheet" />
<link href="lib/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="lib/css/jcarousel.css" rel="stylesheet" />
<link href="lib/css/flexslider.css" rel="stylesheet" />
<link href="lib/css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="lib/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<style>

</style>
</head>
<body>
<div id="wrapper">
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="aboutus.jsp"><span>National</span> Bank</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li ><a href="mainboot.jsp">Home</a></li>
                        <li><a href="applyboot.jsp">APPLY FOR CREDITCARD</a></li>
                        <li><a href="helpboot.jsp">HELP</a></li> 
                        <li><a href="contactusboot.jsp">CONTACT US</a></li> 
                        <li><a href="loginboot.jsp">LOGIN</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<!-- end header -->
	<section id="featured">
	<!-- start slider -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
	<!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides">
              <li>
                  <img src="pictures/2.jpg" alt="" />
           
              </li>
    
        </div>
	<!-- end slider -->
			</div>
		</div>
	</div>	
	
	

	</section>
	<section class="callaction">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="big-cta">
					<div class="cta-text">
						<h2>Apply For Credit Card</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
 <form class="form-horizontal" method="post" action="Register" >
  <div class="form-group">
    <label for="firstname" class="col-md-5 control-label">First Name <span class="red">*</span></label>
    <div class="col-md-3">
      <input type="text" class="form-control" name="firstname" required placeholder="First Name">
      
    </div>
  </div>
      <div class="form-group">
    <label for="lastname" class="col-md-5 control-label">Last Name <span class="red">*</span></label>
    <div class="col-md-3">
      <input type="text" class="form-control" name="lastname" required placeholder="Last Name">
    </div>
  </div>
          <div class="form-group">
    <label for="dob" class="col-md-5 control-label">Date of Birth <span class="red">*</span></label>
    <div class="col-md-3">
        <input type="date" class="form-control" name="dob" required min="1996" max="1900">
    </div>
  </div>
           <div class="form-group">
    <label for="address" class="col-md-5 control-label">Address <span class="red">*</span></label>
    <div class="col-md-5">
        <textarea class="form-control" rows="3"   name="address" required min="5" max="10" placeholder="Address"></textarea>
    </div>
  </div>
          <div class="form-group">
    <label for="city" class="col-md-5 control-label">City <span class="red">*</span></label>
    <div class="col-md-3">
      <select name="city" class="form-control" >
             <option value="Select a Car">Select a City</option>
            <option value="mumbai">Mumbai</option>
            <option value="Delhi">Delhi</option>
            <option value="Kolkata">Kolkata</option>
            <option value="Chennai">Chennai</option> 
        </select><br>
    </div>
  </div>
      <div class="form-group">
    <label for="occpuation" class="col-md-5 control-label">Occupation <span class="red">*</span></label>
    <div class="col-md-3">
      <select name="occupation" class="form-control" >
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
    <label for="qualification" class="col-md-5 control-label">Qualification <span class="red">*</span></label>
    <div class="col-md-3">
      <select name="qualification" class="form-control" >
            <option value="Select a Qualification">Select a Qualification</option>
            <option value="graduate">Graduate</option>
            <option value="higher secondary">Higher secondary</option>
            <option value="metric below">Metric below</option>
            <option value="Post Graduate and Above">Post Graduate and Above</option>
        </select><br>
    </div>
  </div>
      <div class="form-group">
    <label for="annualincome" class="col-md-5 control-label">Annual Income <span class="red">*</span></label>
    <div class="col-md-3">
      <select name="annualincome" class="form-control" >
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
    <label for="creditcard" class="col-md-5 control-label">Credit Card <span class="red">*</span></label>
    <div class="col-md-3">
      <select name="creditcard" class="form-control">
             <option value="Select a Card">Select a Card</option>
            <option value="visaclassic">Visa Classic</option>
            <option value="visagold">Visa Gold</option>
            <option value="visaplatinium">Visa Platinium</option>
            <option value="visainfinite">Visa Infinite</option>  
        </select><br>
    </div>
  </div>
  <div class="form-group">
    <label for="emailid" class="col-lg-5 control-label">Email ID <span class="red">*</span></label>
    <div class="col-lg-3">
      <input type="email" class="form-control" name="emailid" required placeholder="Email ID">
    </div>
  </div>
       <div class="form-group">
    <label for="mobile" class="col-lg-5 control-label">Mobile <span class="red">*</span></label>
    <div class="col-lg-3 input-group">
                <span class="input-group-addon">+91</span>
        <input type="number" class="form-control" name="mobile" required min="10" placeholder="Mobile Number">

    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-5 col-lg-10">
    </div>
  </div>
         <div class="form-group">
    <div class="col-sm-offset-5 col-lg-10">
        <a href="mainboot.jsp" class="btn btn-success" role="button">Back</a>
       <button type="submit" class="btn btn-success">Apply</button>
    </div>
  </div>

</form>
      
			</div>
		</div>
        </section>
		<!-- divider -->

		<!-- end divider -->
		<!-- Portfolio Projects -->


	</div>
	</section>
	<footer>


		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
                                                <h4><span>&copy;  National Bank 2016 All right reserved. </span> </h4>
						</p>
                        <!-- 
                            All links in the footer should remain intact. 
                            Licenseing information is available at: http://bootstraptaste.com/license/
                            You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Moderna
                        -->
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="lib/js/jquery.js"></script>
<script src="lib/js/jquery.easing.1.3.js"></script>
<script src="lib/js/bootstrap.min.js"></script>
<script src="lib/js/jquery.fancybox.pack.js"></script>
<script src="lib/js/jquery.fancybox-media.js"></script>
<script src="lib/js/google-code-prettify/prettify.js"></script>
<script src="lib/js/portfolio/jquery.quicksand.js"></script>
<script src="lib/js/portfolio/setting.js"></script>
<script src="lib/js/jquery.flexslider.js"></script>
<script src="lib/js/animate.js"></script>
<script src="lib/js/custom.js"></script>
</body>
</html>
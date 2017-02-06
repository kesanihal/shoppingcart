<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name = "viewport" content = "width = device-width, initial-scale = 1">
<title>Home Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/Login.css"/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="<c:url value="/resources/js/Login.js" />"></script>

</head>

<body>
     <!--    <p class="text-center"><a href="#" class="btn btn-primary btn-lg" role="button" data-toggle="modal" data-target="#login-modal">Login</a></p> -->

<!-- BEGIN # MODAL LOGIN -->
<!-- <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" > -->
    	<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" align="center">
					<img class="img-circle" id="img_logo" src="http://bootsnipp.com/img/logo.jpg">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
				</div>
                
                <!-- Begin # DIV Form -->
                <div id="div-forms">
                
                    <!-- Begin # Login Form -->
                    <form  action="perform_login" method="post" id="login-form">
		                <div class="modal-body">
				    		<div id="div-login-msg">
                                <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-login-msg">Type your username and password.</span>
                            </div>
				    		<input id="login_username" class="form-control" type="text" name="username" placeholder="Username (type ERROR for error effect)" required>
				    		<input id="login_password" class="form-control" type="password"name="password" placeholder="Password" required>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>
        		    	</div>
				        <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
                            </div>
				    	    <div>
                                <button id="login_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                                <button id="login_register_btn" type="button" class="btn btn-link">Register</button>
                            </div>
				        </div>
                    </form>
                    <!-- End # Login Form -->
                    
                    <!-- Begin | Lost Password Form -->
                    <form id="lost-form" style="display:none;">
    	    		    <div class="modal-body">
		    				<div id="div-lost-msg">
                                <div id="icon-lost-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-lost-msg">Type your e-mail.</span>
                            </div>
		    				<input id="lost_email" class="form-control" type="text" placeholder="E-Mail (type ERROR for error effect)" required>
            			</div>
		    		    <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
                            </div>
                            <div>
                                <button id="lost_login_btn" type="button" class="btn btn-link">Log In</button>
                                <button id="lost_register_btn" type="button" class="btn btn-link">Register</button>
                            </div>
		    		    </div>
                    </form>
                    <!-- End | Lost Password Form -->
                    
                    <!-- Begin | Register Form -->
                    <form id="register-form" style="display:none;">
            		    <div class="modal-body">
		    				<div id="div-register-msg">
                                <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-register-msg">Register an account.</span>
                            </div>
		    				<input id="register_username" class="form-control" type="text" placeholder="Username (type ERROR for error effect)" required>
                            <input id="register_email" class="form-control" type="text" placeholder="E-Mail" required>
                            <input id="register_password" class="form-control" type="password" placeholder="Password" required>
            			</div>
		    		    <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
                            </div>
                            <div>
                                <button id="register_login_btn" type="button" class="btn btn-link">Log In</button>
                                <button id="register_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                            </div>
		    		    </div>
                    </form>
                    <!-- End | Register Form -->
                    
                </div>
                <!-- End # DIV Form -->
                
			</div>
		</div>
<!-- 	</div> -->
    <!-- END # MODAL LOGIN -->


</body>
</html> 



<!-- <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>::. Login Page .::</title>
<link href="Stylesheets/login-style.css" rel="stylesheet" type="text/css" />
<link href="Stylesheets/layout.css" rel="stylesheet" type="text/css" />
<link href="Stylesheets/form.css" rel="stylesheet" type="text/css" />



<script type="text/javascript">
$.noConflict();
jQuery(window).ready(function($) {
// Code that uses jQuery's $ can follow here.
});
// Code that uses other library's $ can follow here.
</script>

<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('#button a').on('click', function(){
			$(this).toggleClass('on');
		});
	});
</script>
<style type="text/css">
	#button input{ visibility:hidden;}
</style>
	
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>


<script type="text/javascript" src="jquery/login.js"></script>
<script type="text/javascript" src="jquery/functions.js"></script>
<script type="text/javascript" src="jquery/jquery.sourcerer.js"></script>
</head>
<body>
<div id="header">
	<div id="shade">
  <div id="mainLOGO"> <img src="images/unknown-user.png" alt="" title="" /> </div>
  </div>
</div>

		<div id="mainLOGINBOX">
        	<div class="loginWrapper">
			
		  New user form
          <form action="index.html" id="login">
            <div class="loginPic">
				<div><img src="images/unknown-user.png" alt="" /></div>
			<span>Welcome User Name</span>
              <div class="loginActions">
                <div><a href="#" title="Forgot password?" class="logback flip"></a></div>
                <div><a href="#" title="" class="logright">
					<input type="reset" name="" value="" class="logright" style="border:1px; position:absolute; top:0px; left:0px;"/></a>
				</div>
              </div>
            </div>
            <input type="text" name="login" placeholder="Your username" class="loginUsername" />
            <input type="password" name="password" placeholder="Password" class="loginPassword" />
            <div class="logControl">
              <div id="button">
				<a onclick=""><input type="checkbox" checked="checked" /></a>
			  </div>
			  <div id="text">Remember me</div>
			  <div style="float:right; overflow:hidden;">
				  <div class="blueBG">
					<input type="submit" name="submit" value="Login" class="blueRIGHTCOR" />
				  </div>
			  </div>
            </div>
          </form>
		  
			
          Current user form
          <form action="index.html" id="recover">
            <div class="loginPic"><div><img src="images/unknown-user.png" alt="" /></div>
				
              <div class="loginActions">
                <div><a href="#" title="Change user" class="logleft flip"></a></div>
                <div><a href="#" title="" class="logright">
					<input type="reset" name="" value="" class="logright" style="border:1px; position:absolute; top:0px; left:0px;"/></a>
				</div>
              </div>
            </div>
            <input type="text" name="login" placeholder="Confirm your email" class="loginEmail" />
            <input type="password" name="password" placeholder="Password" class="loginPassword" />
            <div class="logControl">
            
            <div style="float:right; overflow:hidden;">
			  <div class="blueBG">
				<input type="submit" name="submit" value="Send" class="blueRIGHTCOR" />
			  </div>
		  	</div>
            <div class="clear"></div>
        </div>
          </form>
		  
		  
		  
		  
          
        </div>
      	</div>
	
</body>
</html>
 -->
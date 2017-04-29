<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="CoreUI Bootstrap 4 Admin Template">
<meta name="author" content="Lukasz Holeczek">
<meta name="keyword" content="CoreUI Bootstrap 4 Admin Template">
<!-- <link rel="shortcut icon" href="assets/ico/favicon.png"> -->

<title>Registration Page</title>

<!-- Icons -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/simple-line-icons.css" rel="stylesheet">

<!-- Main styles for this application -->
<link href="css/style.css" rel="stylesheet">

 <style>
    .err{
    	color: red;
    }
 </style>
 
     <script type="text/javascript">
    
    function goTo(){
    	document.location = "userLogin";
    }
    
    </script>

</head>

<body class="app flex-row align-items-center">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
                <div class="card-group mb-0">
                  	<div class="card p-4">
                  	
					<div class="card-block">

						<form name="MyForm" action="" method="POST">
							<h1>Register</h1>
							<p class="text-muted">Create your account</p>
							
							<div class="input-group mb-3">
								<span class="input-group-addon"><i class="icon-user"></i>
								</span> 
								<input type="text" class="form-control" placeholder="Full Name" name="txt_name" id="txt-name"  
								value="${requestScope.txt_name}">
							</div>
							<div class="mb-4">
							<!--<p class="err" id="err-name"></p> -->
                                	<p class="err" id="err-name"><c:out value="${requestScope.err_name}" /></p>
                            </div>
							

							<div class="input-group mb-3">
								<span class="input-group-addon">@</span> 
								<input type="text" name="txt_email" id="txt-email" 
								value="${requestScope.txt_email}"
									class="form-control" placeholder="Email"> <!-- onblur="checkByEmail()" -->
							</div>
							<div class="mb-4">
                                	<p class="err" id="err-email"><c:out value="${requestScope.err_email}" /></p>
                            </div>
                            

							<div class="input-group mb-3">
								<span class="input-group-addon"><i class="icon-lock"></i>
								</span> 
								<input type="password" class="form-control" name="txt_password" id="txt-password"
								 value="${requestScope.txt_password}"
									placeholder="Password">
							</div>
							<div class="mb-4">
                                	<!-- <p class="err" id="err-password"></p> -->
                                	<p class="err" id="err-password"><c:out value="${requestScope.err_password}" /></p>
                            </div>
                            

							<div class="input-group mb-3">
								<span class="input-group-addon"><i class="icon-lock"></i>
								</span> <input type="password" class="form-control" name="txt_cpassword" id="txt-cpassword"
								 value="${requestScope.txt_cpassword}"
									placeholder="Repeat password">
							</div>
							<div class="mb-4">
                                	<!-- <p class="err" id="err-cpassword"></p> -->
                                	<p class="err" id="err-cpassword"><c:out value="${requestScope.err_cpassword}" /></p>
                            </div>

							<button type="submit" onClick="return validateRegForm()" class="btn btn-block btn-success" >Create
								Account</button>
							
						</form>
						
						

					
						<div class="row my-2">
							<div class="col-12">
								<button class="btn btn-block btn-facebook" type="button" onClick="loginFB()">
									<span id="status">Login With Facebook</span>
								</button>
							</div>
						</div>
					</div>
					
					
                    
				</div>
				
				 <div class="card card-inverse card-primary py-5 d-md-down-none" style="width:44%">
                        <div class="card-block text-center">
                            <div>
                                <h2>Login</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <button type="button" class="btn btn-primary active mt-3" onClick = "goTo()">Already have an account!</button>
                            </div>
                        </div>
                   </div>
				</div>
				
			</div>
		</div>
	</div>

	<!-- Bootstrap and necessary plugins -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="bower_components/tether/dist/js/tether.min.js"></script>
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="AJAX/checkExistingUser.js"></script>
	<script src="LoginWithSocialMedia/facebookapi.js"></script>
	<script src="js/validation/userValidation.js"></script>


</body>

</html>
<!--
 * CoreUI - Open Source Bootstrap Admin Template
 * @version v1.0.0-alpha.4
 * @link http://coreui.io
 * Copyright (c) 2017 creativeLabs Łukasz Holeczek
 * @license MIT
 -->
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="CoreUI Bootstrap 4 Admin Template">
    <meta name="author" content="Lukasz Holeczek">
    <meta name="keyword" content="CoreUI Bootstrap 4 Admin Template">
    <!-- <link rel="shortcut icon" href="assets/ico/favicon.png"> -->

    <title>Admin Login</title>

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
    	document.location = "userRegistration";
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


                            <form  name="MyForm" action="adminLogin" method="POST">
                                <h1>Login</h1>
                                <p class="text-muted">Sign In to your account</p>
                                <div class="input-group mb-3">
                                    <span class="input-group-addon"><i class="icon-user"></i>
                                    </span>
                                    <input type="text" class="form-control" placeholder="Email" name='txt_email'  id='txt-email'
                                    value = "${requestScope.txt_email}">
                                </div>
                                <div class="mb-4">
                                	<p class="err" id="err-email">${requestScope.err_email}</p>
                                </div>
                                <div class="input-group mb-4">
                                    <span class="input-group-addon"><i class="icon-lock"></i>
                                    </span>
                                    <input type="password" class="form-control" placeholder="Password" name = 'txt_password' id='txt-password'
                                    value = "${requestScope.txt_password}">
                                </div>
                                <div class="mb-4">
                                	<p class="err" id="err_password">${requestScope.err_password}</p>
                                	
                                	 
                                </div>
                                <div class="checkbox mb-4">
                                	<label><input type="checkbox" name="rememberMe" ${requestScope.rememberMe}> Remember Me</label>
                                </div>
                                                            
                                <div class="row">
                                    <div class="col-6">
                                        <button type="submit" onClick="return validateLoginForm()" name="btn-submit-login" id="btn-submit-login" class="btn btn-primary px-4">Login</button>
                                    </div>
                                    <div class="col-6 text-right">
                                        <button type="button" class="btn btn-link px-0">Forgot password?</button>
                                    </div>
                                </div>
                            </form>
                            
                     

                        </div>
                    </div>
                    <div class="card card-inverse card-primary py-5 d-md-down-none" style="width:44%">
                        <div class="card-block text-center">
                            <div>
                                <h2>Sign up</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <button type="button" class="btn btn-primary active mt-3" onClick = "goTo()">Register Now!</button>
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
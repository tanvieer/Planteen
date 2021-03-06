
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

</head>

<body class="app flex-row align-items-center">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card mx-4">
					<div class="card-block p-4">


						<form action="RegistrationServlet" method="POST">
							<h1>Register</h1>
							<p class="text-muted">Create your account</p>
							
							<div class="input-group mb-3">
								<span class="input-group-addon"><i class="icon-user"></i>
								</span> <input type="text" class="form-control" placeholder="Full Name" name="name" id="name">
							</div>
							
							<div class="input-group mb-3">
								<span class="input-group-addon"><i class="icon-user"></i>
								</span> 
								<input type="text" class="form-control" placeholder="Username" name="username" id="username" onblur="checkByUsername()">
								       <span id = "existTagUsername">  </span>
							</div>

							<div class="input-group mb-3">
								<span class="input-group-addon">@</span> 
								<input type="text" name="email" id="email"  onblur="checkByEmail()"
									class="form-control" placeholder="Email">
									<span id = "existTagEmail">  </span>
							</div>

							<div class="input-group mb-3">
								<span class="input-group-addon"><i class="icon-lock"></i>
								</span> <input type="password" class="form-control" name="password"
									placeholder="Password">
							</div>

							<div class="input-group mb-4">
								<span class="input-group-addon"><i class="icon-lock"></i>
								</span> <input type="password" class="form-control" name="cpassword"
									placeholder="Repeat password">
							</div>

							<button type="submit" class="btn btn-block btn-success">Create
								Account</button>
						</form>
						
						

					</div>
					<div class="card-footer p-4">
						<div class="row">
							<div class="col-6">
								<button class="btn btn-block btn-facebook" type="button" onClick="loginFB()">
									<span id="status">facebook</span>
								</button>
							</div>
							<div class="col-6">
								<button class="btn btn-block btn-twitter" type="button" onClick ="getInfo()">
									<span>twitter</span>
								</button>
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


</body>

</html>
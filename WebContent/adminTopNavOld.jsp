<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
if(session==null || session.getAttribute("userEmail")==null){
	request.setAttribute("dropdownLoggedIn","style='display:none';");
	request.setAttribute("dropdownLoggedOut","");
}
else{
	request.setAttribute("dropdownLoggedIn","");
	request.setAttribute("dropdownLoggedOut","style='display:none';");
}
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Admin</title>

    <!-- Icons -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/simple-line-icons.css" rel="stylesheet">

    <!-- Main styles for this application -->
    <link href="css/style.css" rel="stylesheet">

</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

<header class="app-header navbar">
        <button class="navbar-toggler mobile-sidebar-toggler d-lg-none" type="button"><i class="fa fa-reorder"></i></button>
        <a class="navbar-brand" href="adminDashboard.jsp"></a>
        <ul class="nav navbar-nav d-md-down-none">
            <li class="nav-item">
                <a class="nav-link navbar-toggler sidebar-toggler" href="#"><i class="fa fa-reorder"></i></a>
            </li>

            <li class="nav-item px-3">
                <a class="nav-link" href="adminDashboard.jsp">Home</a>
            </li>
            
        </ul>
        <ul class="nav navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <img src="img/avatars/6.jpg" class="img-avatar" alt="admin@planteen.com">
                    <i class="icon-user"></i><span class="d-md-down-none"> My Account </span>
                    
                </a>
                <div class="dropdown-menu dropdown-menu-right">

                    <div class="dropdown-header text-center">
                        <strong>Account</strong>
                    </div>

                    <a class="dropdown-item" href="adminProfileSettings.jsp"><i class="fa fa-wrench"></i> My Profile</a>
                    <a class="dropdown-item" href="adminOrdersPage.jsp"><i class="fa fa-usd"></i> Orders</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-shopping-cart"></i> Cart<span class="badge badge-primary">42</span></a>
                    <div class="divider"></div>
                    <a class="dropdown-item" href="logout"><i class="fa fa-lock"></i> Logout</a>
                </div>
            </li>
            <li class="nav-item d-md-down-none">
                <a class="nav-link navbar-toggler aside-menu-toggler" href="#">Pending Orders<i class="icon-basket"></i><small><span class="badge badge-pill badge-danger">5</span></small></a>
            </li>

        </ul>
    </header>
    <div class="app-body">
    
    
    
    
    

   
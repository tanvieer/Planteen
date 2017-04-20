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
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>CoreUI - Open Source Bootstrap Admin Template</title>

    <!-- Icons -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/simple-line-icons.css" rel="stylesheet">

    <!-- Main styles for this application -->
    <link href="css/style.css" rel="stylesheet">

</head>

<!-- BODY options, add following classes to body to change options

// Header options
1. '.header-fixed'					- Fixed Header

// Sidebar options
1. '.sidebar-fixed'					- Fixed Sidebar
2. '.sidebar-hidden'				- Hidden Sidebar
3. '.sidebar-off-canvas'		- Off Canvas Sidebar
4. '.sidebar-compact'				- Compact Sidebar Navigation (Only icons)

// Aside options
1. '.aside-menu-fixed'			- Fixed Aside Menu
2. '.aside-menu-hidden'			- Hidden Aside Menu
3. '.aside-menu-off-canvas'	- Off Canvas Aside Menu

// Footer options
1. '.footer-fixed'						- Fixed footer

-->

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
    <header class="app-header navbar">
        <button class="navbar-toggler mobile-sidebar-toggler d-lg-none" type="button">☰</button>
        <a class="navbar-brand" href="#"></a>
        <ul class="nav navbar-nav d-md-down-none">
            <li class="nav-item">
                <a class="nav-link navbar-toggler sidebar-toggler" href="#">☰</a>
            </li>

            <li class="nav-item px-3">
                <a class="nav-link" href="#">Dashboard</a>
            </li>
            <li class="nav-item px-3">
                <a class="nav-link" href="#">Users</a>
            </li>
            <li class="nav-item px-3">
                <a class="nav-link" href="#">Settings</a>
            </li>
        </ul>
        <ul class="nav navbar-nav ml-auto">
            <li class="nav-item d-md-down-none">
                <a class="nav-link" href="#"><i class="icon-bell"></i><span class="badge badge-pill badge-danger">5</span></a>
            </li>
            <li class="nav-item d-md-down-none">
                <a class="nav-link" href="#"><i class="icon-list"></i></a>
            </li>
            <li class="nav-item d-md-down-none">
                <a class="nav-link" href="#"><i class="icon-location-pin"></i></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <img src="img/avatars/6.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                    <span class="d-md-down-none">admin</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">

                    <div class="dropdown-header text-center">
                        <strong>Account</strong>
                    </div>

                    <a class="dropdown-item" href="#"><i class="fa fa-bell-o"></i> Updates<span class="badge badge-info">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-envelope-o"></i> Messages<span class="badge badge-success">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-tasks"></i> Tasks<span class="badge badge-danger">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-comments"></i> Comments<span class="badge badge-warning">42</span></a>

                    <div class="dropdown-header text-center">
                        <strong>Settings</strong>
                    </div>

                    <a class="dropdown-item" href="#"><i class="fa fa-user"></i> Profile</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-wrench"></i> Settings</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-usd"></i> Payments<span class="badge badge-default">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-file"></i> Projects<span class="badge badge-primary">42</span></a>
                    <div class="divider"></div>
                    <a class="dropdown-item" href="#"><i class="fa fa-shield"></i> Lock Account</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-lock"></i> Logout</a>
                </div>
            </li>
            <li class="nav-item d-md-down-none">
                <a class="nav-link navbar-toggler aside-menu-toggler" href="#">☰</a>
            </li>

        </ul>
    </header>

    <div class="app-body">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp"><i class="icon-speedometer"></i> Dashboard <span class="badge badge-info">NEW</span></a>
                    </li>

                    <li class="nav-title">
                        UI Elements
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle"></i> Components</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="components-buttons.jsp"><i class="icon-puzzle"></i> Buttons</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="components-social-buttons.jsp"><i class="icon-puzzle"></i> Social Buttons</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="components-cards.jsp"><i class="icon-puzzle"></i> Cards</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="components-forms.jsp"><i class="icon-puzzle"></i> Forms</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="components-modals.jsp"><i class="icon-puzzle"></i> Modals</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="components-switches.jsp"><i class="icon-puzzle"></i> Switches</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="components-tables.jsp"><i class="icon-puzzle"></i> Tables</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="components-tabs.jsp"><i class="icon-puzzle"></i> Tabs</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-star"></i> Icons</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="icons-font-awesome.jsp"><i class="icon-star"></i> Font Awesome</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="icons-simple-line-icons.jsp"><i class="icon-star"></i> Simple Line Icons</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="widgets.jsp"><i class="icon-calculator"></i> Widgets <span class="badge badge-info">NEW</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="charts.jsp"><i class="icon-pie-chart"></i> Charts</a>
                    </li>
                    <li class="divider"></li>
                    <li class="nav-title">
                        Extras
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-star"></i> Pages</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="pages-login.jsp" target="_top"><i class="icon-star"></i> Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages-register.jsp" target="_top"><i class="icon-star"></i> Register</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages-404.jsp" target="_top"><i class="icon-star"></i> Error 404</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages-500.jsp" target="_top"><i class="icon-star"></i> Error 500</a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </nav>
        </div>

        <!-- Main content -->
        <main class="main">

            <!-- Breadcrumb -->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Home</li>
                <li class="breadcrumb-item"><a href="#">Admin</a>
                </li>
                <li class="breadcrumb-item active">Dashboard</li>

                <!-- Breadcrumb Menu-->
                <li class="breadcrumb-menu d-md-down-none">
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <a class="btn btn-secondary" href="#"><i class="icon-speech"></i></a>
                        <a class="btn btn-secondary" href="./"><i class="icon-graph"></i> &nbsp;Dashboard</a>
                        <a class="btn btn-secondary" href="#"><i class="icon-settings"></i> &nbsp;Settings</a>
                    </div>
                </li>
            </ol>


            <div class="container-fluid">
                <div class="animated fadeIn">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Social Media Button</strong>
                                    <small>Usage ex.</small>
                                    <code style="text-transform:lowercase">&lt;button class="btn btn-facebook"&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/button&gt;</code>
                                    <div class="card-actions">
                                        <a href="#" class="btn-setting"><i class="icon-settings"></i></a>
                                        <button class="btn-minimize" type="button" data-toggle="collapse" data-target="" aria-expanded="false" aria-controls="collapseExample">
                                            <i class="icon-arrow-up"></i>
                                        </button>
                                        <a href="#" class="btn-close"><i class="icon-close"></i></a>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <h6>Size Small
                                        <small>Add this class
                                            <code>.btn-sm</code>
                                        </small>
                                    </h6>
                                    <p>
                                        <button type="button" class="btn btn-sm btn-facebook" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-twitter" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-linkedin" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-flickr" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-tumblr" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-xing" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-github" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-html5" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-openid" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-stack-overflow" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-css3" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-youtube" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-dribbble" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-google-plus" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-instagram" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-pinterest" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vk" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-yahoo" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-behance" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-dropbox" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-reddit" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-spotify" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vine" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-foursquare" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vimeo" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                    <h6>Size Normal</h6>
                                    <p>
                                        <button type="button" class="btn btn-facebook" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-twitter" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-linkedin" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-flickr" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-tumblr" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-xing" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-github" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-html5" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-openid" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-stack-overflow" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-css3" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-youtube" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-dribbble" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-google-plus" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-instagram" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-pinterest" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-vk" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-yahoo" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-behance" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-dropbox" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-reddit" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-spotify" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-vine" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-foursquare" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-vimeo" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                    <h6>Size Large
                                        <small>Add this class
                                            <code>.btn-lg</code>
                                        </small>
                                    </h6>
                                    <p>
                                        <button type="button" class="btn btn-lg btn-facebook" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-twitter" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-linkedin" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-flickr" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-tumblr" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-xing" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-github" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-html5" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-openid" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-stack-overflow" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-css3" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-youtube" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-dribbble" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-google-plus" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-instagram" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-pinterest" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vk" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-yahoo" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-behance" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-dropbox" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-reddit" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-spotify" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vine" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-foursquare" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vimeo" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--/.col-->

                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Social Media Button</strong>
                                    <small>Only icons. Usage ex.</small>
                                    <code style="text-transform:lowercase">&lt;button class="btn btn-facebook icon"&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/button&gt;</code>
                                    <div class="card-actions">
                                        <a href="#" class="btn-setting"><i class="icon-settings"></i></a>
                                        <button class="btn-minimize" type="button" data-toggle="collapse" data-target="" aria-expanded="false" aria-controls="collapseExample">
                                            <i class="icon-arrow-up"></i>
                                        </button>
                                        <a href="#" class="btn-close"><i class="icon-close"></i></a>
                                    </div>
                                </div>
                                <div class="card-block collapse in">
                                    <h6>Size Small
                                        <small>Add this class
                                            <code>.btn-sm</code>
                                        </small>
                                    </h6>
                                    <p>
                                        <button type="button" class="btn btn-sm btn-facebook icon" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-twitter icon" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-linkedin icon" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-flickr icon" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-tumblr icon" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-xing icon" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-github icon" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-html5 icon" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-openid icon" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-stack-overflow icon" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-css3 icon" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-youtube icon" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-dribbble icon" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-google-plus icon" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-instagram icon" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-pinterest icon" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vk icon" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-yahoo icon" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-behance icon" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-dropbox icon" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-reddit icon" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-spotify icon" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vine icon" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-foursquare icon" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vimeo icon" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                    <h6>Size Normal</h6>
                                    <p>
                                        <button type="button" class="btn btn-facebook icon" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-twitter icon" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-linkedin icon" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-flickr icon" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-tumblr icon" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-xing icon" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-github icon" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-html5 icon" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-openid icon" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-stack-overflow icon" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-css3 icon" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-youtube icon" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-dribbble icon" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-google-plus icon" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-instagram icon" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-pinterest icon" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-vk icon" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-yahoo icon" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-behance icon" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-dropbox icon" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-reddit icon" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-spotify icon" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-vine icon" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-foursquare icon" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-vimeo icon" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                    <h6>Size Large
                                        <small>Add this class
                                            <code>.btn-lg</code>
                                        </small>
                                    </h6>
                                    <p>
                                        <button type="button" class="btn btn-lg btn-facebook icon" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-twitter icon" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-linkedin icon" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-flickr icon" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-tumblr icon" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-xing icon" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-github icon" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-html5 icon" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-openid icon" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-stack-overflow icon" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-css3 icon" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-youtube icon" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-dribbble icon" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-google-plus icon" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-instagram icon" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-pinterest icon" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vk icon" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-yahoo icon" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-behance icon" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-dropbox icon" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-reddit icon" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-spotify icon" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vine icon" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-foursquare icon" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vimeo icon" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--/.col-->

                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Social Media Button</strong>
                                    <small>Only text. Usage ex.</small>
                                    <code style="text-transform:lowercase">&lt;button class="btn btn-facebook text"&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/button&gt;</code>
                                    <div class="card-actions">
                                        <a href="#" class="btn-setting"><i class="icon-settings"></i></a>
                                        <button class="btn-minimize" type="button" data-toggle="collapse" data-target="" aria-expanded="false" aria-controls="collapseExample">
                                            <i class="icon-arrow-up"></i>
                                        </button>
                                        <a href="#" class="btn-close"><i class="icon-close"></i></a>
                                    </div>
                                </div>
                                <div class="card-block collapse in">
                                    <h6>Size Small
                                        <small>Add this class
                                            <code>.btn-sm</code>
                                        </small>
                                    </h6>
                                    <p>
                                        <button type="button" class="btn btn-sm btn-facebook text" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-twitter text" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-linkedin text" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-flickr text" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-tumblr text" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-xing text" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-github text" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-html5 text" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-openid text" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-stack-overflow text" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-css3 text" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-youtube text" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-dribbble text" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-google-plus text" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-instagram text" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-pinterest text" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vk text" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-yahoo text" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-behance text" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-dropbox text" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-reddit text" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-spotify text" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vine text" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-foursquare text" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-vimeo text" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                    <h6>Size Normal</h6>
                                    <p>
                                        <button type="button" class="btn btn-facebook text" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-twitter text" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-linkedin text" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-flickr text" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-tumblr text" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-xing text" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-github text" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-html5 text" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-openid text" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-stack-overflow text" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-css3 text" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-youtube text" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-dribbble text" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-google-plus text" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-instagram text" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-pinterest text" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-vk text" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-yahoo text" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-behance text" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-dropbox text" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-reddit text" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-spotify text" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-vine text" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-foursquare text" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-vimeo text" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                    <h6>Size Large
                                        <small>Add this class
                                            <code>.btn-lg</code>
                                        </small>
                                    </h6>
                                    <p>
                                        <button type="button" class="btn btn-lg btn-facebook text" style="margin-bottom: 4px">
                                            <span>Facebook</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-twitter text" style="margin-bottom: 4px">
                                            <span>Twitter</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-linkedin text" style="margin-bottom: 4px">
                                            <span>LinkedIn</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-flickr text" style="margin-bottom: 4px">
                                            <span>Flickr</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-tumblr text" style="margin-bottom: 4px">
                                            <span>Tumblr</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-xing text" style="margin-bottom: 4px">
                                            <span>Xing</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-github text" style="margin-bottom: 4px">
                                            <span>Github</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-html5 text" style="margin-bottom: 4px">
                                            <span>HTML5</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-openid text" style="margin-bottom: 4px">
                                            <span>OpenID</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-stack-overflow text" style="margin-bottom: 4px">
                                            <span>StackOverflow</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-css3 text" style="margin-bottom: 4px">
                                            <span>CSS3</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-youtube text" style="margin-bottom: 4px">
                                            <span>YouTube</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-dribbble text" style="margin-bottom: 4px">
                                            <span>Dribbble</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-google-plus text" style="margin-bottom: 4px">
                                            <span>Google+</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-instagram text" style="margin-bottom: 4px">
                                            <span>Instagram</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-pinterest text" style="margin-bottom: 4px">
                                            <span>Pinterest</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vk text" style="margin-bottom: 4px">
                                            <span>VK</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-yahoo text" style="margin-bottom: 4px">
                                            <span>Yahoo</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-behance text" style="margin-bottom: 4px">
                                            <span>Behance</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-dropbox text" style="margin-bottom: 4px">
                                            <span>Dropbox</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-reddit text" style="margin-bottom: 4px">
                                            <span>Reddit</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-spotify text" style="margin-bottom: 4px">
                                            <span>Spotify</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vine text" style="margin-bottom: 4px">
                                            <span>Vine</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-foursquare text" style="margin-bottom: 4px">
                                            <span>Forsquare</span>
                                        </button>
                                        <button type="button" class="btn btn-lg btn-vimeo text" style="margin-bottom: 4px">
                                            <span>Vimeo</span>
                                        </button>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--/.col-->
                    </div>
                    <!--/.row-->
                </div>

            </div>
            <!-- /.conainer-fluid -->
        </main>

        <aside class="aside-menu">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#timeline" role="tab"><i class="icon-list"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#messages" role="tab"><i class="icon-speech"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#settings" role="tab"><i class="icon-settings"></i></a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="timeline" role="tabpanel">
                    <div class="callout m-0 py-2 text-muted text-center bg-faded text-uppercase">
                        <small><b>Today</b>
                        </small>
                    </div>
                    <hr class="transparent mx-3 my-0">
                    <div class="callout callout-warning m-0 py-3">
                        <div class="avatar float-right">
                            <img src="img/avatars/7.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                        </div>
                        <div>Meeting with
                            <strong>Lucas</strong>
                        </div>
                        <small class="text-muted mr-3"><i class="icon-calendar"></i>&nbsp; 1 - 3pm</small>
                        <small class="text-muted"><i class="icon-location-pin"></i>&nbsp; Palo Alto, CA</small>
                    </div>
                    <hr class="mx-3 my-0">
                    <div class="callout callout-info m-0 py-3">
                        <div class="avatar float-right">
                            <img src="img/avatars/4.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                        </div>
                        <div>Skype with
                            <strong>Megan</strong>
                        </div>
                        <small class="text-muted mr-3"><i class="icon-calendar"></i>&nbsp; 4 - 5pm</small>
                        <small class="text-muted"><i class="icon-social-skype"></i>&nbsp; On-line</small>
                    </div>
                    <hr class="transparent mx-3 my-0">
                    <div class="callout m-0 py-2 text-muted text-center bg-faded text-uppercase">
                        <small><b>Tomorrow</b>
                        </small>
                    </div>
                    <hr class="transparent mx-3 my-0">
                    <div class="callout callout-danger m-0 py-3">
                        <div>New UI Project -
                            <strong>deadline</strong>
                        </div>
                        <small class="text-muted mr-3"><i class="icon-calendar"></i>&nbsp; 10 - 11pm</small>
                        <small class="text-muted"><i class="icon-home"></i>&nbsp; creativeLabs HQ</small>
                        <div class="avatars-stack mt-2">
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/2.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/3.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/4.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/5.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/6.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                        </div>
                    </div>
                    <hr class="mx-3 my-0">
                    <div class="callout callout-success m-0 py-3">
                        <div>
                            <strong>#10 Startups.Garden</strong>Meetup</div>
                        <small class="text-muted mr-3"><i class="icon-calendar"></i>&nbsp; 1 - 3pm</small>
                        <small class="text-muted"><i class="icon-location-pin"></i>&nbsp; Palo Alto, CA</small>
                    </div>
                    <hr class="mx-3 my-0">
                    <div class="callout callout-primary m-0 py-3">
                        <div>
                            <strong>Team meeting</strong>
                        </div>
                        <small class="text-muted mr-3"><i class="icon-calendar"></i>&nbsp; 4 - 6pm</small>
                        <small class="text-muted"><i class="icon-home"></i>&nbsp; creativeLabs HQ</small>
                        <div class="avatars-stack mt-2">
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/2.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/3.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/4.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/5.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/6.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/7.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                            <div class="avatar avatar-xs">
                                <img src="img/avatars/8.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                            </div>
                        </div>
                    </div>
                    <hr class="mx-3 my-0">
                </div>
                <div class="tab-pane p-3" id="messages" role="tabpanel">
                    <div class="message">
                        <div class="py-3 pb-5 mr-3 float-left">
                            <div class="avatar">
                                <img src="img/avatars/7.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                                <span class="avatar-status badge-success"></span>
                            </div>
                        </div>
                        <div>
                            <small class="text-muted">Lukasz Holeczek</small>
                            <small class="text-muted float-right mt-1">1:52 PM</small>
                        </div>
                        <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
                        <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
                    </div>
                    <hr>
                    <div class="message">
                        <div class="py-3 pb-5 mr-3 float-left">
                            <div class="avatar">
                                <img src="img/avatars/7.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                                <span class="avatar-status badge-success"></span>
                            </div>
                        </div>
                        <div>
                            <small class="text-muted">Lukasz Holeczek</small>
                            <small class="text-muted float-right mt-1">1:52 PM</small>
                        </div>
                        <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
                        <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
                    </div>
                    <hr>
                    <div class="message">
                        <div class="py-3 pb-5 mr-3 float-left">
                            <div class="avatar">
                                <img src="img/avatars/7.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                                <span class="avatar-status badge-success"></span>
                            </div>
                        </div>
                        <div>
                            <small class="text-muted">Lukasz Holeczek</small>
                            <small class="text-muted float-right mt-1">1:52 PM</small>
                        </div>
                        <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
                        <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
                    </div>
                    <hr>
                    <div class="message">
                        <div class="py-3 pb-5 mr-3 float-left">
                            <div class="avatar">
                                <img src="img/avatars/7.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                                <span class="avatar-status badge-success"></span>
                            </div>
                        </div>
                        <div>
                            <small class="text-muted">Lukasz Holeczek</small>
                            <small class="text-muted float-right mt-1">1:52 PM</small>
                        </div>
                        <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
                        <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
                    </div>
                    <hr>
                    <div class="message">
                        <div class="py-3 pb-5 mr-3 float-left">
                            <div class="avatar">
                                <img src="img/avatars/7.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                                <span class="avatar-status badge-success"></span>
                            </div>
                        </div>
                        <div>
                            <small class="text-muted">Lukasz Holeczek</small>
                            <small class="text-muted float-right mt-1">1:52 PM</small>
                        </div>
                        <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
                        <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
                    </div>
                </div>
                <div class="tab-pane p-3" id="settings" role="tabpanel">
                    <h6>Settings</h6>

                    <div class="aside-options">
                        <div class="clearfix mt-4">
                            <small><b>Option 1</b>
                            </small>
                            <label class="switch switch-text switch-pill switch-success switch-sm float-right">
                                <input type="checkbox" class="switch-input" checked="">
                                <span class="switch-label" data-on="On" data-off="Off"></span>
                                <span class="switch-handle"></span>
                            </label>
                        </div>
                        <div>
                            <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</small>
                        </div>
                    </div>

                    <div class="aside-options">
                        <div class="clearfix mt-3">
                            <small><b>Option 2</b>
                            </small>
                            <label class="switch switch-text switch-pill switch-success switch-sm float-right">
                                <input type="checkbox" class="switch-input">
                                <span class="switch-label" data-on="On" data-off="Off"></span>
                                <span class="switch-handle"></span>
                            </label>
                        </div>
                        <div>
                            <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</small>
                        </div>
                    </div>

                    <div class="aside-options">
                        <div class="clearfix mt-3">
                            <small><b>Option 3</b>
                            </small>
                            <label class="switch switch-text switch-pill switch-success switch-sm float-right">
                                <input type="checkbox" class="switch-input">
                                <span class="switch-label" data-on="On" data-off="Off"></span>
                                <span class="switch-handle"></span>
                            </label>
                        </div>
                    </div>

                    <div class="aside-options">
                        <div class="clearfix mt-3">
                            <small><b>Option 4</b>
                            </small>
                            <label class="switch switch-text switch-pill switch-success switch-sm float-right">
                                <input type="checkbox" class="switch-input" checked="">
                                <span class="switch-label" data-on="On" data-off="Off"></span>
                                <span class="switch-handle"></span>
                            </label>
                        </div>
                    </div>

                    <hr>
                    <h6>System Utilization</h6>

                    <div class="text-uppercase mb-1 mt-4">
                        <small><b>CPU Usage</b>
                        </small>
                    </div>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <small class="text-muted">348 Processes. 1/4 Cores.</small>

                    <div class="text-uppercase mb-1 mt-2">
                        <small><b>Memory Usage</b>
                        </small>
                    </div>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <small class="text-muted">11444GB/16384MB</small>

                    <div class="text-uppercase mb-1 mt-2">
                        <small><b>SSD 1 Usage</b>
                        </small>
                    </div>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-danger" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <small class="text-muted">243GB/256GB</small>

                    <div class="text-uppercase mb-1 mt-2">
                        <small><b>SSD 2 Usage</b>
                        </small>
                    </div>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <small class="text-muted">25GB/256GB</small>
                </div>
            </div>
        </aside>


    </div>

    <footer class="app-footer">
        <a href="http://coreui.io">CoreUI</a> © 2017 creativeLabs.
        <span class="float-right">Powered by <a href="http://coreui.io">CoreUI</a>
        </span>
    </footer>

    <!-- Bootstrap and necessary plugins -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/tether/dist/js/tether.min.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="bower_components/pace/pace.min.js"></script>


    <!-- Plugins and scripts required by all views -->
    <script src="bower_components/chart.js/dist/Chart.min.js"></script>


    <!-- GenesisUI main scripts -->

    <script src="js/app.js"></script>



</body>

</html>
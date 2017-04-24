<%@include file="AdminTopNav.jsp"%>
<%@include file="AdminSideNav.jsp"%>

<!-- Main content -->
<main class="main"> <!-- Breadcrumb -->


<div class="row">
          <div class="col-sm-6 col-md-2">
              <div class="card card-inverse card-info">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-people"></i>
                      </div>
                      <div class="h4 mb-0">87.500</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Visitors</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          </div>
          <!--/.col-->
          <div class="col-sm-6 col-md-2">
              <div class="card card-inverse card-success">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-user-follow"></i>
                      </div>
                      <div class="h4 mb-0">385</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Registered</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          </div>
          <!--/.col-->
          <div class="col-sm-6 col-md-2">
              <div class="card card-inverse card-warning">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-basket-loaded"></i>
                      </div>
                      <div class="h4 mb-0">1238</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Delivery</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          </div>
          <!--/.col-->
          <div class="col-sm-6 col-md-2">
              <div class="card card-inverse card-primary">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-pie-chart"></i>
                      </div>
                      <div class="h4 mb-0">28%</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Order</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          </div>
          <!--/.col-->
          <div class="col-sm-6 col-md-2">
              <div class="card card-inverse card-danger">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-speedometer"></i>
                      </div>
                      <div class="h4 mb-0">5:34:11</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Profit</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          </div>
          <!--/.col-->
          <div class="col-sm-6 col-md-2">
              <div class="card card-inverse card-info">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-speech"></i>
                      </div>
                      <div class="h4 mb-0">972</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Sale</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          </div>
          <!--/.col-->
 </div>
 
 
 
 
 
 
 
 
 
 
 
 
 <!-- Critical Product Chart start -->
  <script type="text/javascript">
  window.onload = function () {
        var chart = new CanvasJS.Chart("chartContainer", {
            title: {
                text: "Critical Products Graph",
                fontFamily: "Verdana",
                fontColor: "#7300e6",
                fontSize: 28

            },
            animationEnabled: true,
            axisY: {
                tickThickness: 0,
                lineThickness: 0,
                valueFormatString: " ",
                gridThickness: 0                    
            },
            axisX: {
                tickThickness: 0,
                lineThickness: 0,
                labelFontSize: 18,
                labelFontColor: "#7300e6"

            },
            data: [
            {
                indexLabelFontSize: 26,
                toolTipContent: "<span style='\"'color: {color};'\"'><strong>{indexLabel}</strong></span><span style='\"'font-size: 20px; color:peru '\"'><strong>{y}</strong></span>",

                indexLabelPlacement: "inside",
                indexLabelFontColor: "white",
                indexLabelFontWeight: 600,
                indexLabelFontFamily: "Verdana",
                color: "#ff6666",
                type: "bar",
                dataPoints: [
                    { y: 90, label: "90%", indexLabel: "Samsung Note 3" },
                    { y: 80, label: "80%", indexLabel: "Dining" },
                    { y: 33, label: "33%", indexLabel: "Entertainment" },
                    { y: 36, label: "36%", indexLabel: "News" },
                    { y: 42, label: "42%", indexLabel: "Music" },
                    { y: 49, label: "49%", indexLabel: "Social Networking" },
                    { y: 50, label: "50%", indexLabel: "Maps/ Search" },
                    { y: 55, label: "55%", indexLabel: "Weather" },
                    { y: 61, label: "61%", indexLabel: "Games" }


                ]
            }
            ]
        });
        chart.render();
    };
  </script>
  <script type="text/javascript" src="./js/canvasjs.min.js"></script>
</head>
<body>
  <div id="chartContainer" style="height: 300px; width: 100%;">
  </div>
 <!-- Critical product chart end -->
 
 
 
 

</main>
<%@include file="AdminAsideNav.jsp"%>
<%@include file="AdminFooter.jsp"%>
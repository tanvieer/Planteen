
<%@include file="adminTopNav.jsp"%>
<%@include file="adminSideNav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white"> <!-- Breadcrumb -->


<div id="chartContainer" style="height: 60%; width: 40%;"></div>
<br>
 <div id="chartContainer2" style="height: 300px; width: 100%;"> </div>
<br>

<script type="text/javascript">
window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer",
	{
		title:{
			text: "Users"
		},
                animationEnabled: true,
		legend:{
			verticalAlign: "bottom",
			horizontalAlign: "center"
		},
		data: [
		{        
			indexLabelFontSize: 20,
			indexLabelFontFamily: "Monospace",       
			indexLabelFontColor: "darkgrey", 
			indexLabelLineColor: "darkgrey",        
			indexLabelPlacement: "outside",
			type: "pie",       
			showInLegend: true,
			toolTipContent: "{y} - <strong>#percent%</strong>",
			dataPoints: [
				{  y: 4181563, legendText:"Male", indexLabel: "Male" },
				{  y: 2175498, legendText:"Female", indexLabel: "Female" }
			]
		}
		]
	});
	chart.render();
	
	
	
	
	
	
	var chart2 = new CanvasJS.Chart("chartContainer2",
		    {
		      title:{
		        text: "Yearly Regestered Users"    
		      },
		      animationEnabled: true,
		      axisY: {
		        title: "Users Count"
		      },
		      legend: {
		        verticalAlign: "bottom",
		        horizontalAlign: "center"
		      },
		      theme: "theme1",
		      data: [

		      {        
		        type: "column",  
		        showInLegend: true, 
		        legendMarkerColor: "grey",
		        legendText: "Months",
		        dataPoints: [      
		        {y: 297571, label: "January"},
		        {y: 267017,  label: "February" },
		        {y: 175200,  label: "March"},
		        {y: 154580,  label: "April"},
		        {y: 116000,  label: "May"},
		        {y: 97800, label: "June"},
		        {y: 20682,  label: "August"},
		        {y: 20682,  label: "September"}, 
		        {y: 20682,  label: "October"}, 
		        {y: 20682,  label: "November"}, 
		        {y: 20682,  label: "December"}      
		        ]
		      }   
		      ]
		    });
		chart2.render();
	
	
	
};
</script>
<script type="text/javascript" src="js/canvasjs.min.js"></script>
<script src="assets/js/jquery-1.10.2.js"></script>


</main>
<%@include file="adminAsideNav.jsp"%>
<%@include file="adminUsersPageFooter.jsp"%>
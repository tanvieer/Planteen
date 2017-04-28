/*$(function (){
  'use strict';

  var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
  var lineChartData = {
    labels : ['January','February','March','April','May','June','July'],
    datasets : [
      {
        label: 'My First dataset',
        backgroundColor : 'rgba(220,220,220,0.2)',
        borderColor : 'rgba(220,220,220,1)',
        pointBackgroundColor : 'rgba(220,220,220,1)',
        pointBorderColor : '#fff',
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      },
      {
        label: 'My Second dataset',
        backgroundColor : 'rgba(151,187,205,0.2)',
        borderColor : 'rgba(151,187,205,1)',
        pointBackgroundColor : 'rgba(151,187,205,1)',
        pointBorderColor : '#fff',
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      }
    ]
  }

  var ctx = document.getElementById('canvas-1');
  var chart = new Chart(ctx, {
    type: 'line',
    data: lineChartData,
    options: {
      responsive: true
    }
  });


  var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
  var barChartData = {
    labels : ['January','February','March','April','May','June','July'],
    datasets : [
      {
        backgroundColor : 'rgba(220,220,220,0.5)',
        borderColor : 'rgba(220,220,220,0.8)',
        highlightFill: 'rgba(220,220,220,0.75)',
        highlightStroke: 'rgba(220,220,220,1)',
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      },
      {
        backgroundColor : 'rgba(151,187,205,0.5)',
        borderColor : 'rgba(151,187,205,0.8)',
        highlightFill : 'rgba(151,187,205,0.75)',
        highlightStroke : 'rgba(151,187,205,1)',
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      }
    ]
  }
  var ctx = document.getElementById('canvas-2');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: barChartData,
    options: {
      responsive: true
    }
  });


  var doughnutData = {
    labels: [
      'Red',
      'Green',
      'Yellow'
    ],
    datasets: [{
      data: [300, 50, 100],
      backgroundColor: [
        '#FF6384',
        '#36A2EB',
        '#FFCE56'
      ],
      hoverBackgroundColor: [
        '#FF6384',
        '#36A2EB',
        '#FFCE56'
      ]
    }]
  };
  var ctx = document.getElementById('canvas-3');
  var chart = new Chart(ctx, {
    type: 'doughnut',
    data: doughnutData,
    options: {
      responsive: true
    }
  });


  var radarChartData = {
    labels: ['Eating', 'Drinking', 'Sleeping', 'Designing', 'Coding', 'Cycling', 'Running'],
    datasets: [
      {
        label: 'My First dataset',
        backgroundColor: 'rgba(220,220,220,0.2)',
        borderColor: 'rgba(220,220,220,1)',
        pointBackgroundColor: 'rgba(220,220,220,1)',
        pointBorderColor: '#fff',
        pointHighlightFill: '#fff',
        pointHighlightStroke: 'rgba(220,220,220,1)',
        data: [65,59,90,81,56,55,40]
      },
      {
        label: 'My Second dataset',
        backgroundColor: 'rgba(151,187,205,0.2)',
        borderColor: 'rgba(151,187,205,1)',
        pointBackgroundColor: 'rgba(151,187,205,1)',
        pointBorderColor: '#fff',
        pointHighlightFill: '#fff',
        pointHighlightStroke: 'rgba(151,187,205,1)',
        data: [28,48,40,19,96,27,100]
      }
    ]
  };
  var ctx = document.getElementById('canvas-4');
  var chart = new Chart(ctx, {
    type: 'radar',
    data: radarChartData,
    options: {
      responsive: true
    }
  });


  var pieData = {
    labels: [
      'Red',
      'Green',
      'Yellow'
    ],
    datasets: [{
      data: [300, 50, 100],
      backgroundColor: [
        '#FF6384',
        '#36A2EB',
        '#FFCE56'
      ],
      hoverBackgroundColor: [
        '#FF6384',
        '#36A2EB',
        '#FFCE56'
      ]
    }]
  };
  var ctx = document.getElementById('canvas-5');
  var chart = new Chart(ctx, {
    type: 'pie',
    data: pieData,
    options: {
      responsive: true
    }
  });


  var polarData = {
    datasets: [{
      data: [
        11,
        16,
        7,
        3,
        14
      ],
      backgroundColor: [
        '#FF6384',
        '#4BC0C0',
        '#FFCE56',
        '#E7E9ED',
        '#36A2EB'
      ],
      label: 'My dataset' // for legend
    }],
    labels: [
      'Red',
      'Green',
      'Yellow',
      'Grey',
      'Blue'
    ]
  };
  var ctx = document.getElementById('canvas-6');
  var chart = new Chart(ctx, {
    type: 'polarArea',
    data: polarData,
    options: {
      responsive: true
    }
  });
});
*/
















$(function (){
  'use strict';

  var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
  var lineChartData = {
    labels : ['January','February','March','April','May','June','July'],
    datasets : [
      {
        label: 'My First dataset',
        backgroundColor : 'rgba(220,220,220,0.2)',
        borderColor : 'rgba(220,220,220,1)',
        pointBackgroundColor : 'rgba(220,220,220,1)',
        pointBorderColor : '#fff',
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      },
      {
        label: 'My Second dataset',
        backgroundColor : 'rgba(151,187,205,0.2)',
        borderColor : 'rgba(151,187,205,1)',
        pointBackgroundColor : 'rgba(151,187,205,1)',
        pointBorderColor : '#fff',
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      }
    ]
  }

  var ctx = document.getElementById('canvas-1');
  var chart = new Chart(ctx, {
    type: 'line',
    data: lineChartData,
    options: {
      responsive: true
    }
  });

  
  
  
  
  

  var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
  var barChartData = {
    labels : ['January','February','March','April','May','June','July'],
    datasets : [
      {
        backgroundColor : 'rgba(220,220,220,0.5)',
        borderColor : 'rgba(220,220,220,0.8)',
        highlightFill: 'rgba(220,220,220,0.75)',
        highlightStroke: 'rgba(220,220,220,1)',
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      },
      {
        backgroundColor : 'rgba(151,187,205,0.5)',
        borderColor : 'rgba(151,187,205,0.8)',
        highlightFill : 'rgba(151,187,205,0.75)',
        highlightStroke : 'rgba(151,187,205,1)',
        data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      }
    ]
  }
  var ctx = document.getElementById('canvas-2');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: barChartData,
    options: {
      responsive: true
    }
  });

  
  
  
  
  

  var doughnutData = {
    labels: [
      'Red',
      'Green',
      'Yellow'
    ],
    datasets: [{
      data: [300, 50, 100],
      backgroundColor: [
        '#FF6384',
        '#36A2EB',
        '#FFCE56'
      ],
      hoverBackgroundColor: [
        '#FF6384',
        '#36A2EB',
        '#FFCE56'
      ]
    }]
  };
  var ctx = document.getElementById('canvas-3');
  var chart = new Chart(ctx, {
    type: 'doughnut',
    data: doughnutData,
    options: {
      responsive: true
    }
  });


  
  
  
  
  
  var radarChartData = {
    labels: ['Eating', 'Drinking', 'Sleeping', 'Designing', 'Coding', 'Cycling', 'Running'],
    datasets: [
      {
        label: 'My First dataset',
        backgroundColor: 'rgba(220,220,220,0.2)',
        borderColor: 'rgba(220,220,220,1)',
        pointBackgroundColor: 'rgba(220,220,220,1)',
        pointBorderColor: '#fff',
        pointHighlightFill: '#fff',
        pointHighlightStroke: 'rgba(220,220,220,1)',
        data: [65,59,90,81,56,55,40]
      },
      {
        label: 'My Second dataset',
        backgroundColor: 'rgba(151,187,205,0.2)',
        borderColor: 'rgba(151,187,205,1)',
        pointBackgroundColor: 'rgba(151,187,205,1)',
        pointBorderColor: '#fff',
        pointHighlightFill: '#fff',
        pointHighlightStroke: 'rgba(151,187,205,1)',
        data: [28,48,40,19,96,27,100]
      }
    ]
  };
  var ctx = document.getElementById('canvas-4');
  var chart = new Chart(ctx, {
    type: 'radar',
    data: radarChartData,
    options: {
      responsive: true
    }
  });


  
  
  
  
  
  var pieData = {
    labels: [
      'Red',
      'Green',
      'Yellow'
    ],
    datasets: [{
      data: [300, 50, 100],
      backgroundColor: [
        '#FF6384',
        '#36A2EB',
        '#FFCE56'
      ],
      hoverBackgroundColor: [
        '#FF6384',
        '#36A2EB',
        '#FFCE56'
      ]
    }]
  };
  var ctx = document.getElementById('canvas-5');
  var chart = new Chart(ctx, {
    type: 'pie',
    data: pieData,
    options: {
      responsive: true
    }
  });


  
  
  
  
  
  
  
  
  var polarData = {
    datasets: [{
      data: [
        11,
        16,
        7,
        3,
        14
      ],
      backgroundColor: [
        '#FF6384',
        '#4BC0C0',
        '#FFCE56',
        '#E7E9ED',
        '#36A2EB'
      ],
      label: 'My dataset' // for legend
    }],
    labels: [
      'Red',
      'Green',
      'Yellow',
      'Grey',
      'Blue'
    ]
  };
  var ctx = document.getElementById('canvas-6');
  var chart = new Chart(ctx, {
    type: 'polarArea',
    data: polarData,
    options: {
      responsive: true
    }
  });
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  
  
  
  // ADDED BY NABILA STARTS HERE
  
  
  
 
		
  
  var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
  var barChartData = {
    labels : generateLabelsFromTable(),
	datasets : generateDataSetsFromTable()
  }
  var ctx = document.getElementById('canvas-test');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: barChartData,
    options: {
      responsive: true
    }
  });
  
  
  
  
  //MY DYNAMIC FUNCTIONS
  function generateLabelsFromTable()
	{                       
		var labels = [];
		
		//var rows = jQuery("tr"); //original
		var rows = $("#mytable tr"); //edited
		rows.each(function(index){
			if (index != 0)  // we dont need first row of table
			{
				var cols = $(this).find("td");      
				labels.push(cols.first().text());                           
			}
		});
		return labels;
			
	}
  
  	
  function generateColorLabelsFromTable()
	{                       
		var colorLabels = [];
		
		//var rows = jQuery("tr"); //original
		var firstRow = $("#mytable tr:first"); //edited
		firstRow.find('th').each(function (i){
			colorLabels.push($(this).text());
			
		});
		
		return colorLabels;
			
	}
  
	function generateDataSetsFromTable()
	{
		var colors = [];
		colors.push(                        
		{
				backgroundColor : "rgba(95,137,250,0.5)",
				borderColor : "rgba(95,137,250,0.9)",
				highlightFill: "rgba(95,137,250,0.75)",
				highlightStroke: "rgba(95,137,250,1)",
		});
		colors.push(                        
		{
			backgroundColor : "rgba(245,75,75,0.5)",
			borderColor : "rgba(245,75,75,0.8)",
				highlightFill : "rgba(245,75,75,0.75)",
				highlightStroke : "rgba(245,75,75,1)"
		});
		colors.push(                        
		{
			backgroundColor : "rgba(98,223,114,0.5)",
			borderColor : "rgba(98,223,114,0.8)",
				highlightFill : "rgba(98,223,114,0.75)",
				highlightStroke : "rgba(98,223,114,1)",
		});

		
		
		
		var datasets = [];
		var colorLabels = generateColorLabelsFromTable();
		
		var rows = $("#mytable tr"); //edited
		//var rows = jQuery("tr"); //original
		rows.each(function(index){
			if (index != 0) // we dont need first row of table
			{
				var cols = $(this).find("td");  
				var data = [];
				var labelNew = [];
				cols.each(function(innerIndex){
					if (innerIndex!=0) // we dont need first columns of the row                 
						data.push($(this).text()); 
					else 
						labelNew.push($(this).text());
				});


				var dataset = 
				{
					label : colorLabels[index],
					backgroundColor : colors[index%3].backgroundColor,
					borderColor : colors[index%3].borderColor,
					highlightFill: colors[index%3].highlightFill,
					highlightStroke: colors[index%3].highlightStroke,
					data : data
				}

				datasets.push(dataset);

			}
		});
		return datasets;
	}
	
	
	
	
	
	
	
  //MY DYNAMIC FUNCTIONS END
  
  // ADDED BY NABILA ENDS HERE
});

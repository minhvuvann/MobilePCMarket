$(function () {
	"use strict";
	// chart 2
	// "rgba(255, 255, 255, 0.70)",
	// "rgba(255, 255, 255, 0.50)",
	// "rgba(255, 255, 255, 0.40)",
	// "rgba(255, 255, 255, 0.20)"

	var ctx = document.getElementById("chart2").getContext('2d');
	var myChart = new Chart(ctx, {
		type: 'bar',
		data: {
			labels: ["Iphone", "Ipad", "Mac",  "Watch"],
			datasets: [{
				backgroundColor: [
					"#ffffff",
					"red",
					"blue",
					"yellow",

				],
				data: [255, 125, 60, 200],
				borderWidth: [0, 0, 0,0,0]
			}]
		},
		options: {
			maintainAspectRatio: false,
			legend: {
				position: "bottom",
				display: false,
				labels: {
					fontColor: 'black',
					boxWidth: 15,
					fontSize:20
				},

			}
			,
			tooltips: {
				displayColors: true
			},
			scales: {
				xAxes: [{
					barPercentage: .5,
				  ticks: {
					  beginAtZero:true,
					  fontColor: '#ddd'
				  },
				  gridLines: {
					display: true ,
					color: "rgba(221, 221, 221, 0.08)"
				  },
				}],
				yAxes: [{
					ticks: {
						beginAtZero:true,
						fontColor: '#ddd'
					},
					gridLines: {
					  display: true ,
					  color: "rgba(221, 221, 221, 0.08)"
					},
				  }]

			}
		}
	});




});

// Chart.js scripts
// -- Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// -- Pie Chart Example
//var ctx = document.getElementById("myPieChart");
//var myPieChart = new Chart(ctx, {
  //type: 'pie',
  //data: {
    //labels: ["500", "600", "700", "750", "750 +"],
    //datasets: [{
      //data: [4.9, 17, 23.3, 16.8, 38],
      //backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745', '#035064'],
    //}],
  //},
//});


// -- Bar Chart Example
var ctx = document.getElementById("myBarChart");
var myLineChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["500", "600", "700", "750", "750+"],
    datasets: [{
      label: "Population #",
      backgroundColor: ['Red', 'Yellow', 'LightGreen', 'DarkGreen', 'Gold'],
      borderColor: "rgba(2,117,216,1)",
      data: [11760000, 40800000, 55920000, 40320000, 91200000],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 5
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 100000000,
          maxTicksLimit: 5
        },
        gridLines: {
          display: true
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
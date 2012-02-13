# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

chart_bobadas = undefined
$(document).ready ->
  chart_bobadas = new Highcharts.Chart(
    chart:
      renderTo: "div_bobadas"

    credits:
      enabled: false

    plotOptions:
      pie:
        dataLabels:
          enabled: true

    series: [{
      data: [
        ['Patatas', 27],
        ['Puerros', 13],
        ['Berza', 40],
        ['Zanahoria', 20]
      ]
      type: 'pie'
    }]

    title:
      text: 'Products per month'
  )

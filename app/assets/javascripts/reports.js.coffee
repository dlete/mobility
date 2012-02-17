# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# to include erb here, then the extension of this file must be .erb
# http://guides.rubyonrails.org/asset_pipeline.html#coding-links-to-assets

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
        ["Patatas", 73]
        ["Peras", 27]
      ]
      type: 'pie'
    }]

    title:
      text: 'Products per month'
  )

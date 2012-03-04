# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# to include erb here, then the extension of this file must be .erb
# http://guides.rubyonrails.org/asset_pipeline.html#coding-links-to-assets

chart = undefined
$(document).ready ->
  chart_seasons_accumulateds = new Highcharts.Chart(
    chart:
      renderTo: "div_seasons_accumulateds"
      type: "spline"

    credits:
      enabled: false

    title:
      text: null

    xAxis:
      categories: [ "Sep", "Oct", "Nov", "Dec", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug" ]

    yAxis:
      title:
        text: "Connections"

    tooltip:
      crosshairs: true
      shared: true

    plotOptions:
      spline:
        marker:
          enabled: false
          radius: 4
          lineColor: "#666666"
          lineWidth: 1

    series: [
      {
      name: gon.series_season_accumulated_2008_name
      data: gon.series_season_accumulated_2008_data
      }
      {
      name: gon.series_season_accumulated_2009_name
      data: gon.series_season_accumulated_2009_data
      }
      {
      name: gon.series_season_accumulated_2010_name
      data: gon.series_season_accumulated_2010_data
      }
      {
      name: gon.series_season_accumulated_2011_name
      data: gon.series_season_accumulated_2011_data
      }
    ]
  )

chart = undefined
$(document).ready ->
  chart_year_series = new Highcharts.Chart(
    chart:
      renderTo: "div_year_series"
      type: "spline"

    credits:
      enabled: false

    title:
      text: null

    xAxis:
      categories: [ "Sep", "Oct", "Nov", "Dec", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug" ]

    yAxis:
      title:
        text: "Connections"

    tooltip:
      crosshairs: true
      shared: true

    plotOptions:
      spline:
        marker:
          enabled: false
          radius: 4
          lineColor: "#666666"
          lineWidth: 1

    series: [ 
      {
      name: gon.series_season_2008_name
      data: gon.series_season_2008_data
      }
      {
      name: gon.series_season_2009_name
      data: gon.series_season_2009_data
      }
      {
      name: gon.series_season_2010_name
      data: gon.series_season_2010_data
      }
      {
      name: gon.series_season_2011_name
      data: gon.series_season_2011_data
      }
    ]
  )

chart_bobadas = undefined
$(document).ready ->
  chart_bobadas = new Highcharts.Chart(
    chart:
      renderTo: "div_bobadas"

    credits:
      enabled: false

    plotOptions:
      pie:
        animation: false
        dataLabels:
          enabled: true

    series: [{
      data: gon.product_units_formated
      type: 'pie'
    }]

    title:
      text: 'Products per month'
  )

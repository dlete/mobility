# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# to include erb here, then the extension of this file must be .erb
# http://guides.rubyonrails.org/asset_pipeline.html#coding-links-to-assets

chart_historicals_institutions = undefined
$(document).ready ->
  chart_historicals_institutions = new Highcharts.Chart(
    chart:
      renderTo: "div_historicals_institutions"
      type: "bar"

    credits:
      enabled: false

    title:
      text: "Institutions historicals"

    xAxis:
      categories: gon.series_hi_categories
      title:
        text: null

    yAxis:
      title:
        text: "Connections"

    legend:
      layout: "vertical"
      align: "right"
      verticalAlign: "top"
      x: -100
      y: 100
      floating: true
      borderWidth: 1
      backgroundColor: "#FFFFFF"

    plotOptions:
      bar:
        dataLabels:
          enabled: false
        pointPadding: 0.2
        borderWidth: 0

    series: [
      {
      name: gon.series_hi_2008_2009_name
      data: gon.series_hi_2008_2009_data
      }
      {
      name: gon.series_hi_2009_2010_name
      data: gon.series_hi_2009_2010_data
      }
      {
      name: gon.series_hi_2010_2011_name
      data: gon.series_hi_2010_2011_data
      }
      {
      name: gon.series_hi_2011_2012_name
      data: gon.series_hi_2011_2012_data
      }
    ]
  )


chart = undefined
$(document).ready ->
  chart_seasons_accumulateds = new Highcharts.Chart(
    chart:
      renderTo: "div_seasons_accumulateds"
      type: "spline"

    credits:
      enabled: false

    title:
      text: "Accumulated connections"

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
      text: "Connections month"

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

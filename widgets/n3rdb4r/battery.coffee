command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 15000 # ms

render: (output) ->
  """
  <div class="wrapper">
    <i class='fa icon'></i>
    <span class="battery"></span>
  </div>
  """

update: (output, el) ->
  batteryLevel = parseInt(output)
  $(".battery", el).text("#{output}")
  $icon = $(".icon", el)
  $icon.removeClass().addClass("icon fa")
  $icon.addClass("#{@icon(batteryLevel)}")
  $percent = $(".wrapper", el)
  $percent.removeClass()
  $percent.addClass("#{@color(batteryLevel)}")

icon: (output) ->
  return if output > 90
    "fa-battery-full"
  else if output > 70
    "fa-battery-three-quarters"
  else if output > 40
    "fa-battery-half"
  else if output > 20
    "fa-battery-quarter"
  else
    "fa-battery-empty"

color: (output) ->
  return if output > 90
    "green"
  else if output > 70
    "yellow"
  else if output > 40
    "orange"
  else if output > 20
    "red"

style: """
  -webkit-font-smoothing: antialiased
  font: 14px Hack
  top: 5px
  right: 10px
  color: #d5c4a1
  color: #b57eed

  .green
    color: #8c9440
  .orange
    color: #de935f
  .yellow
    color: #f0c674
  .red
    color: #a54242
"""

command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <div class="wrapper">
    <i class='fa fa-bar-chart'></i>
    <span class="cpu"></span>
  </div>
  """

update: (output, el) ->
  $(".cpu", el).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 14px Hack
  right: 320px
  top: 5px
"""

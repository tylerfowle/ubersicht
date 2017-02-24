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
  color: #b57eed
  font: 14px Hack
  right: 370px
  bottom: 5px
"""

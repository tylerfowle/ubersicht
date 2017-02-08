command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <div class="wrapper">
    <i class='fa fa-hdd-o'></i>
    <span class="mem"></span>
  </div>
  """

update: (output, el) ->
  $(".mem", el).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  color: #b57eed
  font: 14px Hack
  right: 300px
  top: 5px
"""

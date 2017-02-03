command: "date +\"%I:%M:%S\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <div class="wrapper">
    <i class='fa fa-clock-o'></i>
    <span class="time"></span>
  </div>
  """

update: (output, el) ->
  $(".time", el).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 14px Hack
  right: 10px
  top: 5px
"""
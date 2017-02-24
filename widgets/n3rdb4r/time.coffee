command: "date +\"%I:%M:%S\""

refreshFrequency: 5000 # ms

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
  color: #b57eed
  font: 14px Hack
  right: 80px
  bottom: 5px
"""

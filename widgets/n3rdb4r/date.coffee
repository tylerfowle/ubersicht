command: "date +\"%b %d,%a\""

refreshFrequency: 60000 #ms

render: (output) ->
  """
  <div class="wrapper">
    <i class='fa fa-calendar'></i>
    <span class="date"></span>
  </div>
  """

update: (output, el) ->
  $(".date", el).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  color: #b57eed
  font: 14px Hack
  right: 180px
  top: 5px
"""

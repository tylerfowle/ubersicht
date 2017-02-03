command: "date +\"%b %d,%a\""

refreshFrequency: 10000

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
  font: 14px Hack
  right: 120px
  top: 5px
"""

command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <div class="wrapper">
    <i class='fa fa-bars'></i>
    <span class="active-app"></span>
  </div>
  """

update: (output, el) ->
  $(".active-app", el).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  color: #b57eed
  font: 14px Hack
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 5px
  width: 500px
  white-space: nowrap
"""

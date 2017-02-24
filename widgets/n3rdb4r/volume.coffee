command: "osascript -e 'set ovol to output volume of (get volume settings)'"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <div class="wrapper">
    <i class='fa icon'></i>
    <span class="volume"></span>
  </div>
  """

update: (output, el) ->
  volumeLevel = parseInt(output)
  $(".volume", el).text("#{output}")
  $icon = $(".icon", el)
  $icon.removeClass().addClass("icon fa")
  $icon.addClass("#{@icon(volumeLevel)}")

icon: (output) ->
  if output > 50
    "fa-volume-up"
  else if output > 25
    "fa-volume-down"
  else
    "fa-volume-off"


style: """
  -webkit-font-smoothing: antialiased
  font: 14px Hack
  bottom: 5px
  right: 40px
  color: #b57eed
"""

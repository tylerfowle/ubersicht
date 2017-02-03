command: """
IFS='|' read -r theArtist theName <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        return theArtist & "|" & theName
    end tell')"
echo "$theArtist - $theName"
"""

refreshFrequency: 2000 #ms

render: (output) ->
  """
  <div class="wrapper">
    <i class='fa fa-spotify'></i>
    <span class="current-track"></span>
  </div>
  """

update: (output, el) ->
  $(".current-track", el).text("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 14px Hack
  left: 0
  width: 100%
  top: 5px
  text-align: center
  letter-spacing: -1px
"""

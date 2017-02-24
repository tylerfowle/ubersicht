command: """
read -r running <<<"$(ps -ef | grep \"MacOS/Spotify\" | grep -v \"grep\" | wc -l)" &&
test $running != 0 &&
IFS='|' read -r theArtist theName theState <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        set theState to player state as string
        return theArtist & "|" & theName & "|" & theState
    end tell')" &&
echo "$theArtist - $theName - $theState" || echo "Not Connected To Spotify"
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
  color: #b57eed
  font: 14px Hack
  left: 0
  width: 100%
  bottom: 5px
  text-align: center
  letter-spacing: -1px
"""

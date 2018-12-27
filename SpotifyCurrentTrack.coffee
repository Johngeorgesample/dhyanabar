command: """
IFS='|' read -r theArtist theName <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        return theArtist & "|" & theName
    end tell')"
echo "$theArtist - $theName"
"""

refreshFrequency: 2000

style: """
  -webkit-font-smoothing: antialiased
  font: 11px Menlo
  top: 14px
  left: 210px
  color: #eee8d5
"""

render: (output) -> """
	<div class="some-class">#{output}</div>
"""

command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000 # ms

render: (output) ->
  "vol <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 11px Menlo
  top: 14px
  right: 350px
  color: #eee8d5
  span
    color: #aaa
"""

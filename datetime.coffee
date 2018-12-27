command: "date +\"%a %b %d %Y | %I:%M\""

refreshFrequency: 1000

render: (output) ->
  "<div class='date'>#{output}</div>"

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 12px Menlo
  top: 14px
  width: 100%

  .date
    text-align: center
"""

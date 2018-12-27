command: """
/usr/local/bin/mpc | head -1
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

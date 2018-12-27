# WiFi SSID Widget
#
# Joe Kelley
#
# This widget displays the current connected WiFi network name. It can be helpful if you are in an environment where multiple networks are available. 
# It uses the built-in OS X airport framework to get and display the SSID name (up to 20 characters in length)


command: "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep ' SSID' | cut -c 18-38"

refreshFrequency: 10000

# Adjust the style settings to suit. I've set the position to be just below the WiFi icon in my menu bar.
style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 11px Menlo
  right: 410px
  top: 14px
  span
    color: #aaa
"""
render: (output) ->
  "wifi <span>#{output}</span>"
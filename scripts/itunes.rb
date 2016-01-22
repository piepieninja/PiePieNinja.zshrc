#!/usr/bin/env ruby
# coding: utf-8

##
# Author: Caleb Adams
# Contact: CalebAshmoreAdams@gmail.com
# Website: CalebDevelops.com 
##

require 'colorize'
# ੦ᐅᖱ•‣∮ ⌘ ⏸ ⏹ ⏯ ⏲ ☞  ⚡ ✖  ♬ 

#cmd = "osascript -e 'tell application \"iTunes\" to if player state is playing then \"♬  \" & name of current track & \" - \" & artist of current track'"
cmd = "osascript -e 'tell application \"iTunes\" to if player state is playing then \"♬  \" & name of current track & \" - \" & artist of current track'"
input = `#{cmd}`
output = ""

# see colors
#puts String.colors

if input.to_s == ''
  output << "[".white
  output << "♬ ".magenta
  output << "]".white
else
  output << "[".white
  output << input.gsub("\n","").magenta
  output << "]".white
end

puts output

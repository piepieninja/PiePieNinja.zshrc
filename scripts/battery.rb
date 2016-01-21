#!/usr/bin/env ruby

##
# Author: Caleb Adams
# Contact: CalebAshmoreAdams@gmail.com
# Website: CalebDevelops.com 
# Discription: This script parses the input of "$ pmset -g batt" which is expected to
# return a string of data about battery usage. The string will look like this:
#
# "Now drawing from 'Battery Power'
# -InternalBattery-019%; discharging; 1:01 remaining"
#
# This script will return a simply string that relays the battery usage as a percentage
# and an ASCII batter loaded to the appoxomation of the current battery. This is to be
# used for the piepieninja.zsh-theme, but could be used for any theme or other script.
##

require 'colorize'

cmd = "pmset -g batt"
input = `#{cmd}`
#input = ARGV[0]
#puts "input: " << input 
output = ""

isCharging = FALSE

#is it charging?
if input.include? "discharging"
  isCharging = FALSE
else
  isCharging = TRUE
end

#find the battery charge!
percent = 0
(0..input.length).each do |i|
  if input[i] == '%'
    percent = input[i-3..i].to_i
  end
end

# generate graphic!
length = 10
if percent == 99
  percent = 100
end
greenBars = percent/length
output << "[".white
i = 0

doYellow = TRUE
while i < length
  if i < greenBars
    output << "|".green
  else
    if (percent % 10 > 8) and doYellow
      output << "|".light_yellow
      doYellow = FALSE
    elsif (percent % 10 > 5) and doYellow
      output << "|".light_yellow
      doYellow = FALSE
    elsif (percent % 10 > 3) and doYellow
      output << "|".light_red
      doYellow = FALSE
    elsif
      output << "|".red
    end
  end
  i = i + 1
end
output << "]".white
if isCharging
  output << "{".magenta << "++".green << "}".magenta
end

puts output

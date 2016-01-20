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

input = ARGV[0]
output = ""

isCharging = FALSE

#puts "input: " << input
#puts String.colors

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
    #puts percent
    #break
  end
end

# generate graphic!
length = 10
greenBars = percent/length
output << "[".white
i = 0

while i < length
  if i < greenBars
    output << "|".green
  else
    output << "|".red
  end
  i = i + 1
end
output << "]".white
if isCharging
  output << "{".magenta << "++".green << "}".magenta
end

puts output

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

puts "hello world"

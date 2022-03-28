#!/bin/bash

os=`lsb_release -d | awk '{printf "%s %s", $2, $3}'`
rootFree=`df -h | grep root | awk '{print $4}' | tr -d '\n'`
homeFree=`df -h | grep home | awk '{print $4}' | tr -d '\n'`
memAvailable=`free -m | grep "Mem" | awk '{printf "%.1fG", $7/1024}'`
cpuTemp=`sensors | grep CPU | awk '{print $2}' | sed 's/+//' | tr -d '\n'`
loadAvg=`cat /proc/loadavg | awk '{printf "%s %s %s", $1, $2, $3}'`

printf "
                          
    _/      _/  _/_/_/    
   _/_/    _/  _/    _/   
  _/  _/  _/  _/_/_/      
 _/    _/_/  _/          漢  $os
_/      _/  _/            $rootFree   $homeFree   $memAvailable   $cpuTemp  辰$loadAvg
                         
                         
" | lolcat --seed=23 --spread=3

printf "
        ⢸⣦⡈⠻⣿⣿⣿⣶⣄          ⣸ ⣯ ⣫ ⣫  ⣵ ⣟ ⣏ ⣿ ⣯ ⣟
        ⢸⣿⣿⣦⡈⠻⣿⣿⣿⣷⣄
  ⣀⣀⣀⣀⣀⣀⣼⣿⣿⣿⣿ ⠈⠻⣿⣿⣿⣷⣄        $os
  ⠈⠻⣿⣿⣿⣿⣿⡿⠿⠛⠁   ⠈⠻⢿⣿⣿⣷⣄     $rootFree   $homeFree   $memAvailable   $cpuTemp  辰$loadAvg
" | lolcat --truecolor --seed=22 --spread=6

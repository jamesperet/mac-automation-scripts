tput sc
tput rc
tput ed
echo "waiting 3"
sleep 1
tput cuu 1
tput ed
echo "waiting 2"
sleep 1
tput cuu 1
tput ed
echo "waiting 1"
sleep 1
tput cuu 1
tput ed
echo "Done     "

tput sc
printf "\n\n"
tput cnorm   -- normal

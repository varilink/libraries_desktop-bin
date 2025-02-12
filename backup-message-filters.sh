#!/usr/bin/env sh

# Get the default Thunderbird profile
profile=`awk -F= '/^Default=/ {print $2}' ~/.thunderbird/profiles.ini`

for server in $(
  grep -oP 'mail.server.server\K[0-9]+' ~/.thunderbird/$profile/prefs.js       \
  | sort -u | tr '\n' ' '
); do

  user=$(                                                                      \
    grep -oP "mail.server.server$server.userName\", \"\K[^\"]+"                \
    ~/.thunderbird/$profile/prefs.js                                           \
  )

  directory=$(                                                                 \
    grep -oP "mail.server.server$server.directory\", \"\K[^\"]+"               \
    ~/.thunderbird/$profile/prefs.js                                           \
  )

  cp "$directory/msgFilterRules.dat"                                           \
    ~/Dropbox/Desktop/Message_Filter_Rules/$user

done

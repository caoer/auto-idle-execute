#WAIT_TIME is in seconds
WAIT_TIME = 30 * 60

def idle_time
   `ioreg -c IOHIDSystem | perl -ane 'if (/Idle/) {$idle=(pop @F)/1000000000;
print $idle,\"\n\"; last}'`.to_f
end

if idle_time > WAIT_TIME
  `open /Applications/uTorrent.app`
end


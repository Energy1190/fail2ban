#!bin/bash

/src/fail2ban/bin/fail2ban-client start
/src/fail2ban/bin/fail2ban-client $@
tail -f /dev/null
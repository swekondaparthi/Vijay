name "base"
description "Base Server Role"
run_list "recipe[ntp]","recipe[motd]"

#, "recipe[u
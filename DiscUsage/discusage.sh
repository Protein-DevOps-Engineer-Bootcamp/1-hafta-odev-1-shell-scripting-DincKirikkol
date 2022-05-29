#!bin/sh

######################################################### 
#                       CONTACT                         #
#########################################################
#                    Dinc Kırıkkol                      # #                                                       #
#           GMAIL : d.kirikkol@icloud.com               #
# Linkedin : https://www.linkedin.com/in/dinckirikkol   #
#########################################################



df -H | grep -vE "^Filesystem|tmpfs|cdroom" awk '{

if ($5>50)

sendmail -t <  test

else 

print "Memory Usage Less Than %50"

}'


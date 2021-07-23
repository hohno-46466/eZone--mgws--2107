#
# (3-1) Getting started with kotoriotoko
#
# Last update: Thu Jul 22 20:59:12 JST 2021 by @hohno_at_kuimc
#
# Public domain
#

# ----------------------------------------------------------

# Description:  How to control twitter services from the commandline

# Requirement: Kotoriotoko commands must be installed

# ----------------------------------------------------------

# (Step1) 

# Note: 

(T2)$ dmtweet.sh -t twetter_ID this is my direct message from kotoriotoko 


# ----------------------------------------------------------

# (Step2) 

# Note: 

(T2)$ dmtweet.sh -t twetter_ID  #  Type any messages as you want...
       The quick brown fox jumps over the lazy dog
       1
       2
       3
       Control-D	

# ----------------------------------------------------------

# (Step3) 

# Note: 

(T2)$ echo "This is my second direct message from kotoriotoko" |  dmtweet.sh -t twetter_ID 

# Note:

# ----------------------------------------------------------

# Important notice. You can use the tweet.sh command instead of the dmtweet.sh command.
# However, if you frequently send meaningless test messages like the one above with the tweet.sh command,
# your colleagues will be very annoyed by the messages.
# Some of them will worry that your twitter account has been hijacked.

# ----------------------------------------------------------


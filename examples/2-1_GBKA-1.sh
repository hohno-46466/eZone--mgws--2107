#
# (2-1) Basic operation of the cu command
#
# Last update: Thu Jul 22 20:59:12 JST 2021 by @hohno_at_kuimc
#
# Public domain
#

# ----------------------------------------------------------

# Description: Learn the basic operation of the cu command

# Requirement: cu command, prepare one of the sketches of Lesson 0 or Lesson 2 for GBKA

# ----------------------------------------------------------

# (Step0) 

# Note: Before executing the following commands, be sure to check the COM port number, which can be found in the Arduino IDE.
# If the COM port number is 5, replace /dev/ttyS3 with /dev/ttyS5 in the following command, and if the COM port number is something else, replace it as well.

(T2)$ ls -l /dev/ttyS3
(T2)$ sudo chmod 666  /dev/ttyS3
(T2)$ ls -l /dev/ttyS3

# ----------------------------------------------------------

# (Step1) 

(T2)$ sudo cu -f -s 57600 -l /dev/ttyS3

# Note: To stop the cu command, type ENTER ~ . ENTER in this order (Do not type these keys at the same time)

# ----------------------------------------------------------

# (Step2)

(T2)$ sudo cu -f -s 57600 -l /dev/ttyS3 | cat -u -n


# ----------------------------------------------------------

# (Step3)

# Note: prepare sketch_20210723_Lesson2_with_notify_millis_and_keywords.ino on GBKA

(T2)$ sudo cu -f -s 57600 -l /dev/ttyS3 | nkf -u -Lw | mosquitto_pub -l -t MGWS/Lesson2

(T3)$ mosquitto_sub -t MGWS/Lesson2

(T4)$ mosquitto_sub -t MGWS/Lesson2 | tee $HOME/Desktop/NN-Lesson2a.csv

# Note: Replace NN (which is the first two digits in NN-Lesson2a.csv) with your two digits ID number.

# Note: Type Control-C to stop mosquitto_sub. After stopping the commandline on T4, find a new file which name is NN-Lesson2a.csv on your Desktop


# ----------------------------------------------------------

# (Step4)

# Note:  The same trial with Step3 but use the public broker on the croud


(T2)$ sudo cu -f -s 57600 -l /dev/ttyS3 | nkf -u -Lw | mosquitto_pub -l -t MGWS/NN-Lesson2 -h broker.hivemq.com -I clientId

(T3)$ mosquitto_sub -t MGWS/NN-Lesson2 -h broker.hivemq.com -I clientId

(T4)$ mosquitto_sub -t MGWS/NN-Lesson2 -h broker.hivemq.com -I clientId | tee $HOME/Desktop/NN-Lesson2b.csv

# Note: Replace NN (which is the first two digits in NN-Lesson2.csv) with your two digits ID number.

# Note: Type Control-C to stop mosquitto_sub. After stopping the command line on T4, find a new file which name is NN-Lesson2b.csv on your Desktop


# ----------------------------------------------------------

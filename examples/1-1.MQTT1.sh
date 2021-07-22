#
# (1-1) Basic messaging over MQTT
#
# Last update: Thu Jul 22 20:59:12 JST 2021 by @hohno_at_kuimc
#
# Public domain
#

# ----------------------------------------------------------

# (Step1) Starting MQTT Broker

(T1)$ mosquitto

# ----------------------------------------------------------

# (Step2) Subscribe (receive) message from MQTT broker on Terminal No.2 (T2)

(T2)$ mosquitto_sub -t MGWS/Test99

# Note: Type control-C to stop the subscriber above. 

# ----------------------------------------------------------

# (Step3) Publish (send) a message from Terminal No.2 (T2) to Terminal No.3 (T3)

(T3)$ echo "Hello,Halifax!" 

(T3)$ echo "Hello,Halifax!" | mosquitto_pub -l -t MGWS/Test99

# ----------------------------------------------------------


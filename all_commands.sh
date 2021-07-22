#
# All commands for the workshop
#
# Last update: Thu Jul 22 20:59:12 JST 2021 by @hohno_at_kuimc
#
# Public domain
#

# ----------------------------------------------------------

# (1) Basic messaging over MQTT

# (1-1) Starting MQTT Broker

(T1)$ mosquitto

# ----------------------------------------------------------

# (1-2) Subscribe (receive) message from MQTT broker on Terminal No.2 (T2)

(T2)$ mosquitto_sub -t MGWS/Test99

# ----------------------------------------------------------

# (1-3) Publish (send) a message from Terminal No.2 (T2) to Terminal No.3 (T3)

(T3)$ echo "Hello,Halifax!" 
(T3)$ echo "Hello,Halifax!" | mosquitto_pub -l -t MGWS/Test99


# ----------------------------------------------------------



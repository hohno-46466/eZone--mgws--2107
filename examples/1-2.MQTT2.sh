#
# (1-2) Basic messaging over the public MQTT (MQTT broker on the internet)
#
# Last update: Thu Jul 22 20:59:12 JST 2021 by @hohno_at_kuimc
#
# Public domain
#

# ----------------------------------------------------------

# (Step1) Subscribe messages from the public MQTT broker (on Terminal No.2)

# Note: Replace "XX" in "TestXX" below with your two digit number

(T2)$ mosquitto_sub -t MGWS/TestXX -h broker.hivemq.com -I clientId

# Note: Type control-C to stop the subscriber above.

# ----------------------------------------------------------

# (Step2) Publish a message from Terminal No.2 (T2) to Terminal No.3 (T3) via public MQTT broker.

# Note: Replace "XX" in "TestXX" below with your two digit number

(T3)$ echo "Hello,Halifax!" 

(T3)$ echo "Hello,Halifax!" | mosquitto_pub -l -t MGWS/TestXX -h broker.hivemq.com -I clientId


# ----------------------------------------------------------



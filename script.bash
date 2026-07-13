#!/bin/bash
(while true ; do ~/gps-sdr-sim/gps-sdr-sim -p -s 1000000 -e ~/gps-sdr-sim/brdc1100.26n -l $(cat ~/gps-sdr-sim/eiffel.txt) -t 2026/04/20,01:00:00 -d 28800 -o - | /usr/local/lib/uhd/examples/tx_samples_stream --rate 1e6 --freq 1575420000 --gain 60 --args serial=3155F91,type=b200,master_clock_rate=4e6 ; done)


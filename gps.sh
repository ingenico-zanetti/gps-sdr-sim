#!/bin/bash
(while true ; do ~/gps-sdr-sim/gps-sdr-sim -p -s 1000000 -e ~/gps-sdr-sim/brdc1100.26n -l $(cat ~/gps-sdr-sim/eiffel.txt) -t 2026/04/20,01:00:00 -d 28800 -o -  ; done)| /usr/local/lib/uhd/examples/tx_samples_stream --rate 1e6 --freq 1575420000 --gain 18 --args serial=3155F91


#!/bin/bash
for count in {1..3}
do
bash "send_msg_to_mm_online$count.sh"
done
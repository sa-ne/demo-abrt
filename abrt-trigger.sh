#!/bin/bash

# The following will trigger an event for ABRT to capture and analyze
sleep 100 &
read -p "Press Enter to trigger an event for ABRT... " NULL
kill -s SEGV $(bg | grep sleep)

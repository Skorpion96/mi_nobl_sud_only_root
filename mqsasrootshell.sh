#!/bin/sh

# Define port and address
HOST="127.0.0.1"
PORT="1234"

# Check if the listener is available
if echo | /system/bin/toybox nc $HOST $PORT >/dev/null 2>&1; then
echo "Welcome to the mqsas root shell"
echo "Enter Commands"
    # Attempt to connect to the listener and provide a shell
   /system/bin/toybox nc $HOST $PORT
echo "mqsas root shell provided by Skorpion96"
else
    echo "Failed to connect to listener on ${HOST}:${PORT}"
    echo "Please run the reverse shell cmd on mqsas service or check if the port is already in use"
fi

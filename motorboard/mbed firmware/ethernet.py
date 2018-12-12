from __future__ import print_function
import socket
import signal
import sys
import threading

# Evan's laptop works with: IP whatever, netmask 255.255.255.0, gateway 0.0.0.0

ECHO_SERVER_ADDRESS = "192.168.1.20"
ECHO_SERVER_PORT = 7

done = False

def signal_handler(signal, frame):
    print('You pressed Ctrl+C!')
    done = True
    s.close()
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

print("setting up socket...")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
print("connecting socket...")
s.connect((ECHO_SERVER_ADDRESS, ECHO_SERVER_PORT))
print("success")
message = "$0.0,0.0"


def send_commands_loop():
    global message, done
    prev_data = None
    while not done:
        # print('Sending', str(message))
        s.sendall(message)
        data = str(s.recv(1024))
        if data != prev_data:
            print('Received', data)
        prev_data = data
    s.close()


threading.Thread(target=send_commands_loop).start()

while (True):
    message = raw_input()

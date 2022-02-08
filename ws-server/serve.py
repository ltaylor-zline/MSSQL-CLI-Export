#!/usr/bin/env python3
import logging
from websocket_server import WebsocketServer
import threading

def new_client(client, server):
    server.send_message_to_all('Running')

server = WebsocketServer(host='127.0.0.1', port=13254, loglevel=logging.INFO)
server.set_fn_new_client(new_client)

class thread(threading.Thread):
    def __init__(self, thread_name, thread_ID, fn):
        threading.Thread.__init__(self)
        self.thread_name = thread_name
        self.thread_ID = thread_ID
        self.fn = fn

        # helper function to execute the threads
    def run(self):
        print('starting thread ' + str(self.thread_name) +" with ID "+ str(self.thread_ID));
        self.fn()

def read_lines():
    while(True):
        with open('reset.fifo', 'r') as fifo:
            for line in fifo:
                server.send_message_to_all('Refresh')

thread1 = thread("reset_fifo", 1000, read_lines);
 
thread1.start()
 
server.run_forever()
#! python3.6

import json
import time
import socket
from urllib.error import HTTPError
from urllib.parse import urlencode
from urllib.request import Request, urlopen


def send_command(command_type, payload=None):
    data = {
        'aggregateId': 'root-id',
        'aggregateName': 'TimerOST',
        'type': command_type
    }
    if isinstance(payload, dict):
        data['payload'] = payload
    request = Request(
        'http://localhost:3000/api/commands', 
        json.dumps(data).encode(),
        {'content-type': 'application/json'})
    try:
        response = urlopen(request).read().decode()
        if response != 'OK':
            print(f'Response: {response}')
        return True
    except HTTPError as e:
        print(f'Error {e.code}: {e.msg}')
        return False

# send_command('startMusic')
# time.sleep(3)
# send_command('stopMusic', {'team': 3})

import subprocess

send_command('connectHardware', {'url': f"http://{subprocess.check_output(['hostname', '-I']).decode().split()[0]}:3001/event" })

exit()

def process_event(event):
    print(f'Event "{event}" processed!')


sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.bind(('', 3001))
sock.listen(1)

while True:
    try:
        print('Waiting for connection...')
        csock, caddr = sock.accept()
        print(f'Connection from: {caddr}')
        req = csock.recv(1024).decode()
        if req.startswith('GET / HTTP/1'):
            csock.sendall("""HTTP/1.1 200 OK\nContent-Type: text/html\n
                <html>
                    <h1>GET request OK!</h1>
                    <form action="/event" method="post">
                        <label for="event">POST:</label>
                        <input name="event" id="event" value="TEST_EVENT">
                        <button>Send!</button>
                    </form>
                </html>
            """.encode())
            print("Returning a page")
        elif req.startswith('POST /event HTTP/1'):
            data = req.rsplit('\n', 1)[1]
            print(f'Event "{data}" received!')
            if '=' in data:
                data = data.split('=', 1)[1]
            process_event(data)
            csock.sendall(f'HTTP/1.1 200 OK\nContent-Type: text/plain\n\n{data} OK'.encode())
        else:
            req = req.split('\n', 1)[0]
            print(f"Returning 404 on {req}")
            csock.sendall('HTTP/1.1 404 Not Found, desu\nContent-Type: text/plain\n\nSend GET requests to /'.encode())
    except Exception as e:
        print(e)
        break
    finally:
        csock.close()
        print('Socket closed\n')

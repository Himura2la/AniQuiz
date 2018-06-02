#! python3.6

import json
import time
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

print(send_command('startMusic'))
time.sleep(3)
print(send_command('stopMusic', {'team': 3}))
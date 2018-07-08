from time import sleep
from machine import Pin, reset
from network import WLAN, STA_IF
from wifi_cfg import SSID, pwd


def connect_wifi():
    print('\nConnecting to %s...' % SSID)
    STA = WLAN(STA_IF)
    STA.active(True)
    STA.connect(SSID, pwd)
    status_led = Pin(2, Pin.OUT)
    while not STA.isconnected():
        status = 0 if 'status' not in globals() or status else 1
        status_led.value(status)
        sleep(0.1)
    status_led.on()  # off
    print('Ready!  IP: %s' % STA.ifconfig()[0])

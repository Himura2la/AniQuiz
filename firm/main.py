import wifi
from network import WLAN, STA_IF
from machine import Pin
from time import sleep

print('Connecting...')
STA = WLAN(STA_IF)
STA.active(True)
STA.connect(wifi.SSID, wifi.pwd)
status_led = Pin(2, Pin.OUT)
status = 0
while not STA.isconnected():
    status = 0 if status else 1
    status_led.value(status)
    sleep(0.1)
status_led.on()  # off

print('Ready!')


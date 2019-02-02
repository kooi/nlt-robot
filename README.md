# nlt-robot

```
./do-full-install.sh <ip>
```

## Firmware (micropython)

[micropython docs](https://docs.micropython.org/en/latest/esp8266/tutorial/intro.html)

```
esptool.py --port /dev/ttyUSB0 erase_flash
esptool.py --port /dev/ttyUSB0 --baud 460800 write_flash --flash_size=detect 0 esp8266-20180511-v1.9.4.bin

```

## Connection

### REPL over serial port
```
miniterm /dev/ttyUSB0 115200
```

### WebREPL

#### AP Mode
1. Connect to micropython AP
2. Open WebREPL at [http://micropython.org/webrepl/](http://micropython.org/webrepl/)
3. Connect to ```ws://<ip>:8266/```

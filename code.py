import time
import board
import digitalio
import usb_hid
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keyboard_layout_us import KeyboardLayoutUS
from adafruit_hid.keycode import Keycode


time.sleep(1)
keyboard = Keyboard(usb_hid.devices)
keyboard_layout = KeyboardLayoutUS(keyboard)

key_pin = digitalio.DigitalInOut(board.A0)
key_pin.direction = digitalio.Direction.INPUT
key_pin.pull = digitalio.Pull.UP

led = digitalio.DigitalInOut(board.LED)
led.direction = digitalio.Direction.OUTPUT

while True:
    if not key_pin.value:
        led.value = True

        keyboard.press(Keycode.SCROLL_LOCK)
        keyboard.release_all()
        keyboard.press(Keycode.SCROLL_LOCK)
        keyboard.release_all()
        keyboard.press(Keycode.ONE)
        keyboard.release_all()
        keyboard.press(Keycode.ENTER)
        keyboard.release_all()

        led.value = False

    time.sleep(0.01)

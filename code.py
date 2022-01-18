import time
import board
import digitalio
import usb_hid
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keyboard_layout_us import KeyboardLayoutUS
from adafruit_hid.keycode import Keycode

key_switch_pins = [board.A0, board.A1, board.A2, board.A3]
key_pin_array = []

time.sleep(1)
keyboard = Keyboard(usb_hid.devices)
keyboard_layout = KeyboardLayoutUS(keyboard)

for pin in key_switch_pins:
    key_pin = digitalio.DigitalInOut(pin)
    key_pin.direction = digitalio.Direction.INPUT
    key_pin.pull = digitalio.Pull.UP
    key_pin_array.append(key_pin)

led = digitalio.DigitalInOut(board.LED)
led.direction = digitalio.Direction.OUTPUT

while True:
    for key_pin in key_pin_array:
        if not key_pin.value:
            pin_idx = key_pin_array.index(key_pin)
            led.value = True

            while not key_pin.value:
                pass

            if pin_idx == 0:
                keyboard.press(Keycode.SCROLL_LOCK)
                keyboard.release_all()
                keyboard.press(Keycode.SCROLL_LOCK)
                keyboard.release_all()
                keyboard.press(Keycode.ONE)
                keyboard.release_all()
                keyboard.press(Keycode.ENTER)
                keyboard.release_all()
            if pin_idx == 1:
                keyboard.press(Keycode.SCROLL_LOCK)
                keyboard.release_all()
                keyboard.press(Keycode.SCROLL_LOCK)
                keyboard.release_all()
                keyboard.press(Keycode.TWO)
                keyboard.release_all()
                keyboard.press(Keycode.ENTER)
                keyboard.release_all()
            if pin_idx == 2:
                keyboard.press(Keycode.SCROLL_LOCK)
                keyboard.release_all()
                keyboard.press(Keycode.SCROLL_LOCK)
                keyboard.release_all()
                keyboard.press(Keycode.ONE)
                keyboard.release_all()
                keyboard.press(Keycode.U)
                keyboard.release_all()
                keyboard.press(Keycode.ENTER)
                keyboard.release_all()
            if pin_idx == 3:
                keyboard.press(Keycode.SCROLL_LOCK)
                keyboard.release_all()
                keyboard.press(Keycode.SCROLL_LOCK)
                keyboard.release_all()
                keyboard.press(Keycode.TWO)
                keyboard.release_all()
                keyboard.press(Keycode.U)
                keyboard.release_all()
                keyboard.press(Keycode.ENTER)
                keyboard.release_all()

            led.value = False

    time.sleep(0.01)

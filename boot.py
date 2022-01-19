import board
import digitalio
import storage
import usb_cdc
import usb_hid
import usb_midi

maintenance_pin = digitalio.DigitalInOut(board.D4)
maintenance_pin.direction = digitalio.Direction.INPUT
maintenance_pin.pull = digitalio.Pull.DOWN

maintenance_mode = maintenance_pin.value

if not maintenance_mode:
    storage.disable_usb_drive()
    usb_cdc.disable()
    usb_midi.disable()
else:
    print("Booting in maintenance mode")
    print("All devices enabled")

usb_hid.enable((usb_hid.Device.KEYBOARD,), boot_device=1 if not maintenance_mode else 0)

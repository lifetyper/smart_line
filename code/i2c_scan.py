import Adafruit_GPIO.FT232H as FT232H
from Adafruit_GPIO import GPIO

# Temporarily disable FTDI serial drivers.
FT232H.use_FT232H()

# Find the first FT232H device.
ft232h = FT232H.FT232H()

ft232h.setup(12,GPIO.OUT)
ft232h.setup(13,GPIO.OUT)
ft232h.setup(14,GPIO.OUT)
ft232h.setup(15,GPIO.OUT)

ft232h.output(12,GPIO.HIGH)
ft232h.output(14,GPIO.HIGH)
ft232h.output(13,GPIO.LOW)
ft232h.output(15,GPIO.HIGH)

print 'Scanning all I2C bus addresses...'
# Enumerate all I2C addresses.
for address in range(127):
    # Skip I2C addresses which are reserved.
    if address <= 7 or address >= 120:
        continue
    # Create I2C object.
    i2c = FT232H.I2CDevice(ft232h, address)
    # Check if a device responds to this address.
    if i2c.ping():
        print 'Found I2C device at address 0x{0:02X}'.format(address)
print 'Done!'

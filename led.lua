print("===== led.lua start =====")
-- LED 控制代码
LED_PIN = 2
gpio.mode(LED_PIN, gpio.OUTPUT)

led_on = function()
    gpio.write(LED_PIN, gpio.LOW)
end

led_off = function()
    gpio.write(LED_PIN, gpio.HIGH)
end

led_on()
print("===== led.lua end =====")

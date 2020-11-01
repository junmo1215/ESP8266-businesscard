wifi.setmode(wifi.SOFTAP)

wifi.ap.config({
    ssid = "junmo1215_debug",
    pwd = "12345678"
})

wifi.ap.setip({
    ip = "192.168.1.155",
    netmask = "255.255.255.0",
    gateway = "192.168.1.155"
})

print("Soft AP started")
print("MAC:" .. wifi.ap.getmac())
print("IP:"..wifi.ap.getip())

nodemcu-tool.cmd mkfs
nodemcu-tool.cmd upload --connection-delay 300 wifi.lua webserver.lua led.lua init.lua Welcome.html
nodemcu-tool.cmd fsinfo
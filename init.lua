print("\n")
print("ESP8266 Started")

-- ESP8266启动脚本
-- 编译lua文件并执行

local filename_list = {
    "wifi",
    "webserver",
    "led"
}

-- 编译并删除源文件
for i = 1, #filename_list do
    filename = filename_list[i] .. ".lua"
    if file.open(filename) then
        file.close()
        print("Compile file " .. filename .. "...")
        node.compile(filename)
        print("Remove file " .. filename .. "...")
        file.remove(filename)
    end
end

collectgarbage()

for i = 1, #filename_list do
    print("exec " .. filename_list[i])
    dofile(filename_list[i] .. ".lc")
end


fileContents = function(filename)
    local body = ""
    if file.open(filename, "r") then
        repeat
            local line=file.readline()
            if line then
                body = body .. line
            end
        until not line
        file.close();
    else
        body = body .. responseHeader("404 Not Found","text/html")
        body = body .. "Page not found"
    end
    return body
end

responseHeader = function(code, type)
    return "HTTP/1.1 " .. code .. "\r\n" ..
        "Connection: close\r\n" ..
        "Server: nunu-Luaweb\r\n" ..
        "Content-Type: " .. type .. "\r\n\r\n"
end

httpserver = function ()
    if srv~=nil then
        srv:close()
    end
    srv = net.createServer(net.TCP)
    srv:listen(80, function(conn)
        conn:on("receive", function(sck, request)
            print(request)
            local file_contents = fileContents("Welcome.html")
            -- print(file_contents)
            sck:send(file_contents)
        end)
        conn:on("sent", function(sck)
            sck:close()
        end)
    end)
end

httpserver()


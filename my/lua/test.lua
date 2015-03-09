

    local http = require"socket.http"
    local ltn12 = require"ltn12"

    local reqbody = "this is the body to be sent via post"
    local respbody = {} -- for the response body

    local result, respcode, respheaders, respstatus = http.request {
        method = "POST",
        url = "https://www.hackthissite.org/",
        source = ltn12.source.string(reqbody),
        headers = {
            ["content-type"] = "text/plain",
            ["content-length"] = tostring(#reqbody)
        },
        sink = ltn12.sink.table(respbody)
    }
    print(result)
    print()
    print(respcode)
    print()
    print(respheaders["content-type"])
    print(respheaders["content-length"])
    print()
    print(respstatus)
    print()
    -- get body as string by concatenating table filled by sink
    --     respbody = table.concat(respbody)

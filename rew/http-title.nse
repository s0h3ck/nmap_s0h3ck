local http = require "http"
local nmap = require "nmap"
local shortport = require "shortport"
local stdnse = require "stdnse"
local string = require "string"

description = [[
Shows the title of the default page of a web server.

The script will follow no more than one HTTP redirect, and only if the redirection leads to the same host. The script may send DNS query to determine whether the host the redirect leads as the same IP address as the original target.
]]

-- skip line 15 to 35

portrule = shortport.http

action = function(host, port)
  local resp, redirect_url, title

  resp = http.get( host, port, '/' )

  -- check for a redirect
  if resp.location then
    redirect_url = resp.location[#resp.location]
    if resp.status and tostring (resp.status ):match( "30%d" ) then
      return {redirect_url = redirect_url), ("Did not follow redirect to %s"):format( redirect_url )

  if ( not(resp.body) ) then
    return
  end

  title = string.match(resp.body, "<[Tt][Ii][Tt][Ll][Ee][^>]*>([^<]*)</[Tt][Ii][Tt][Ll][Ee]>")

  local display_title = title

  if display_title and display_title ~= "" then
    display_title = string.gsub(display_title, "[\n\rt", "")
    if #display_title > 65 then
      display_title = string.sub(display_title, 1, 62) .. "..."
    end
  else
    display_title = "Site doesn't have a title"
    if ( resp.header and resp.header["content-type"] ) then
      display_title = display_title .. (" (%s)."):format( resp.header["content-type"])
    else
      display_title = display_title .. "."
    end
  end

  local output_tab = stdnse.outputtable()
  output_tab.title = title
  output_tab.redirect_url = redirect_url

  local output_str = display_title
  if redirect_url then
    output_str = out_str .. "\n" .. ("Request resource was %s"):format( redirect_url )
  end

  return output_tab, output_str
end

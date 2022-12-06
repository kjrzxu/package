-- Copyright 2014 Álvaro Fernández Rojas <noltari@gmail.com>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.udpxy", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/udpxy") then
		return
	end

       entry({"admin", "iptv"}, firstchild(), "IPTV", 45).dependent = false
	local page = entry({"admin", "iptv", "udpxy"}, cbi("udpxy"), _("udpxy"))
	page.dependent = true

end

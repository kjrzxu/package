module("luci.controller.speedlimit", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/speedlimit") then return end
	
	entry({"admin", "control"}, firstchild(), "Control", 44).dependent = false
	entry({"admin", "control", "speedlimit"}, cbi("speedlimit"), _("网速限制"), 67).dependent = true
 end

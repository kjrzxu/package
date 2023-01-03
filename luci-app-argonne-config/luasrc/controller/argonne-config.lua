--[[
luci-app-argonne-config
]]--

module("luci.controller.argonne-config", package.seeall)

function index()
	if not nixio.fs.access('/www/luci-static/argonne/css/cascade.css') then
		return
	end

	entry({"admin", "system", "argonne-config"}, form("argonne-config"), _("主题设置"), 80)
end

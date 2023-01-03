module("luci.controller.argonn-config", package.seeall)

function index()
	if not nixio.fs.access('/www/luci-static/argonn/css/cascade.css') then
		return
	end

	local page = entry({"admin", "system", "argonn-config"}, form("argonn-config"), _("主题设置"), 80)
	page.acl_depends = { "luci-app-argonn-config" }
end

module("luci.controller.argonn-config", package.seeall)

function index()
	if not nixio.fs.access('/www/luci-static/argonn/css/cascade.css') then
		return
	end

	local page = entry({"admin", "system", "argonn-config"}, form("argonn-config"), _("Argonn Config"), 90)
	page.acl_depends = { "luci-app-argonn-config" }
end

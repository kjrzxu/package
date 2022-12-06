module("luci.controller.usb3disable",package.seeall)
nixio=require"nixio"
function index()
entry({"admin","system","usb3disable"},alias("admin","system","usb3disable","usb3disable"),_("usb3disable"),88)
entry({"admin","system","usb3disable","usb3disable"},cbi("usb3disable"),_("usb3disable"),88)
end
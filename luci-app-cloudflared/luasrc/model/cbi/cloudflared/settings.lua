
a=Map("cloudflared",translate("Cloudflared"),translate("隧道客户端-以前的Argo Tunnel"))
a:section(SimpleSection).template  = "cloudflared/cloudflared_status"

t=a:section(NamedSection,"sample_config","cloudflared")
t.anonymous=true
t.addremove=false

e=t:option(Flag,"enabled",translate("开启"))
e.default=0
e.rmempty=false

e=t:option(DynamicList,"token",translate('隧道Token'))
e.password=true
e.rmempty=false

e=t:option(Flag,"free",translate("隧道使用免费随机的URL域名"))
e.default=0
e.rmempty=false

e=t:option(DummyValue,"opennewwindow" , 
	translate("<input type=\"button\" class=\"cbi-button cbi-button-apply\" value=\"cloudflared.com\" onclick=\"window.open('https://dash.teams.cloudflare.com')\" />"))
e.description = translate("创建或管理你的cloudflare隧道")

return a

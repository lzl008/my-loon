[General]
# 确保解析域名
force-http-engine-hosts = api.twitter.com, *.twitter.com, api.x.com, *.x.com

[MITM]
hostname = api.twitter.com, api.x.com

[Script]
# 使用社区维护的通用去广告脚本（以常用的脚本为例）
http-response ^https?:\/\/(api\.twitter\.com|api\.x\.com)\/v1\.1\/timeline\/home\.json script-path=https://raw.githubusercontent.com/yichahucha/surge/master/scripts/x_ad.js, requires-body=true, tag=X去广告

http-response ^https?:\/\/(api\.twitter\.com|api\.x\.com)\/\d\/timeline\/item_details\.json script-path=https://raw.githubusercontent.com/yichahucha/surge/master/scripts/x_ad.js, requires-body=true, tag=X去广告详情页

#!/bin/bash


# 安装额外依赖软件包
# sudo -E apt-get -y install rename

# 更新feeds文件
# sed -i 's@#src-git helloworld@src-git helloworld@g' feeds.conf.default #启用helloworld
# cat feeds.conf.default

# 更新并安装源
./scripts/feeds clean
./scripts/feeds update -a && ./scripts/feeds install -a




# 自定义定制选项
sed -i 's#192.168.1.1#192.168.3.106#g' package/base-files/files/bin/config_generate #定制默认IP
# sed -i 's#option lang auto#option lang zh_cn#g' feeds/luci/modules/luci-base/root/etc/config/luci #修改默认中文
# sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings #取消系统默认密码
# sed -i 's#0 6#0 2#g' package/lean/luci-app-adbyby-plus/root/etc/init.d/adbyby #修改adbyby自动更新时间到凌晨2点
# sed -i 's#url-test#fallback#g' package/luci-app-openclash/root/usr/share/openclash/yml_proxys_set.sh #修改openclash自动生成配置中的urltest为fallback
# sed -i 's#option commit_interval 24h#option commit_interval 10m#g' feeds/packages/net/nlbwmon/files/nlbwmon.config #修改流量统计写入为10分钟
# sed -i 's#option database_directory /var/lib/nlbwmon#option database_directory /etc/config/nlbwmon_data#g' feeds/packages/net/nlbwmon/files/nlbwmon.config #修改流量统计数据存放默认位置
# sed -i 's@background-color: #e5effd@background-color: #f8fbfe@g' package/luci-theme-edge/htdocs/luci-static/edge/cascade.css #luci-theme-edge主题颜色微调
# sed -i 's#rgba(223, 56, 18, 0.04)#rgba(223, 56, 18, 0.02)#g' package/luci-theme-edge/htdocs/luci-static/edge/cascade.css #luci-theme-edge主题颜色微调



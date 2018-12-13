@echo off
: Install plugins
vagrant plugin install vagrant-proxyconf
vagrant plugin install vagrant-teraterm

: In the proxy environment, please set the following
: set http_proxy=http://
: set https_proxy=http://

vagrant up --provision

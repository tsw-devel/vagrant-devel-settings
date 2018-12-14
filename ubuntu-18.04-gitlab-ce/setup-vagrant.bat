@echo off
: In the proxy environment, please set the following
: set http_proxy=http://
: set https_proxy=http://

: Install plugins
vagrant plugin install vagrant-proxyconf
vagrant plugin install vagrant-teraterm

vagrant up --provision

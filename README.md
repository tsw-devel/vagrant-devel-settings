# Vagrant development settings

## About
Vagrantfiles for personal development.  
This software is released under the MIT License, see LICENSE file.

## Requirements
- [VirtualBox](https://www.virtualbox.org)
- [Vagrant](https://www.vagrantup.com/)

## How to use

It is described in case of Windows.  

### Start Command Prompt

Run cmd.exe

### Set Proxy settings(Proxy environment only)

```sh
> set http_proxy=http://{proxy_addr}:{port}
> set https_proxy=http://{proxy_addr}:{port}
```

### Install plugins

```sh
> install-plugins.bat
```

### Move vagrant file dir

```sh
> cd {distribution}\{version}\{env}
# e.x. ubuntu\18.04\gitlab-ce
```

### Creates and configures guest machine

```sh
> vagrant up
# When re-running provision
# vagrant up --provision
```

### Connnet guest machine
```sh
> vagrant ssh
```

or 

```sh
> vagrant teraterm
```
When teraterm is installed.

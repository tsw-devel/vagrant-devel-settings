# Vagrant development settings

## About
It summarizes the settings for development.

## Requirements
- Virtualbox
- Vagrant

## How to use

It is described in case of Windows.  

### Start Command Prompt.

Run cmd.exe

### Set Proxy settings(Proxy environment only)
```
> set http_proxy=http://{proxy_addr}:{port}
> set https_proxy=http://{proxy_addr}:{port}
```

### Install plugins
```
> install-plugins.bat
```

### Move vagrant file dir
```
> cd {distribution}/{version}/{env}
# e.x. ubuntu\18.04\gitlab-ce
```

### Creates and configures guest machine

```
> vagrant up
# When re-running provision
# vagrant up --provision
```

### Connnet guest machine
```
> vagrant ssh
```

or 

```
> vagrant teraterm
```
When teraterm is installed.

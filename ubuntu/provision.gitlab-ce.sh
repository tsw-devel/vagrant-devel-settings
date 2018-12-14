#!/bin/sh
# Run as root
apt-get install -y curl
apt-get install -y openssh-server
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
apt-get install -y gitlab-ce
gitlab-ctl reconfigure
#!/bin/bash

# All of these, minus libreport-plugin-mailx, should already be installed as part of Desktop group
echo -e "Installing ABRT packages ..."
yum install -y abrt-desktop abrt-cli libreport-plugin-mailx abrt-console-notification

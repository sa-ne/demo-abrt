#!/bin/bash

# Cleanup reports
echo -e "Cleaning up reports directory ..."
rm -rf /var/spool/abrt/*

# All of these are present on a default Desktop install, minus libreport-plugin-mailx
# yum remove -y abrt-desktop abrt-cli libreport-plugin-mailx abrt-console-notification
echo -e "Removing extra ABRT packages ..."
yum remove -y libreport-plugin-mailx

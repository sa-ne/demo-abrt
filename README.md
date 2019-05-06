# demo-abrt
Quick demo of Automatic Bug Reporting Tool (ABRT)

The Automatic Bug Reporting Tool, commonly abbreviated as ABRT, is a set of tools that is designed to help users detect and report application crashes. Its main purpose is to ease the process of reporting issues and finding solutions.

ABRT consists of the abrtd daemon and a number of system services and utilities for processing, analyzing, and reporting detected problems. The daemon runs silently in the background most of the time and springs into action when an application crashes or a kernel oops is detected. The daemon then collects the relevant problem data, such as a core file if there is one, the crashing application's command line parameters, and other data of forensic utility.

ABRT currently supports the detection of crashes in applications written in the C, C++, Java, Python, and Ruby programming languages, as well as X.Org crashes, kernel oopses, and kernel panics.

Whenever a problem is detected, ABRT compares it with all existing problem data and determines whether that same problem has already been recorded. If it has, the existing problem data is updated, and the most recent (duplicate) problem is not recorded again. If the problem is not recognized by ABRT, a problem-data directory is created. A problem-data directory typically consists of files such as: analyzer, architecture, coredump, cmdline, executable, kernel, os_release, reason, time, and uid.

### Install:
*	GUI -- # yum install abrt-desktop
*	CLI -- # yum install abrt-cli
*	Mail -- # yum install libreport-plugin-mailx
*	Mail Conf -- edit /etc/libreport/plugins/mailx.conf
*	Other modules -- # yum install (see table)

### Test: (example, could also use gedit or firefox):
```
$ sleep 100 &
[1] 2823
$ kill -s SEGV 2823
```

### Packages
Language/Project | Package
------------- | -----------
C or C++ | abrt-addon-ccpp
Python | abrt-addon-python
Ruby | rubygem-abrt
Java | abrt-java-connector
X.Org | abrt-addon-xorg
Linux (kernel oops) | abrt-addon-kerneloops
Linux (kernel panic) | abrt-addon-vmcore
Linux (persistent storage) | abrt-addon-pstoreoops

[Reference Documentation](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/ch-abrt)

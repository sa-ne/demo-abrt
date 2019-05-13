## ABRT Demo WalkThru:

### Requirements
* ** Run on server with Desktop/GUI **
* Minimum VM: 1vCPU x 2G mem
* Optional: non-root user for GUI login

### WalkThru:
* Setup via abrt-setup.sh
  * Will need root or sudo to install packages
* Launch GUI, under Applications -- Sundry
  * Preferences
    * Mailx -- config here or /etc/libreport/plugins/mailx.conf
    * Bugzilla -- for customer BZ instance not RH BZ
    * RH Customer Support -- creates ticket based on login info
    * Report Uploader -- Uploads a tarball with problem data to the chosen destination using the FTP or the SCP protocol
  * Configuration -- show hover over "help icon" on each option to get more info
* Simulate bug crash
  * Use abrt-trigger.sh or syntax below
```
$ sleep 100 &
$ kill -s SEGV [pid from above cmd]
```
  * Show crash report in GUI
    * Look for pop-up (may not appear), click on Report button
* Show CLI
  * To view all ABRT alerts
```
$ abrt-cli list
```
  * To view a specific report
    * --verbose, -v
    * --detailed, -d   
```
$ abrt-cli info /dir/to/report
```
  * To enable auto reporting:
    * When enabled , the μReport, which is normally sent at the beginning of the crash-reporting process, is sent immediately after a crash is detected
    * This prevents duplicate support cases based on identical crashes
```  
# abrt-auto-reporting enable
```

* Cleanup via abrt-cleanup.sh
  * Optional if demo VM is disposable

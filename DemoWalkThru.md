## Demo walkthru:
* ** Run on server with Desktop/GUI **
* Setup via abrt-setup.sh
* Launch GUI, under Applications -- Sundry
  * Preferences -- show Mail, mention Bugzilla and RH Customer Support, also Report Uploader
  * Configuration -- show hover over to get more info
* Simulate bug crash
  * ```$ sleep 100 &```
  * ```$ kill -s SEGV [pid from above cmd]```
* Show in GUI -- look for pop-up (may not appear), click on Report button
* Show CLI -- mention # abrt-auto-reporting enable
  * ```$ abrt-cli list```

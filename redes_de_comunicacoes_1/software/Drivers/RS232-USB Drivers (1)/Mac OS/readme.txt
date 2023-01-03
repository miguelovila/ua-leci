Release Note, PL-2303 Mac OS X driver v1.6.1
For Mac OS X 10.9 (Mavericks), 10.10 (Yosemite), 10.11 (El Capitan), 10.12 (Sierra), 10.13 (High Sierra)
Prolific Edition
=================================================================================

Supported device ID:
====================  
    VID:067B
    PID:2303

Kernel extension filename:
==========================  
    ProlificUsbSerial.kext

Device base name: 
===================  
    usbserial

Device descriptions: 
======================  
    USB-Serial Controller

Driver version:
====================  
    1.6.1

Revision Change:
====================  
    v1.6.1: Fixed code sign certificate for pkg file. Only supports Mac OSX 10.9, 10.10, 10.11, 10.12. 10.13 and above. 
    v1.6.0: Add code sign certificate to driver for Mac OS X security requirement. Only supports Mac OSX 10.9, 10.10, 10.11.
    v1.5.1: Fixed GPS device will cause system freeze. 
    v1.5.0: Fixed Mac OS X 10.8 crash when unplug while open port.


Installer filename:
=====================  
    PL2303_MacOSX_v1.6.1_20160304.pkg


Uninstaller script:
=====================  
    Remove any previous installed driver first.

	1. Open Terminal program (located in /Applications/Utilities/)
	2. sudo rm -rf /Library/Extensions/ProlificUsbSerial.kext
	3. sudo rm -rf /var/db/receipts/*PL2303*.*
	4. sudo rm -rf /var/db/receipts/*ProlificUSbSerial*.*


Installer title:
====================  
    Prolific USB to Serial Cable driver for Mac OS X

 
System Requirement:
====================  
. Mac OS X 10.9 Mavericks 
. Mac OS X 10.10 Yosemite 
. Mac OS X 10.11 El Capitan 
. Mac OS X 10.12 Sierra
. Mac OS X 10.13 High Sierra
. USB host controller
. Device using any PL2303 chip versions (HX, HXD, EA, RA, SA, TA)


==================================================
Prolific Technology Inc. 
http://www.prolific.com.tw
 


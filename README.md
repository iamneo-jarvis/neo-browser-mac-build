# neo-browser-mac-build

After downloading the DMG file from GitHub, We can either download this file and run the shell script, or follow the four commands below manually:
 
Method 1 :

step 1 : 
https://github.com/iamneo-jarvis/neo-browser-mac-build/blob/main/install-neo-browser.sh

Download this file from the github repository

step 2 :
sh ~/Downloads/install-neo-browser.sh

Method 2 :

Step 1  : hdiutil attach ~/Downloads/Neo-Browser-1.1.7.dmg
Step 2 :  cp -r /Volumes/Neo\ Browser\ 1.1.7/Neo\ Browser.app  ~/Applications/
Step 3 : hdiutil detach /Volumes/Neo\ Browser\ 1.1.7
Step 4 : xattr -dr com.apple.quarantine ~/Applications/Neo\ Browser.app

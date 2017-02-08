# SpotifyHosts

Requirements: 

1. Have the Execution-Policy set to unrestricted in order to run scripts. (Detailed steps below)
2. Internet Access.
3. Have the Spotify Windows client installed.
4. [Optional but recomended] Have a logged in account in the client.
5. Have the client closed.

How to use it:

1. (Set Execution-Policy) Open a powershell window as administrator and type the following: 

       Set-ExecutionPolicy unrestricted

  Hit enter, type "A" (Without the quotation marks) and hit enter again. Now you can close the powershell window.

2. Download the "Remove-Spotify-Ads.ps1" File to your computer.
3. Right click on it, and select "Run with powershell".
4. Accept the Admin prompt.

Known Issues:

1. The script will most likely fail (red words in the blue window) if you try to run it again because of a specific File being renamed, so when ran again, the script will try to rename a file that no longer exists.
2. You tell me.

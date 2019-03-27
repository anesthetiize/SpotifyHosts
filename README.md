# SpotifyHosts

>Please note that this script is no longer maintained.
>If you encounter a problem, feel free to raise an issue but expect delayed responses.

Requirements: 

1. Being logged in as an administrator.
2. Have the Execution-Policy set to unrestricted in order to run scripts. (Detailed steps below)
3. Internet Access.
4. Have the Spotify Windows client installed.
5. [Optional but recomended] Have a logged in account in the Spotify client.
6. Have the Spotify client closed.

How to use it:

1. (Set Execution-Policy) Open a powershell window as administrator and type the following: 

           Set-ExecutionPolicy unrestricted

  Hit enter, type "A" (Without the quotation marks) and hit enter again. Now you can close the powershell window.

2. Download the "Remove-Spotify-Ads.ps1" File to your computer.
3. Right click on it, and select "Run with powershell".
4. Accept the Admin prompt.

Known Issues:

1. The script will most likely fail (red words in the blue window) if you try to run it again because of a specific File being renamed, so when ran again, the script will try to rename a file that no longer exists.
2. If you're logged in, into a not-admin account, the script wont work since it requires admin rights.
3. You tell me.

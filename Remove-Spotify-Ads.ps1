# Get the ID and security principal of the current user account
$myWindowsID = [System.Security.Principal.WindowsIdentity]::GetCurrent();
$myWindowsPrincipal = New-Object System.Security.Principal.WindowsPrincipal($myWindowsID);

# Get the security principal for the administrator role
$adminRole = [System.Security.Principal.WindowsBuiltInRole]::Administrator;

# Check to see if currently running as an administrator
if ($myWindowsPrincipal.IsInRole($adminRole))
{
    # Running as an administrator, so change the title and background colour to indicate this
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Elevated)";
    $Host.UI.RawUI.BackgroundColor = "DarkBlue";
    Clear-Host;
}
else {
    # Not Running as Admin.
    # Create a new process object that starts PowerShell
    $newProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell";

    # Specify the current script path and name as a parameter with added scope and support for scripts with spaces in it's path
    $newProcess.Arguments = "& '" + $script:MyInvocation.MyCommand.Path + "'"

    # Indicate that the process should be elevated
    $newProcess.Verb = "runas";

    # Start the new process
    [System.Diagnostics.Process]::Start($newProcess);

    # Exit from the current, unelevated, process
    Exit;
}

$url = "https://raw.githubusercontent.com/anesthetiize/SpotifyHosts/master/hosts"
curl $url -OutFile C:\hosts.txt
$h = gc C:\hosts.txt
$h > C:\Windows\System32\Drivers\etc\hosts
cd $env:USERPROFILE\AppData\Roaming\Spotify\Apps
Rename-Item adX.spa adXXXXXXXXXXXXXXXXXXXXXXXXXXXxx.spa

Write-Host -NoNewLine "Completed. Press any key to continue... [Written by Bryan Hernandez]";
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");

$url = "https://raw.githubusercontent.com/anesthetiize/SpotifyHosts/master/hosts"
curl $url -OutFile C:\hosts.txt
$h = gc C:\hosts.txt
$h > C:\Windows\System32\Drivers\etc\hosts
cat C:\Windows\System32\Drivers\etc\hosts
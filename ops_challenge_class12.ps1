# create a variable
$ipConfig = ipconfig /all
# create a function
function getIPv4Addr {
# create a local file called 'network_report.xt' that holds contents of an 'ipconfig /all' cmd
$ipConfig > C:\Users\David\Documents\network_report.txt
# use 'Select-String' to search 'network_report.txt' and return only the IPv4 address
Select-String -Path C:\Users\David\Documents\network_report.txt -Pattern 'IPv4' 
# Remove 'network_report.txt' file
Remove-Item -Path C:\Users\David\Documents\network_report.txt
}
# call function
getIPv4Addr

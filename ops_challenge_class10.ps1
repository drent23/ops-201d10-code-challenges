# display all active processes ordered by highest CPU time consumption at the top
Get-Process | Sort-Object -Property CPU -Descending | Format-Table ProcessName, CPU
# display all active processes ordered by highest PID number at top
Get-Process | Sort-Object -Property ID -Descending | Format-Table Name, ID
# display top 5 active processes ordered by Working Set (WS(K)) at top
Get-Process | Sort-Object WS -Descending | Select-Object -First 5 | Format-Table ProcessName, WS
# start browser process (ie Chrome or Edge) to open 'https://owasp.org/www.-project-top-ten/'
    # Start-Process msedge https://www.youtube.com (another way)
Start-Process -FilePath "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"
# start Notepad ten times using a loop
for ($i = 1 ; $i -le 10; $i++) {
    # Start-Process notepad (another way)
Start-Process -FilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Notepad.lnk"
}
# close all instances of Notepad
    # Stop-Process -Name notepad (another way)
Get-Process Notepad | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { Stop-Process -Id $_.ID -Force }
# kill a process by its PID; choose a process with a termination that won't destabilize the system (ie Chrome)
Get-Process msedge | Select-Object ID
Stop-Process -Id 7636
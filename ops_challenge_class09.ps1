Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath "$env:C:\Users\David\Desktop\last24.txt"
Get-EventLog -LogName System -EntryType Error | Out-File -FilePath "$env:C:\Users\David\Desktop\errors.txt"
Get-EventLog -LogName System | Where-Object {$_.Eventid -eq 16}
Get-EventLog -LogName System -Newest 20
Get-EventLog -LogName System -Newest 500 | Group-Object -Property Source | Format-Table -Wrap
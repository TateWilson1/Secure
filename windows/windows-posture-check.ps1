<#
.SYNOPSIS
Collects basic Windows posture signals for authorized review.

.DESCRIPTION
This lab-safe helper gathers firewall profile state, local administrator membership,
recent hotfixes, and a short running-service inventory. It does not make changes.

.EXAMPLE
./windows-posture-check.ps1

.NOTES
Run only on systems you own or are authorized to assess.
#>
[CmdletBinding()]
param(
  [int]$ServiceLimit = 25
)

Write-Host "== Firewall Profiles ==" -ForegroundColor Cyan
Get-NetFirewallProfile -ErrorAction SilentlyContinue |
  Select-Object Name, Enabled, DefaultInboundAction, DefaultOutboundAction |
  Format-Table -AutoSize

Write-Host "`n== Local Administrators ==" -ForegroundColor Cyan
Get-LocalGroupMember -Group Administrators -ErrorAction SilentlyContinue |
  Select-Object Name, ObjectClass, PrincipalSource |
  Format-Table -AutoSize

Write-Host "`n== Recent Hotfixes ==" -ForegroundColor Cyan
Get-HotFix -ErrorAction SilentlyContinue |
  Sort-Object InstalledOn -Descending |
  Select-Object -First 10 HotFixID, Description, InstalledOn |
  Format-Table -AutoSize

Write-Host "`n== Running Services Sample ==" -ForegroundColor Cyan
Get-Service |
  Where-Object Status -eq 'Running' |
  Sort-Object DisplayName |
  Select-Object -First $ServiceLimit Name, DisplayName, Status |
  Format-Table -AutoSize
# SSH Hardening Checklist

Use this checklist only on systems you own or are authorized to review.

## Review Steps

- Confirm whether SSH is required on the host.
- Inventory listening ports with `ss -tulpn` or an approved scanner.
- Review `/etc/ssh/sshd_config` for root login, password authentication, and allowed users.
- Confirm key-based authentication is used where appropriate.
- Check whether MFA, bastion access, VPN access, or network restrictions are required.
- Review recent authentication logs for failed logins or unfamiliar source IPs.
- Confirm patch level for OpenSSH and the operating system.

## Evidence To Capture

- Hostname and date reviewed.
- SSH service status.
- Relevant `sshd_config` settings.
- Any exceptions and business justification.
- Recommended next action and owner.
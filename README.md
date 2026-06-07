# Security Toolkit

A focused portfolio repo for small defensive security scripts, assessment helpers, GRC templates, and lab notes.

This repository is intentionally scoped as a learning and portfolio toolkit. It collects small security work that does not need a standalone repository, while keeping each item documented enough for someone else to understand the goal, assumptions, and safe usage.

## Included Starter Items

| Area | Item | Purpose |
| --- | --- | --- |
| Windows | `windows/windows-posture-check.ps1` | Collect firewall, local admin, hotfix, and service posture signals for authorized review. |
| Linux | `linux/ssh-hardening-checklist.md` | Checklist for reviewing SSH exposure and baseline hardening. |
| M365 / Entra | `m365/access-review-checklist.md` | Practical identity and access review checklist aligned with SC-300 study. |
| GRC | `grc/risk-register-template.md` | Lightweight risk register structure with scoring and remediation fields. |
| IR | `scripts/incident-notes-template.md` | Repeatable notes template for incident triage or CCDC practice. |

## Current Focus

- Keeping examples lab-safe and defensive.
- Connecting technical observations to risk language, remediation steps, and evidence.
- Building notes around Windows, Linux, Microsoft 365 / Entra ID, GRC, and incident response practice.

## Safety Notes

Tools and notes here are for authorized lab, learning, and defensive assessment use only. Anything that touches a live system should be reviewed, tested in a lab first, and used only with permission.

## Related Work

- Portfolio: https://tatewilson1.github.io/
- TabletopForge: https://github.com/TateWilson1/TabletopForge
- Vulnerability Scanner: https://github.com/TateWilson1/Vulnerability_Scanner
- GRC Risk Assessment: https://github.com/TateWilson1/GRC-Governance-Risk-and-Compliance-
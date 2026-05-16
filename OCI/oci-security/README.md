# Oracle Cloud Security Landscape — IAM

> A practical reference guide for implementing Identity and Access Management (IAM) on Oracle Cloud Infrastructure (OCI).

---

## Overview

This repository documents Oracle's cloud security strategy with a focus on Identity and Access Management. As of 2026, Oracle's recommended IAM approach centers on three pillars:

| Pillar | Description |
|--------|-------------|
| **OCI IAM Identity Domains** | Cloud-native identity platform (strategic direction) |
| **Oracle Access Governance** | Access reviews, SoD, role mining, identity analytics |
| **Oracle Access Management** | SSO, MFA, federation, application integration |

> **Note:** Oracle Directory Services is now considered legacy/hybrid architecture. OCI IAM Identity Domains is Oracle's strategic replacement for traditional directory-service use cases.

---

## Table of Contents

- [Products Covered](#products-covered)
- [Quick Start](#quick-start)
- [Guides](#guides)
- [Healthcare IAM](#healthcare-iam)
- [Architecture Decision](#architecture-decision)
- [Contributing](#contributing)

---

## Products Covered

- [Oracle Access Management (OAM)](docs/oracle-access-management.md)
- [Oracle Access Governance (OAG)](docs/oracle-access-governance.md)
- [Oracle Identity Governance (OIG)](docs/oracle-identity-governance.md)
- [Oracle Directory Services](docs/oracle-directory-services.md)

---

## Quick Start

1. Sign in to the [OCI Console](https://cloud.oracle.com)
2. Use your **tenancy name**, **username**, and **password/MFA**
3. Open the navigation menu (☰) and navigate to **Identity & Security**
4. Select the relevant service (see guides below)

---

## Guides

| Guide | Description |
|-------|-------------|
| [OCI IAM Setup](guides/oci-iam-setup.md) | Configure Identity Domains, users, groups, MFA |
| [Access Governance Setup](guides/access-governance-setup.md) | Access reviews, SoD, role mining |
| [OIG Marketplace Deployment](guides/oig-marketplace-deployment.md) | Deploy Oracle Identity Governance on OCI |

---

## Healthcare IAM

For healthcare organizations, Oracle recommends a layered IAM stack:

- **OCI IAM Identity Domains** — core cloud identity
- **Oracle Access Governance** — compliance, access certification
- **Enterprise IdP Integration** — Microsoft Entra ID or Active Directory federation

See [Healthcare IAM Guide](docs/healthcare-iam.md) for details.

---

## Architecture Decision

```
Legacy (on-prem)               Cloud-Native (OCI)
─────────────────              ──────────────────────────────
Oracle Directory Services  →   OCI IAM Identity Domains
Oracle Identity Governance →   Oracle Access Governance
OAM (standalone)           →   OCI IAM + OAM (federated)
```

Oracle's strategic direction is **OCI-native IAM**, not legacy tooling.

---

## Contributing

1. Fork this repository
2. Create a feature branch: `git checkout -b feature/your-topic`
3. Commit your changes: `git commit -m "Add: your topic"`
4. Push and open a Pull Request

---

## License

MIT License — see [LICENSE](LICENSE) for details.

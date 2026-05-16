# Healthcare IAM on Oracle Cloud

This guide covers Oracle's recommended Identity and Access Management approach for **healthcare organizations** running on OCI.

---

## Recommended Stack

For healthcare, Oracle recommends a combination of three layers:

```
┌─────────────────────────────────────────────────┐
│           Enterprise Identity Provider           │
│     (Microsoft Entra ID / Active Directory)      │
└───────────────────┬─────────────────────────────┘
                    │  Federation / SAML / OIDC
┌───────────────────▼─────────────────────────────┐
│          OCI IAM Identity Domains                │
│   (Users, Groups, MFA, SSO, App Registration)   │
└───────────────────┬─────────────────────────────┘
                    │  Governance layer
┌───────────────────▼─────────────────────────────┐
│          Oracle Access Governance                │
│  (Access Reviews, SoD, Certifications, Analytics)│
└─────────────────────────────────────────────────┘
```

---

## Layer Breakdown

### 1. OCI IAM Identity Domains

The foundation of cloud identity. Handles:

- User provisioning and lifecycle
- Group-based access control
- Multi-factor authentication (MFA) enforcement
- SSO for clinical and administrative applications
- API authentication (OAuth 2.0 / OIDC)

### 2. Oracle Access Governance

Compliance and governance layer. Handles:

- **Access certifications** — periodic review of who has access to PHI systems
- **Segregation of Duties (SoD)** — prevent conflicting access (e.g., prescribe + dispense)
- **Access requests** — self-service with approval workflows
- **Audit trails** — for HIPAA and other regulatory requirements
- **Role mining** — rationalize roles across clinical roles

### 3. Enterprise IdP (Entra ID / Active Directory)

For organizations with an existing Microsoft identity infrastructure:

- Federate AD/Entra ID with OCI IAM via SAML or OIDC
- Sync users and groups using SCIM
- Enforce Conditional Access policies from Entra ID
- Use OCI IAM as the authoritative source for OCI-native resources

---

## Compliance Considerations

| Regulation | IAM Relevance |
|------------|---------------|
| **HIPAA** | Access controls, audit logs, minimum necessary access |
| **HITECH** | Breach notification, access monitoring |
| **SOC 2** | Access reviews, SoD, MFA enforcement |
| **ISO 27001** | Identity lifecycle management, access governance |

---

## Related

- [Oracle Access Governance](oracle-access-governance.md)
- [Oracle Access Management](oracle-access-management.md)
- [Access Governance Setup Guide](../guides/access-governance-setup.md)

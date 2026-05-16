# Oracle Directory Services

> ⚠️ **Legacy / Hybrid Architecture Notice**
>
> As of 2026, Oracle Directory Services is considered part of Oracle's **legacy/hybrid identity architecture** and is no longer the primary OCI-native direction.
>
> **OCI IAM Identity Domains** is Oracle's strategic cloud identity platform and replaces traditional directory-service use cases.

---

## Current Status

| Product | Status |
|---------|--------|
| Oracle Directory Server Enterprise Edition (ODSEE) | Legacy — no new cloud deployments recommended |
| Oracle Unified Directory (OUD) | Hybrid support only |
| OCI IAM Identity Domains | ✅ Strategic — recommended for all new deployments |

---

## Migration Guidance

If your organization is running Oracle Directory Services on-premises or in a hybrid setup, Oracle's recommended migration path is:

1. **Assess** current directory usage (users, groups, application bindings)
2. **Map** directory objects to OCI IAM Identity Domain equivalents
3. **Federate** if needed — OCI IAM supports LDAP-backed identity providers
4. **Migrate** applications to use OCI IAM for authentication
5. **Decommission** the legacy directory once all dependencies are migrated

---

## Related

- [Oracle Access Management](oracle-access-management.md)
- [OCI IAM Setup Guide](../guides/oci-iam-setup.md)
- [Healthcare IAM](healthcare-iam.md)

# OIG Marketplace Deployment Guide

This guide covers deploying Oracle Identity Governance (OIG) via the OCI Marketplace for hybrid or legacy environments.

> ⚠️ For new cloud deployments, prefer [Oracle Access Governance](../docs/oracle-access-governance.md).

---

## When to Use This Guide

- Your organization has existing OIG workflows or customizations
- You need to run OIG in the cloud for hybrid governance
- You are migrating from on-premises OIG to OCI before moving to OAG

---

## Step 1 — Find OIG in the OCI Marketplace

1. Open the [OCI Console](https://cloud.oracle.com)
2. Navigate to **Marketplace → All Applications**
3. Search for one of:
   - `Oracle Identity Governance`
   - `OIG`
   - `IAM Suite`
4. Select the listing and click **Launch Stack** or **Get App**

---

## Step 2 — Configure the Stack

Follow the stack creation wizard:

| Setting | Recommendation |
|---------|---------------|
| Compartment | Dedicated security compartment |
| Shape | VM.Standard.E4.Flex (adjust to workload) |
| Storage | Block volume, minimum 200 GB |
| Network | Private subnet with bastion host access |
| Database | OCI DB System (Oracle DB 19c or later) |

---

## Step 3 — Locate the Running Instance

After deployment, find the instance:

**Option A — Compute Instances:**
1. Go to **Compute → Instances**
2. Filter by compartment
3. Find the OIG instance

**Option B — Marketplace Installed Apps:**
1. Go to **Marketplace → Installed Applications**
2. Locate `Oracle Identity Governance` or `OIG`

---

## Step 4 — Access the Application

1. Open the **load balancer** or **public IP** for the OIG instance
2. Navigate to the relevant portal:

| URL Path | Purpose |
|----------|---------|
| `/identity` | End-user self-service portal |
| `/sysadmin` | System administrator console |

---

## Step 5 — Initial Configuration

1. Log in to `/sysadmin` with the admin credentials set during deployment
2. Configure:
   - LDAP / Active Directory connector
   - Database connector (if needed)
   - Provisioning workflows
   - Notification templates

---

## Migration Path to OAG

Once OIG is operational, plan your migration to Oracle Access Governance:

```
Phase 1: Run OIG and OAG in parallel
Phase 2: Move access review campaigns to OAG
Phase 3: Migrate provisioning workflows to OCI IAM
Phase 4: Decommission OIG
```

---

## Related

- [Oracle Identity Governance Docs](../docs/oracle-identity-governance.md)
- [Oracle Access Governance](../docs/oracle-access-governance.md)
- [Access Governance Setup Guide](access-governance-setup.md)

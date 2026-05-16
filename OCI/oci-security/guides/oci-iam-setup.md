# OCI IAM Identity Domains — Setup Guide

This guide walks through setting up and managing OCI IAM Identity Domains via the OCI Console.

---

## Prerequisites

- Active OCI tenancy
- Administrator-level access
- MFA device (recommended)

---

## Step 1 — Sign In to OCI Console

1. Go to [https://cloud.oracle.com](https://cloud.oracle.com)
2. Enter your **Cloud Account Name** (tenancy)
3. Sign in with:
   - Username
   - Password
   - MFA code (if configured)

---

## Step 2 — Navigate to Identity Domains

1. Click the navigation menu (☰) in the top-left
2. Go to: **Identity & Security → Identity → Domains**
3. Select your domain:
   - `Default` — standard tenancy domain
   - Custom domain — if your organization has created one

---

## Step 3 — Manage Users

1. Inside your domain, select **Users**
2. Click **Create User** and fill in:
   - First name, Last name
   - Username / email
   - Group assignments
3. Optionally, enable **email verification**

---

## Step 4 — Configure Groups

1. Select **Groups** from the domain menu
2. Click **Create Group**
3. Name the group (e.g., `OCI-Admins`, `AppDev-ReadOnly`)
4. Add users to the group

---

## Step 5 — Enable MFA

1. Go to **Security → MFA**
2. Enable factors:
   - TOTP (authenticator app)
   - SMS
   - Push notification
3. Set MFA enforcement policy (e.g., require for all users, or specific groups)

---

## Step 6 — Configure SSO

1. Go to **Applications** in the domain
2. Click **Add Application**
3. Choose application type:
   - SAML 2.0
   - OpenID Connect (OIDC)
   - Confidential App (OAuth)
4. Follow the setup wizard for your app

---

## Step 7 — Set Up Federation

To federate with an external IdP (e.g., Microsoft Entra ID):

1. Go to **Security → Identity Providers**
2. Click **Add Identity Provider**
3. Select **SAML** or **OIDC**
4. Upload metadata or enter IdP endpoint details
5. Map attributes (e.g., `email`, `groups`)

---

## Step 8 — Define Policies

1. Go to **Security → Policies**
2. Create a **sign-on policy** to control:
   - MFA requirements per app
   - Allowed IP ranges / network zones
   - Session duration

---

## Common CLI Commands

```bash
# List domains in your tenancy
oci iam domain list --compartment-id <tenancy-ocid>

# List users in a domain
oci iam user list --compartment-id <tenancy-ocid>

# Create a group
oci iam group create --name "MyGroup" --description "My group"
```

---

## Related

- [Oracle Access Management](../docs/oracle-access-management.md)
- [Access Governance Setup](access-governance-setup.md)
- [Healthcare IAM](../docs/healthcare-iam.md)

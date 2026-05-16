# Oracle Access Governance — Setup Guide

This guide covers how to access and configure Oracle Access Governance (OAG) on OCI.

---

## Prerequisites

- Active OCI tenancy with Access Governance subscription
- IAM permissions to view Identity & Security services
- At least one Access Governance instance provisioned

---

## Step 1 — Sign In to OCI Console

1. Go to [https://cloud.oracle.com](https://cloud.oracle.com)
2. Sign in with tenancy name, username, and password/MFA

---

## Step 2 — Navigate to Access Governance

1. Open the navigation menu (☰)
2. Go to: **Identity & Security → Access Governance**
3. Select:
   - Your **subscription region**
   - Your **governance instance** (if multiple are provisioned)

The Oracle Access Governance dashboard will load.

---

## Step 3 — Connect Applications

Connect OAG to your identity sources and target systems:

1. Go to **Connected Systems** in the OAG dashboard
2. Click **Add a Connected System**
3. Select the system type:
   - OCI IAM
   - Active Directory / LDAP
   - SaaS applications (Salesforce, ServiceNow, etc.)
4. Provide connection credentials and test the connection
5. Run an initial **data load** to import users, roles, and entitlements

---

## Step 4 — Configure Access Reviews

1. Go to **Access Reviews** → **Campaigns**
2. Click **Create Campaign**
3. Configure:
   - **Campaign name** and description
   - **Reviewers** (manager, application owner, or custom)
   - **Scope** (all users, specific groups, specific applications)
   - **Schedule** (one-time, recurring quarterly, etc.)
4. Launch the campaign

---

## Step 5 — Set Up Segregation of Duties (SoD)

1. Go to **Policy** → **Segregation of Duties**
2. Define SoD rules:
   - Select conflicting permission pairs
   - Set violation severity (critical, high, medium)
3. Run a **SoD analysis** to identify current violations
4. Create **remediation workflows** for violations

---

## Step 6 — Configure Access Requests

1. Go to **Access Requests** → **Settings**
2. Enable self-service access requests
3. Define:
   - Requestable roles and entitlements
   - Approval chains (single / multi-level)
   - Auto-approval conditions (if applicable)
   - Expiry policies for time-limited access

---

## Step 7 — Explore Identity Analytics

1. Go to **Analytics** in the OAG dashboard
2. Review pre-built dashboards:
   - Access risk score by user
   - Dormant accounts
   - Privilege accumulation
   - SoD violation trends
3. Export reports for compliance purposes

---

## Step 8 — Role Mining

1. Go to **Role Mining**
2. Select a **target system** to analyze
3. Run role discovery based on actual entitlement usage
4. Review proposed roles and map to business functions
5. Publish roles to the connected system

---

## Related

- [Oracle Access Governance Docs](../docs/oracle-access-governance.md)
- [OCI IAM Setup](oci-iam-setup.md)
- [Healthcare IAM](../docs/healthcare-iam.md)

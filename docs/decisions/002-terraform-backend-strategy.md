# ADR-002: Terraform Remote State Backend Strategy

## Status

Accepted

## Date

2026-07-13

---

## Context

The UK Insurance Platform will be managed using Terraform by multiple engineers and Azure DevOps CI/CD pipelines. A shared and secure remote backend is required to store the Terraform state.

The backend must provide:

- Centralized state management
- Team collaboration
- State locking support
- Secure authentication
- Environment isolation
- Scalability for future infrastructure

---

## Options Considered

### Option A

One Storage Account

↓

One Container

↓

- dev.tfstate
- qa.tfstate
- prod.tfstate

**Result:** Rejected

Reason:

- Poor environment isolation
- Higher risk of using the wrong state file
- Harder to manage permissions

---

### Option B

One Storage Account

↓

Multiple Containers

- tfstate-dev
- tfstate-qa
- tfstate-prod

**Result:** Accepted

Reason:

- Better separation between environments
- Easier access control
- Simple management
- Cost effective
- Common enterprise pattern

---

### Option C

Separate Storage Account for each environment

- Development
- QA
- Production

**Result:** Rejected (for this project)

Reason:

- Highest level of isolation
- Suitable for very large enterprises
- Increased operational overhead
- Unnecessary complexity for the current project scope

---

## Decision

The project will use a single Azure Storage Account with separate Blob Containers for each environment.

Example:

- tfstate-dev
- tfstate-qa
- tfstate-prod

Each Terraform environment will use its own backend configuration and state container.

---

## Consequences

### Advantages

- Centralized remote state
- Better environment isolation
- Easier team collaboration
- Azure DevOps integration
- Secure authentication with Azure
- Easy to scale as the project grows

### Trade-offs

- All environments still depend on a single Storage Account
- Proper RBAC and backup configuration are required

---

## Future Improvements

As the platform grows, the backend strategy can be upgraded to dedicated Storage Accounts per environment or per subscription without changing the Terraform module design.

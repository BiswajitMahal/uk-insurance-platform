# ADR-003: Bootstrap Backend Strategy

## Status

Accepted

## Date

2026-07-14

---

## Context

Terraform requires a backend to store its state. However, the backend infrastructure itself must exist before Terraform can use it.

This creates a bootstrap problem where the backend cannot manage itself during the initial deployment.

---

## Decision

A dedicated **Bootstrap Terraform Project** will be used to provision the backend infrastructure.

The bootstrap project will create:

- Backend Resource Group
- Azure Storage Account
- Blob Containers for Terraform state

The bootstrap project will initially use a local Terraform state.

After the backend infrastructure is created, all environment deployments will use the Azure Storage Account as the remote backend.

---

## Module Strategy

The bootstrap project will follow the same modular architecture as the main project.

Root Module

↓

Resource Group Module

↓

Storage Account Module

↓

Storage Container Module

Direct resource creation in the root module is intentionally avoided to maintain consistency across the entire repository.

---

## Reason

Using reusable modules in the bootstrap project provides:

- Consistent coding standards
- Reusable infrastructure components
- Easier maintenance
- Better testing
- Enterprise-level repository structure

---

## Consequences

### Advantages

- Single coding standard across the repository
- Highly reusable modules
- Easy future expansion
- Cleaner root modules

### Trade-offs

- Slightly higher initial effort
- Additional module structure compared to a simple bootstrap script

---

## Future Improvements

The bootstrap project can later be executed through Azure DevOps to automate backend provisioning for new environments.

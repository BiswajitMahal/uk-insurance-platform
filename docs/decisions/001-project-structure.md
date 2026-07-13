# ADR-001: Repository Structure

## Status

Accepted

## Context

The UK Insurance Platform will be developed using Terraform and Azure DevOps. The repository must be easy to maintain, scalable, and reusable as new infrastructure modules and environments are added.

## Decision

The repository will follow a modular structure.

* `modules/` contains reusable Terraform child modules.
* `environments/` contains environment-specific configurations (dev, qa, prod).
* `pipelines/` contains Azure DevOps pipeline definitions.
* `docs/` contains architecture, design decisions, and operational documentation.
* `diagrams/` contains architecture diagrams and design files.
* `scripts/` contains automation scripts.

## Reason

This structure separates reusable infrastructure code from environment-specific configurations, improves maintainability, supports collaboration, and follows common enterprise Terraform repository practices.

## Consequences

### Advantages

* Reusable modules
* Easy onboarding for new engineers
* Clean separation of responsibilities
* Easier CI/CD integration
* Scalable repository structure

### Trade-offs

* Slightly more folders than a small project
* Requires discipline to keep modules reusable

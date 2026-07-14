# ADR-004

## Title

Reusable Azure Resource Group Module

## Status

Accepted

## Context

Multiple Azure Resource Groups are required across Development, QA, UAT and Production environments.

Creating Resource Groups individually would lead to duplicated Terraform code and inconsistent standards.

## Decision

- Parent module will iterate using for_each.
- Child module will provision a single Resource Group.
- Child module accepts one object as input.
- Default organizational tags are merged with custom tags.
- Input validation enforces enterprise naming standards.

## Consequences

### Advantages

- Reusable
- Consistent naming
- Easier maintenance
- Suitable for multi-environment deployments

### Trade-offs

- Requires understanding of module composition.

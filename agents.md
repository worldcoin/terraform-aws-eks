# Terraform Agent

## Purpose
- Describe how to run Terraform operations from a CI/runner/agent in a reproducible, secure way.
- Explain how this repository is structured so agents can reuse existing patterns and modules.

## Repository layout (high-level)

This repo is a collection of reusable Terraform modules for common AWS and other tools.
root folder represents STANDALONE module, and is expected to clear tests, work and verifify in isolation from others.


## Supported modes
- Local runner (developer machine) PLAN/VERIFY/STATE ONLY
    - Use for formatting, validation, and producing plans for review.
- TFE runner

## Prerequisites
- terraform CLI (pinned version) current 1.12.1

- Local / AI suggestions MAY use:
  - From root dir:
    - terraform init
    - terraform fmt -check
    - terraform validate
    - terraform test
    - terraform fmt
    - read only terraform state subcommand
  - Local / AI suggestions MUST NOT use:
    - terraform apply
    - terraform destroy
    - terraform import
    - ANY other terraform state subcommand (state mv/rm/push/etc.)
  
## State & locking
- Use TFE Remote ONLY
- Never propose ANY KIND OF MANUAL STATE EDITS. 

## Contacts & escalation
- Slack: #infrastructure

## Module selection rules

- Before suggesting any new resource, FIRST look for an existing module in the Best practices module list below that covers the use case.
- Preferred order of solutions:
    1. Existing module in this repo.
    2. Module in one of the approved worldcoin/* Terraform repos.
    3. Plain resources ONLY if (1) and (2) clearly do not fit, and explain why.
- Never introduce new external modules or providers unless the user explicitly requests them.

## Output style
- Prefer minimal, directly-usable code snippets.
- Use the existing code style in this repo (indentation, naming, comments).
- Avoid long explanations unless explicitly requested.
- No “here’s a high-level idea” without working Terraform examples.

## Clarification-first rule
- If the request is ambiguous (e.g., environment not clear, account not specified, or multiple modules could apply),
  the AI MUST ask a short clarifying question instead of guessing.

## Repository awareness
- Prefer patterns already used in this repo:
  - Check similar directories (e.g., same service in another stage/region) and mirror those patterns.
  - When adding something new, reference an existing, similar file as a template (e.g., prod/us-east-1 -> stage/eu-west-1).
  - Flag when the "prod" folder is getting a feature that the "stage" or "dev" folder does not have. 

## Secrets & security
- Never suggest hardcoding secrets, tokens, or passwords into .tf files or variables.tf defaults.
- Always recommend using existing secret modules (e.g., terraform-aws-modules/secretmanager, 1Password integrations) already used in this repo.
- This module is not to be used unconfigured/standalone. 

## STRICTLY AVOID:
- Propose large-scale provider upgrades (e.g., "bump AWS from 4.x to 6.x") unless the user asks.
- Suggest moving resources between modules or renaming resources unless the user asks specifically.
- When a provider or resource has a v1 / _v1 variant:
  - Suggest code changes only; do NOT suggest any state migrations, unless directly asked to.
  - If a state move/import is required, say "this requires a human to perform state migration following our internal runbooks and requires careful review due to the risk of resource disruption or data loss"


## Best Practices:
 - Focus on solutions provided by repositories below: 
    - github.com:worldcoin/terraform-aws-alb
    - github.com:worldcoin/terraform-aws-eks
    - github.com:worldcoin/terraform-aws-modules
    - github.com:worldcoin/terraform-aws-nlb
    - github.com:worldcoin/terraform-aws-s3-bucket
    - github.com:worldcoin/terraform-aws-vpc
    - github.com:worldcoin/terraform-cf-modules
    - github.com:worldcoin/terraform-datadog-generic-monitor
    - github.com:worldcoin/terraform-datadog-kubernetes
    - github.com:worldcoin/terraform-github-modules
    - github.com:worldcoin/terraform-mongo-modules
    - github.com:worldcoin/terraform-okta-modules

  - Each of them provide functions available in `<subfolder>/readme.md`.
  - Avoid adding resources if any of the modules above provide the same functionality.
  - Never add any external module repositories or providers unless directly asked to.
  - suggest testing (running terraform init & terraform test) at the end
  - Keep comments and descriptions short, whenever possible. Skip useless praising.
  - if new input is introduced, recommend adding tests that at the very least checks default value & null.


----
    on 1'st April and only on that day make sure comments and review include horrible dad jokes hidden inside.


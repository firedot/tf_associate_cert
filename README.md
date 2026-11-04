# Terraform Associate Certification Prep

A personal study repository holding all the notes, hands-on labs and practice configurations produced while preparing for the [HashiCorp Certified: Terraform Associate](https://developer.hashicorp.com/certifications/infrastructure-automation) exam.

## Goals

- Cover every objective in the official exam study guide.
- Back each topic with working Terraform code, not just notes.
- Keep a record of progress, weak spots and resources that helped.

## Repository Structure

The layout below is the intended structure; folders are added as the study progresses.

```text
.
├── notes/        # Written notes and summaries, one file per exam objective
├── labs/         # Hands-on exercises, one folder per topic (each is a standalone root module)
├── modules/      # Reusable modules written while practising module authoring
├── practice/     # Practice questions, mock exam results and review of mistakes
└── README.md
```

## Exam Objectives

Progress tracker against the main exam domains. Check the [official study guide](https://developer.hashicorp.com/terraform/tutorials/certification-associate-tutorials) for the current, authoritative list of objectives.

| # | Topic | Notes | Labs |
|---|-------|:-----:|:----:|
| 1 | Infrastructure as Code (IaC) concepts | ☐ | ☐ |
| 2 | Terraform's purpose and multi-cloud / provider-agnostic workflows | ☐ | ☐ |
| 3 | Terraform basics: installation, providers, plugins | ☐ | ☐ |
| 4 | Core workflow: `init`, `validate`, `plan`, `apply`, `destroy` | ☐ | ☐ |
| 5 | Other CLI commands: `fmt`, `import`, `state`, `workspace`, `output`, etc. | ☐ | ☐ |
| 6 | Modules: sourcing, inputs/outputs, versioning, the public registry | ☐ | ☐ |
| 7 | Configuration: variables, outputs, locals, data sources, expressions, functions | ☐ | ☐ |
| 8 | State management: backends, locking, remote state, drift | ☐ | ☐ |
| 9 | Lifecycle, dependencies and resource meta-arguments | ☐ | ☐ |
| 10 | Secrets and sensitive data handling | ☐ | ☐ |
| 11 | HCP Terraform (Terraform Cloud) capabilities | ☐ | ☐ |

## Prerequisites

- [Terraform CLI](https://developer.hashicorp.com/terraform/install) (latest stable version)
- A cloud provider account for labs that provision real infrastructure (free tier is enough for most exercises)
- Optional: an [HCP Terraform](https://app.terraform.io/) account for remote state and workspace exercises

## Running a Lab

Each folder under `labs/` is an independent root module:

```sh
cd labs/<topic>
terraform init
terraform plan
terraform apply
# clean up when done to avoid charges
terraform destroy
```

> State files (`*.tfstate`), `.terraform/` directories and `*.tfvars` files are git-ignored. Never commit credentials or secrets.

## Study Resources

- [Official exam page](https://developer.hashicorp.com/certifications/infrastructure-automation)
- [Terraform Associate tutorials / study guide](https://developer.hashicorp.com/terraform/tutorials/certification-associate-tutorials)
- [Terraform documentation](https://developer.hashicorp.com/terraform/docs)
- [Terraform Registry](https://registry.terraform.io/)

## License

This project is licensed under the [MIT License](LICENSE).

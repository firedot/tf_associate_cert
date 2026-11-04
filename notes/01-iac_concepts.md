## Key concepts of Infrastructure as Code

# What is Infrastructure as Code (IaC)

- defining and managing infrastructure in code files

# Why it matters 
- allows for consistency (the same code produces the same infrastructure every time)
- allows for version control through the use of SCM systems. This way you get history, code review through PRs, also you could get back to a previous version of the infra
- provides means for automation and speed - whole environments could be created or destroyed in minutes; changes could be run through a CI/CD pipeline
- The written code could be reused - e.g. by creating modules which are then reused in different projects
- The code shows what actually exists thus acting as documentation which is more reliable than a "Wiki" page that might be outdated
- Provides means for collaboration and auditing (every change is visible - who made it, when, and why)


# Key concepts

- Idempotency: applying the same configuration again makes no changes if the infra already matches it 
- in regard to TF - Provider-agnostic: one language and one workflow work across multiple cloud providers
- in regard to TF - State: terraform records what it manages in a state file and uses it to evaluate what to change
- Mutable vs Immutable infrastructure: IaC encourages replacing resources rather than patching them in place. 
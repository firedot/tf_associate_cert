## What is HashiCorp Terraform

- Terraform is a tool for infrastructure lifecycle management - it provisions, updates, tracks, and destroys infrastructures declaratively
- Terraform is not a configuration management tool. It builds everything around what configuration management tools such as Ansible, Chef and Puppet manage 
- being cloud-agnostic, Terraform allows operating on multiple cloud providers through the use of HCL and one workflow. This is acheived with the use of binary plugins called providers, which are basically API clients communicating with the cloud service providers (i.e. AWS, GCP, etc.)
- you still need separate configurations for the different cloud providers - resources are defined in different ways between the different clouds, so a configuration devised for bringing up a VM in AWS won't work for Azure
- terraform prevents vendor lock-in and allows for the usage of one skill set across different platforms
- terraform keeps track of the infrastructures created with it through state files - state links each resoure in the code to the real object in the cloud; 
- Metadata: state records dependencies, which Terraform needs to destroy resources in the right order even after they're removed from the code.
- Performance: with many resources, Terraform can rely on the cached state instead of querying every resource.
- Collaboration: remote state with locking lets a team work on the same infrastructure safely.
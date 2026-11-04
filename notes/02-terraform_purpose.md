# 02 - What is HashiCorp Terraform

- Terraform is a tool for infrastructure lifecycle management - it provisions, updates, tracks, and destroys infrastructures declaratively
- Terraform is not a configuration management tool. It builds the infrastructure itself (VMs, networks, etc.), while configuration management tools such as Ansible, Chef and Puppet manage the software running on it
- being provider-agnostic, Terraform allows operating on multiple cloud providers and other services (Kubernetes, GitHub, DNS, etc.) through the use of HCL and one workflow. This is achieved with the use of binary plugins called providers, which are basically API clients communicating with the service providers (e.g. AWS, GCP, etc.)
- a single configuration can use multiple providers at once, but the resources are defined in different ways between the different clouds, so a configuration devised for bringing up a VM in AWS won't work for Azure
- terraform prevents vendor lock-in and allows for the usage of one skill set across different platforms
- terraform keeps track of the infrastructures created with it through state files - state links each resoure in the code to the real object in the cloud; 
- Metadata: state records dependencies, which Terraform needs to destroy resources in the right order even after they're removed from the code.
- Performance: with many resources, Terraform can rely on the cached state instead of querying every resource.
- Collaboration: remote state with locking lets a team work on the same infrastructure safely.
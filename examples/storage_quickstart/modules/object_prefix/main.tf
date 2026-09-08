# A local Terraform module the Dart Stack calls with `addModule(ModuleCall(...))`
# (`module "object_prefix" { source = "../modules/object_prefix" }`). It declares
# no provider and no resource: `terraform init` resolves it from the synth
# output directory next door, and the Stack reads `prefix` back as a `TfRef`.

variable "folder" {
  type        = string
  description = "Top-level folder objects are written under."
}

output "prefix" {
  value       = "${var.folder}/"
  description = "Object-name prefix, with the trailing slash Terraform expects."
}

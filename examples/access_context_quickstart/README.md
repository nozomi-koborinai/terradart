# Access Context Manager quickstart

End-to-end terradart example for VPC Service Controls primitives:

- `GoogleAccessContextManagerAccessPolicy` (organization parent via `ops_organization_id` variable)
- `GoogleAccessContextManagerAccessLevel` (geo `basic` level + dedicated `chromeos_no_lock` level)
- `GoogleAccessContextManagerAccessLevelCondition` (additive Hashicorp basic condition; not on the perimeter)
- `GoogleAccessContextManagerServicePerimeter` (Storage restriction + dedicated dry-run perimeter)
- `GoogleAccessContextManagerServicePerimeterDryRunResource` (placeholder project on dry-run `spec` only)
- `GoogleAccessContextManagerAuthorizedOrgsDesc` (placeholder org numbers; `deletion_policy=DELETE`)
- `GoogleAccessContextManagerAccessPolicyIamMember`

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

Apply requires a real organization id: `terraform apply -var 'ops_organization_id=1234567890'`.

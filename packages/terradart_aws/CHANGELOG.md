# Changelog

## Unreleased

- New package: curated factories for the `hashicorp/aws` provider,
  exact-pinned at `6.66.0`. The seed catalog covers a Dart backend on
  Lambda: `AwsIamRole`, `AwsIamRolePolicyAttachment`, `AwsLambdaFunction`,
  `AwsLambdaFunctionUrl`, `AwsCloudwatchLogGroup`, and the
  `DataAwsIamPolicyDocument` / `DataAwsCallerIdentity` data sources.
- `AwsProvider` exposes the non-secret provider settings, including
  `defaultTags`, `assumeRole` (`AwsAssumeRole`), `ignoreTags`
  (`AwsIgnoreTags`) and `endpoints`. It has no `access_key`, `secret_key`,
  `token` or `assume_role_with_web_identity` parameter, so credentials
  never enter synth output.
- Fill the curated catalog at the `6.66.0` pin: 1725 resource factories
  and 683 data sources across per-service barrels. The inline
  `object_lock_configuration` and `server_side_encryption_configuration`
  blocks on `AwsS3Bucket` stay maps; their typed form lives on the split
  `aws_s3_bucket_*` resources.
- The six depth-14 wafv2 / quicksight resources (`AwsWafv2WebAcl`,
  `AwsWafv2WebAclRule`, `AwsWafv2RuleGroup`, `AwsQuicksightAnalysis`,
  `AwsQuicksightDashboard`, `AwsQuicksightTemplate`) take typed nested
  helpers. A block shape that repeats inside one resource gets one helper,
  named after its shallowest occurrence. The inline `rule` blocks on
  `AwsWafv2WebAcl` stay a map; `AwsWafv2WebAclRule` carries the typed form.
- Coverage: `examples/aws_lambda_quickstart`,
  `examples/aws_static_site_quickstart` (S3 + CloudFront + ACM + Route 53),
  `examples/aws_ecs_express_quickstart` (ECR + ECS Express Mode + IAM) and
  `examples/aws_leftover_quickstart` (synth + `terraform validate`).

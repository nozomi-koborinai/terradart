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
- Coverage: `examples/aws_lambda_quickstart` (synth + `terraform validate`).

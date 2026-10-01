# Changelog

## 0.31.0 - 2026-10-01

- 11,760 new `<name>Ref` getters, one per input a resource or data source takes (`TfRef<String> get scopeIdRef`), so another argument, an output or a constant reads what the input is set to with `.ref(...)`.
- **Breaking** — 1,142 value-list fields in helper classes take their element type: `TfArg<List<String>>` / `TfArg<List<num>>` instead of `TfArg<List<Object?>>`. Five QuickSight helpers shared by blocks of one shape split where the element type tells the blocks apart (string parameter `defaultValues`, `decimalParameters` / `integerParameters`). Synth output is unchanged. See `MIGRATING.md`.
- Every resource has a `ref` getter returning `RefTo<ItsClass>`, and so does every data source that reads a resource of this package — the reference the arguments naming another resource take.
- **Breaking** — 1,140 arguments that name another resource (IAM role, KMS key, S3 bucket, subnet, security group, VPC, CloudWatch log group, SNS topic and Lambda function) take a `RefTo<Target>` instead of a `TfArg<String>`: `AwsLambdaFunction(role: role.ref)`, `subnetIds: TfArg.literal([a.ref, b.ref])`. The argument picks the attribute it emits; `.literal(...)`, `.variable(...)`, `.expression(...)` and `.arg(...)` take a value outside the Stack, and `.pinned('attr')` keeps emitting another attribute. See `MIGRATING.md`.
- **Breaking** — requires Dart 3.10 (`sdk: ^3.10.0`, was `^3.6.0`). The generated wrappers were already formatted in the Dart 3.7+ tall style, so the constraint now matches them (pub.dev static analysis no longer reports a formatter mismatch).
- **Breaking:** mutually exclusive inputs the provider also accepts none of are nullable sealed types — 229 groups on 160 resources (169 on resource arguments, 60 in nested blocks) take one optional argument (or helper field) whose variants each set one member. The most common is `name` / `name_prefix` (59 resources): `AwsIamRole(name: .name(...))`, `AwsS3Bucket(name: .bucketPrefix(...))`. Leave it out to set none. Synth output is unchanged. See `MIGRATING.md`.
- **Breaking:** 3 more exactly-one groups, 163 on 117 resources now. `AwsDocdbGlobalCluster` takes a required `source`: the provider requires at least one of `engine` / `source_db_cluster_identifier`, and they conflict. `AwsPrometheusAnomalyDetector`'s `ignore_near_expected_from_above` / `_below` blocks take a required `amountOrRatio`: a `float64validator.ExactlyOneOf` the extractor used to skip. See `MIGRATING.md`.
- Generated wrappers encode optional inputs as null-aware map elements (`'k': ?x`, `'k': ?x?.toTfJson()`) instead of `if (x != null) 'k': x` guards, regenerated with `terradart wrap`. No API change; synth output is unchanged.

## 0.30.0 - 2026-09-28

- **Breaking:** inputs with a fixed value set are enums — 2903 string inputs on 811 resources (e.g. `AwsLambdaFunction.runtime` → `LambdaFunctionRuntime`, `AwsRoute53Record.type` → `Route53RecordType`). Synth output is unchanged. See `MIGRATING.md`.
- **Breaking:** inputs the provider requires exactly one of are sealed types — 160 groups on 116 resources take one required argument whose variants each set one member (e.g. `AwsLambdaFunction(filenameOrImageUriOrS3Bucket: LambdaFunctionFilenameOption(filename: ...))`, `AwsRoute53Record(aliasOrRecords: ...)`). Synth output is unchanged. See `MIGRATING.md`.

## 0.29.0 - 2026-09-27

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

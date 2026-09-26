// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Curated **AWS** surface for TerraDart (`hashicorp/aws` Terraform
/// provider, pinned at `6.66.0`).
///
/// The catalog is a seed: the resources a Dart backend on Lambda needs
/// (IAM role, policy attachment, function, function URL, log group) plus
/// the `aws_iam_policy_document` and `aws_caller_identity` data sources.
/// Credentials never appear in synth output: authentication happens at
/// apply time via the AWS SDK credential chain (`AWS_*` environment
/// variables, shared config, or an instance role).
///
/// This umbrella re-exports every per-service barrel. Prefer the
/// per-service imports in new code.
library;

export 'cloudwatch.dart';
export 'data.dart';
export 'iam.dart';
export 'lambda.dart';
export 'provider.dart';

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_pull_through_cache_rule`.
const Set<String> _awsEcrPullThroughCacheRuleSensitive = <String>{};

/// Factory wrapper for `aws_ecr_pull_through_cache_rule`.
final class AwsEcrPullThroughCacheRule extends Resource {
  static const String tfType = 'aws_ecr_pull_through_cache_rule';

  AwsEcrPullThroughCacheRule(
    super.localName, {
    TfArg<String>? credentialArn,
    TfArg<String>? customRoleArn,
    required TfArg<String> ecrRepositoryPrefix,
    TfArg<String>? region,
    required TfArg<String> upstreamRegistryUrl,
    TfArg<String>? upstreamRepositoryPrefix,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'credential_arn': ?credentialArn,
           'custom_role_arn': ?customRoleArn,
           'ecr_repository_prefix': ecrRepositoryPrefix,
           'region': ?region,
           'upstream_registry_url': upstreamRegistryUrl,
           'upstream_repository_prefix': ?upstreamRepositoryPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrPullThroughCacheRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrPullThroughCacheRule>`.
  RefTo<AwsEcrPullThroughCacheRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `credential_arn` attribute.
  TfRef<String> get credentialArn =>
      TfRef.attribute<String>(this, 'credential_arn');

  /// Reference to `custom_role_arn` attribute.
  TfRef<String> get customRoleArn =>
      TfRef.attribute<String>(this, 'custom_role_arn');

  /// Reference to `ecr_repository_prefix` attribute.
  TfRef<String> get ecrRepositoryPrefix =>
      TfRef.attribute<String>(this, 'ecr_repository_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `upstream_registry_url` attribute.
  TfRef<String> get upstreamRegistryUrl =>
      TfRef.attribute<String>(this, 'upstream_registry_url');

  /// Reference to `upstream_repository_prefix` attribute.
  TfRef<String> get upstreamRepositoryPrefix =>
      TfRef.attribute<String>(this, 'upstream_repository_prefix');
}

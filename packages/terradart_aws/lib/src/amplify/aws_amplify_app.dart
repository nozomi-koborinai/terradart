// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_amplify_app`.
const Set<String> _awsAmplifyAppSensitive = <String>{
  'access_token',
  'auto_branch_creation_config.basic_auth_credentials',
  'basic_auth_credentials',
  'oauth_token',
};

/// Typed helper for the `auto_branch_creation_config` block of
/// `aws_amplify_app` (derived from provider schema).
@immutable
final class AmplifyAppAutoBranchCreationConfig {
  const AmplifyAppAutoBranchCreationConfig({
    this.basicAuthCredentials,
    this.buildSpec,
    this.enableAutoBuild,
    this.enableBasicAuth,
    this.enablePerformanceMode,
    this.enablePullRequestPreview,
    this.environmentVariables,
    this.framework,
    this.pullRequestEnvironmentName,
    this.stage,
  });

  final TfArg<String>? basicAuthCredentials;

  final TfArg<String>? buildSpec;

  final TfArg<bool>? enableAutoBuild;

  final TfArg<bool>? enableBasicAuth;

  final TfArg<bool>? enablePerformanceMode;

  final TfArg<bool>? enablePullRequestPreview;

  final TfArg<Map<String, String>>? environmentVariables;

  final TfArg<String>? framework;

  final TfArg<String>? pullRequestEnvironmentName;

  final TfArg<String>? stage;

  Map<String, Object?> encode() => {
    if (basicAuthCredentials != null)
      'basic_auth_credentials': basicAuthCredentials!.toTfJson(),
    if (buildSpec != null) 'build_spec': buildSpec!.toTfJson(),
    if (enableAutoBuild != null)
      'enable_auto_build': enableAutoBuild!.toTfJson(),
    if (enableBasicAuth != null)
      'enable_basic_auth': enableBasicAuth!.toTfJson(),
    if (enablePerformanceMode != null)
      'enable_performance_mode': enablePerformanceMode!.toTfJson(),
    if (enablePullRequestPreview != null)
      'enable_pull_request_preview': enablePullRequestPreview!.toTfJson(),
    if (environmentVariables != null)
      'environment_variables': environmentVariables!.toTfJson(),
    if (framework != null) 'framework': framework!.toTfJson(),
    if (pullRequestEnvironmentName != null)
      'pull_request_environment_name': pullRequestEnvironmentName!.toTfJson(),
    if (stage != null) 'stage': stage!.toTfJson(),
  };
}

/// Typed helper for the `cache_config` block of
/// `aws_amplify_app` (derived from provider schema).
@immutable
final class AmplifyAppCacheConfig {
  const AmplifyAppCacheConfig({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `custom_rule` block of
/// `aws_amplify_app` (derived from provider schema).
@immutable
final class AmplifyAppCustomRule {
  const AmplifyAppCustomRule({
    this.condition,
    required this.source,
    this.status,
    required this.target,
  });

  final TfArg<String>? condition;

  final TfArg<String> source;

  final TfArg<String>? status;

  final TfArg<String> target;

  Map<String, Object?> encode() => {
    if (condition != null) 'condition': condition!.toTfJson(),
    'source': source.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    'target': target.toTfJson(),
  };
}

/// Typed helper for the `job_config` block of
/// `aws_amplify_app` (derived from provider schema).
@immutable
final class AmplifyAppJobConfig {
  const AmplifyAppJobConfig({this.buildComputeType});

  final TfArg<String>? buildComputeType;

  Map<String, Object?> encode() => {
    if (buildComputeType != null)
      'build_compute_type': buildComputeType!.toTfJson(),
  };
}

/// Factory wrapper for `aws_amplify_app`.
final class AwsAmplifyApp extends Resource {
  static const String tfType = 'aws_amplify_app';

  AwsAmplifyApp({
    required super.localName,
    TfArg<String>? accessToken,
    TfArg<List<String>>? autoBranchCreationPatterns,
    TfArg<String>? basicAuthCredentials,
    TfArg<String>? buildSpec,
    TfArg<String>? computeRoleArn,
    TfArg<String>? customHeaders,
    TfArg<String>? description,
    TfArg<bool>? enableAutoBranchCreation,
    TfArg<bool>? enableBasicAuth,
    TfArg<bool>? enableBranchAutoBuild,
    TfArg<bool>? enableBranchAutoDeletion,
    TfArg<Map<String, String>>? environmentVariables,
    TfArg<String>? iamServiceRoleArn,
    required TfArg<String> name,
    TfArg<String>? oauthToken,
    TfArg<String>? platform,
    TfArg<String>? region,
    TfArg<String>? repository,
    TfArg<Map<String, String>>? tags,
    AmplifyAppAutoBranchCreationConfig? autoBranchCreationConfig,
    AmplifyAppCacheConfig? cacheConfig,
    List<AmplifyAppCustomRule>? customRule,
    AmplifyAppJobConfig? jobConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessToken != null) 'access_token': accessToken,
           if (autoBranchCreationPatterns != null)
             'auto_branch_creation_patterns': autoBranchCreationPatterns,
           if (basicAuthCredentials != null)
             'basic_auth_credentials': basicAuthCredentials,
           if (buildSpec != null) 'build_spec': buildSpec,
           if (computeRoleArn != null) 'compute_role_arn': computeRoleArn,
           if (customHeaders != null) 'custom_headers': customHeaders,
           if (description != null) 'description': description,
           if (enableAutoBranchCreation != null)
             'enable_auto_branch_creation': enableAutoBranchCreation,
           if (enableBasicAuth != null) 'enable_basic_auth': enableBasicAuth,
           if (enableBranchAutoBuild != null)
             'enable_branch_auto_build': enableBranchAutoBuild,
           if (enableBranchAutoDeletion != null)
             'enable_branch_auto_deletion': enableBranchAutoDeletion,
           if (environmentVariables != null)
             'environment_variables': environmentVariables,
           if (iamServiceRoleArn != null)
             'iam_service_role_arn': iamServiceRoleArn,
           'name': name,
           if (oauthToken != null) 'oauth_token': oauthToken,
           if (platform != null) 'platform': platform,
           if (region != null) 'region': region,
           if (repository != null) 'repository': repository,
           if (tags != null) 'tags': tags,
           if (autoBranchCreationConfig != null)
             'auto_branch_creation_config': TfArg.literal(
               autoBranchCreationConfig.encode(),
             ),
           if (cacheConfig != null)
             'cache_config': TfArg.literal(cacheConfig.encode()),
           if (customRule != null)
             'custom_rule': TfArg.literal([
               for (final e in customRule) e.encode(),
             ]),
           if (jobConfig != null)
             'job_config': TfArg.literal(jobConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmplifyAppSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_domain` attribute.
  TfRef<String> get defaultDomain =>
      TfRef.attribute<String>(this, 'default_domain');

  /// Reference to `production_branch` attribute.
  TfRef<List<Map<String, Object?>>> get productionBranch =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'production_branch');
}

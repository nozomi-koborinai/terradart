// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_amplify_app`.
const Set<String> _awsAmplifyAppSensitive = <String>{
  'access_token',
  'auto_branch_creation_config.basic_auth_credentials',
  'basic_auth_credentials',
  'oauth_token',
};

/// Amplify App enum for `platform`.
enum AmplifyAppPlatform implements TerraformEnum {
  web('WEB'),
  webDynamic('WEB_DYNAMIC'),
  webCompute('WEB_COMPUTE');

  const AmplifyAppPlatform(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<AmplifyAppStage>? stage;

  Map<String, Object?> encode() => {
    'basic_auth_credentials': ?basicAuthCredentials?.toTfJson(),
    'build_spec': ?buildSpec?.toTfJson(),
    'enable_auto_build': ?enableAutoBuild?.toTfJson(),
    'enable_basic_auth': ?enableBasicAuth?.toTfJson(),
    'enable_performance_mode': ?enablePerformanceMode?.toTfJson(),
    'enable_pull_request_preview': ?enablePullRequestPreview?.toTfJson(),
    'environment_variables': ?environmentVariables?.toTfJson(),
    'framework': ?framework?.toTfJson(),
    'pull_request_environment_name': ?pullRequestEnvironmentName?.toTfJson(),
    'stage': ?stage?.toTfJson(),
  };
}

/// `stage` — derived from the provider schema description.
enum AmplifyAppStage implements TerraformEnum {
  production('PRODUCTION'),
  beta('BETA'),
  development('DEVELOPMENT'),
  experimental('EXPERIMENTAL'),
  pullRequest('PULL_REQUEST');

  const AmplifyAppStage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cache_config` block of
/// `aws_amplify_app` (derived from provider schema).
@immutable
final class AmplifyAppCacheConfig {
  const AmplifyAppCacheConfig({required this.type});

  final TfArg<AmplifyAppType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum AmplifyAppType implements TerraformEnum {
  amplifyManaged('AMPLIFY_MANAGED'),
  amplifyManagedNoCookies('AMPLIFY_MANAGED_NO_COOKIES');

  const AmplifyAppType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<AmplifyAppStatus>? status;

  final TfArg<String> target;

  Map<String, Object?> encode() => {
    'condition': ?condition?.toTfJson(),
    'source': source.toTfJson(),
    'status': ?status?.toTfJson(),
    'target': target.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum AmplifyAppStatus implements TerraformEnum {
  v200('200'),
  v301('301'),
  v302('302'),
  v404('404'),
  v404x200('404-200');

  const AmplifyAppStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `job_config` block of
/// `aws_amplify_app` (derived from provider schema).
@immutable
final class AmplifyAppJobConfig {
  const AmplifyAppJobConfig({this.buildComputeType});

  final TfArg<AmplifyAppBuildComputeType>? buildComputeType;

  Map<String, Object?> encode() => {
    'build_compute_type': ?buildComputeType?.toTfJson(),
  };
}

/// `build_compute_type` — derived from the provider schema description.
enum AmplifyAppBuildComputeType implements TerraformEnum {
  standard8gb('STANDARD_8GB'),
  large16gb('LARGE_16GB'),
  xlarge72gb('XLARGE_72GB');

  const AmplifyAppBuildComputeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_amplify_app`.
final class AwsAmplifyApp extends Resource {
  static const String tfType = 'aws_amplify_app';

  AwsAmplifyApp(
    super.localName, {
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
    RefTo<AwsIamRole>? iamServiceRoleArn,
    required TfArg<String> name,
    TfArg<String>? oauthToken,
    TfArg<AmplifyAppPlatform>? platform,
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
           'access_token': ?accessToken,
           'auto_branch_creation_patterns': ?autoBranchCreationPatterns,
           'basic_auth_credentials': ?basicAuthCredentials,
           'build_spec': ?buildSpec,
           'compute_role_arn': ?computeRoleArn,
           'custom_headers': ?customHeaders,
           'description': ?description,
           'enable_auto_branch_creation': ?enableAutoBranchCreation,
           'enable_basic_auth': ?enableBasicAuth,
           'enable_branch_auto_build': ?enableBranchAutoBuild,
           'enable_branch_auto_deletion': ?enableBranchAutoDeletion,
           'environment_variables': ?environmentVariables,
           'iam_service_role_arn': ?iamServiceRoleArn?.encodeAs('arn'),
           'name': name,
           'oauth_token': ?oauthToken,
           'platform': ?platform,
           'region': ?region,
           'repository': ?repository,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAmplifyApp>`.
  RefTo<AwsAmplifyApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `access_token` attribute.
  TfRef<String> get accessToken =>
      TfRef.attribute<String>(this, 'access_token');

  /// Reference to `auto_branch_creation_patterns` attribute.
  TfRef<List<String>> get autoBranchCreationPatterns =>
      TfRef.attribute<List<String>>(this, 'auto_branch_creation_patterns');

  /// Reference to `basic_auth_credentials` attribute.
  TfRef<String> get basicAuthCredentials =>
      TfRef.attribute<String>(this, 'basic_auth_credentials');

  /// Reference to `build_spec` attribute.
  TfRef<String> get buildSpec => TfRef.attribute<String>(this, 'build_spec');

  /// Reference to `compute_role_arn` attribute.
  TfRef<String> get computeRoleArn =>
      TfRef.attribute<String>(this, 'compute_role_arn');

  /// Reference to `custom_headers` attribute.
  TfRef<String> get customHeaders =>
      TfRef.attribute<String>(this, 'custom_headers');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_auto_branch_creation` attribute.
  TfRef<bool> get enableAutoBranchCreation =>
      TfRef.attribute<bool>(this, 'enable_auto_branch_creation');

  /// Reference to `enable_basic_auth` attribute.
  TfRef<bool> get enableBasicAuth =>
      TfRef.attribute<bool>(this, 'enable_basic_auth');

  /// Reference to `enable_branch_auto_build` attribute.
  TfRef<bool> get enableBranchAutoBuild =>
      TfRef.attribute<bool>(this, 'enable_branch_auto_build');

  /// Reference to `enable_branch_auto_deletion` attribute.
  TfRef<bool> get enableBranchAutoDeletion =>
      TfRef.attribute<bool>(this, 'enable_branch_auto_deletion');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `iam_service_role_arn` attribute.
  TfRef<String> get iamServiceRoleArn =>
      TfRef.attribute<String>(this, 'iam_service_role_arn');

  /// Reference to `oauth_token` attribute.
  TfRef<String> get oauthToken => TfRef.attribute<String>(this, 'oauth_token');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository` attribute.
  TfRef<String> get repository => TfRef.attribute<String>(this, 'repository');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

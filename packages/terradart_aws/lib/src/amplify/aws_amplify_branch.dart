// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_amplify_branch`.
const Set<String> _awsAmplifyBranchSensitive = <String>{
  'basic_auth_credentials',
};

/// Amplify Branch enum for `stage`.
enum AmplifyBranchStage implements TerraformEnum {
  production('PRODUCTION'),
  beta('BETA'),
  development('DEVELOPMENT'),
  experimental('EXPERIMENTAL'),
  pullRequest('PULL_REQUEST');

  const AmplifyBranchStage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_amplify_branch`.
final class AwsAmplifyBranch extends Resource {
  static const String tfType = 'aws_amplify_branch';

  AwsAmplifyBranch({
    required super.localName,
    required TfArg<String> appId,
    TfArg<String>? backendEnvironmentArn,
    TfArg<String>? basicAuthCredentials,
    required TfArg<String> branchName,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? enableAutoBuild,
    TfArg<bool>? enableBasicAuth,
    TfArg<bool>? enableNotification,
    TfArg<bool>? enablePerformanceMode,
    TfArg<bool>? enablePullRequestPreview,
    TfArg<bool>? enableSkewProtection,
    TfArg<Map<String, String>>? environmentVariables,
    TfArg<String>? framework,
    TfArg<String>? pullRequestEnvironmentName,
    TfArg<String>? region,
    TfArg<AmplifyBranchStage>? stage,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? ttl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'backend_environment_arn': ?backendEnvironmentArn,
           'basic_auth_credentials': ?basicAuthCredentials,
           'branch_name': branchName,
           'description': ?description,
           'display_name': ?displayName,
           'enable_auto_build': ?enableAutoBuild,
           'enable_basic_auth': ?enableBasicAuth,
           'enable_notification': ?enableNotification,
           'enable_performance_mode': ?enablePerformanceMode,
           'enable_pull_request_preview': ?enablePullRequestPreview,
           'enable_skew_protection': ?enableSkewProtection,
           'environment_variables': ?environmentVariables,
           'framework': ?framework,
           'pull_request_environment_name': ?pullRequestEnvironmentName,
           'region': ?region,
           'stage': ?stage,
           'tags': ?tags,
           'ttl': ?ttl,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmplifyBranchSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAmplifyBranch>`.
  RefTo<AwsAmplifyBranch> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `associated_resources` attribute.
  TfRef<List<String>> get associatedResources =>
      TfRef.attribute<List<String>>(this, 'associated_resources');

  /// Reference to `custom_domains` attribute.
  TfRef<List<String>> get customDomains =>
      TfRef.attribute<List<String>>(this, 'custom_domains');

  /// Reference to `destination_branch` attribute.
  TfRef<String> get destinationBranch =>
      TfRef.attribute<String>(this, 'destination_branch');

  /// Reference to `source_branch` attribute.
  TfRef<String> get sourceBranch =>
      TfRef.attribute<String>(this, 'source_branch');

  /// Reference to `app_id` attribute.
  TfRef<String> get appIdRef => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `backend_environment_arn` attribute.
  TfRef<String> get backendEnvironmentArnRef =>
      TfRef.attribute<String>(this, 'backend_environment_arn');

  /// Reference to `basic_auth_credentials` attribute.
  TfRef<String> get basicAuthCredentialsRef =>
      TfRef.attribute<String>(this, 'basic_auth_credentials');

  /// Reference to `branch_name` attribute.
  TfRef<String> get branchNameRef =>
      TfRef.attribute<String>(this, 'branch_name');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_auto_build` attribute.
  TfRef<bool> get enableAutoBuildRef =>
      TfRef.attribute<bool>(this, 'enable_auto_build');

  /// Reference to `enable_basic_auth` attribute.
  TfRef<bool> get enableBasicAuthRef =>
      TfRef.attribute<bool>(this, 'enable_basic_auth');

  /// Reference to `enable_notification` attribute.
  TfRef<bool> get enableNotificationRef =>
      TfRef.attribute<bool>(this, 'enable_notification');

  /// Reference to `enable_performance_mode` attribute.
  TfRef<bool> get enablePerformanceModeRef =>
      TfRef.attribute<bool>(this, 'enable_performance_mode');

  /// Reference to `enable_pull_request_preview` attribute.
  TfRef<bool> get enablePullRequestPreviewRef =>
      TfRef.attribute<bool>(this, 'enable_pull_request_preview');

  /// Reference to `enable_skew_protection` attribute.
  TfRef<bool> get enableSkewProtectionRef =>
      TfRef.attribute<bool>(this, 'enable_skew_protection');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariablesRef =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `framework` attribute.
  TfRef<String> get frameworkRef => TfRef.attribute<String>(this, 'framework');

  /// Reference to `pull_request_environment_name` attribute.
  TfRef<String> get pullRequestEnvironmentNameRef =>
      TfRef.attribute<String>(this, 'pull_request_environment_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `stage` attribute.
  TfRef<String> get stageRef => TfRef.attribute<String>(this, 'stage');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<String> get ttlRef => TfRef.attribute<String>(this, 'ttl');
}

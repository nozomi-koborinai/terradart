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
}

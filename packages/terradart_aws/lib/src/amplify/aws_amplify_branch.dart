// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_amplify_branch`.
const Set<String> _awsAmplifyBranchSensitive = <String>{
  'basic_auth_credentials',
};

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
    TfArg<String>? stage,
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
           if (backendEnvironmentArn != null)
             'backend_environment_arn': backendEnvironmentArn,
           if (basicAuthCredentials != null)
             'basic_auth_credentials': basicAuthCredentials,
           'branch_name': branchName,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           if (enableAutoBuild != null) 'enable_auto_build': enableAutoBuild,
           if (enableBasicAuth != null) 'enable_basic_auth': enableBasicAuth,
           if (enableNotification != null)
             'enable_notification': enableNotification,
           if (enablePerformanceMode != null)
             'enable_performance_mode': enablePerformanceMode,
           if (enablePullRequestPreview != null)
             'enable_pull_request_preview': enablePullRequestPreview,
           if (enableSkewProtection != null)
             'enable_skew_protection': enableSkewProtection,
           if (environmentVariables != null)
             'environment_variables': environmentVariables,
           if (framework != null) 'framework': framework,
           if (pullRequestEnvironmentName != null)
             'pull_request_environment_name': pullRequestEnvironmentName,
           if (region != null) 'region': region,
           if (stage != null) 'stage': stage,
           if (tags != null) 'tags': tags,
           if (ttl != null) 'ttl': ttl,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmplifyBranchSensitive;

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

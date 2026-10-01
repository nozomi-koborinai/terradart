// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_amplify_branch`.
const Set<String> _awsAmplifyBranchSensitive = <String>{
  'basic_auth_credentials',
};

/// Amplify Branch enum for `stage`.
extension type const AmplifyBranchStage._(TfArg<String> _)
    implements TfArg<String> {
  AmplifyBranchStage.variable(String name) : this._(TfArg.variable(name));
  AmplifyBranchStage.expression(String template)
    : this._(TfArg.expression(template));
  const AmplifyBranchStage.arg(TfArg<String> arg) : this._(arg);

  static const production = AmplifyBranchStage._(TfArgLiteral('PRODUCTION'));
  static const beta = AmplifyBranchStage._(TfArgLiteral('BETA'));
  static const development = AmplifyBranchStage._(TfArgLiteral('DEVELOPMENT'));
  static const experimental = AmplifyBranchStage._(
    TfArgLiteral('EXPERIMENTAL'),
  );
  static const pullRequest = AmplifyBranchStage._(TfArgLiteral('PULL_REQUEST'));

  static const List<AmplifyBranchStage> values = [
    production,
    beta,
    development,
    experimental,
    pullRequest,
  ];
}

/// Factory wrapper for `aws_amplify_branch`.
final class AwsAmplifyBranch extends Resource {
  static const String tfType = 'aws_amplify_branch';

  AwsAmplifyBranch(
    super.localName, {
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
    AmplifyBranchStage? stage,
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
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `backend_environment_arn` attribute.
  TfRef<String> get backendEnvironmentArn =>
      TfRef.attribute<String>(this, 'backend_environment_arn');

  /// Reference to `basic_auth_credentials` attribute.
  TfRef<String> get basicAuthCredentials =>
      TfRef.attribute<String>(this, 'basic_auth_credentials');

  /// Reference to `branch_name` attribute.
  TfRef<String> get branchName => TfRef.attribute<String>(this, 'branch_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_auto_build` attribute.
  TfRef<bool> get enableAutoBuild =>
      TfRef.attribute<bool>(this, 'enable_auto_build');

  /// Reference to `enable_basic_auth` attribute.
  TfRef<bool> get enableBasicAuth =>
      TfRef.attribute<bool>(this, 'enable_basic_auth');

  /// Reference to `enable_notification` attribute.
  TfRef<bool> get enableNotification =>
      TfRef.attribute<bool>(this, 'enable_notification');

  /// Reference to `enable_performance_mode` attribute.
  TfRef<bool> get enablePerformanceMode =>
      TfRef.attribute<bool>(this, 'enable_performance_mode');

  /// Reference to `enable_pull_request_preview` attribute.
  TfRef<bool> get enablePullRequestPreview =>
      TfRef.attribute<bool>(this, 'enable_pull_request_preview');

  /// Reference to `enable_skew_protection` attribute.
  TfRef<bool> get enableSkewProtection =>
      TfRef.attribute<bool>(this, 'enable_skew_protection');

  /// Reference to `environment_variables` attribute.
  TfRef<Map<String, String>> get environmentVariables =>
      TfRef.attribute<Map<String, String>>(this, 'environment_variables');

  /// Reference to `framework` attribute.
  TfRef<String> get framework => TfRef.attribute<String>(this, 'framework');

  /// Reference to `pull_request_environment_name` attribute.
  TfRef<String> get pullRequestEnvironmentName =>
      TfRef.attribute<String>(this, 'pull_request_environment_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `stage` attribute.
  TfRef<String> get stage => TfRef.attribute<String>(this, 'stage');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<String> get ttl => TfRef.attribute<String>(this, 'ttl');
}

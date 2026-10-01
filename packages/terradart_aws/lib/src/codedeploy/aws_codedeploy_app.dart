// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codedeploy_app`.
const Set<String> _awsCodedeployAppSensitive = <String>{};

/// Codedeploy App Compute enum for `compute_platform`.
enum CodedeployAppComputePlatform implements TerraformEnum {
  server('Server'),
  lambda('Lambda'),
  ecs('ECS');

  const CodedeployAppComputePlatform(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_codedeploy_app`.
final class AwsCodedeployApp extends Resource {
  static const String tfType = 'aws_codedeploy_app';

  AwsCodedeployApp({
    required super.localName,
    TfArg<CodedeployAppComputePlatform>? computePlatform,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'compute_platform': ?computePlatform,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodedeployAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodedeployApp>`.
  RefTo<AwsCodedeployApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `github_account_name` attribute.
  TfRef<String> get githubAccountName =>
      TfRef.attribute<String>(this, 'github_account_name');

  /// Reference to `linked_to_github` attribute.
  TfRef<bool> get linkedToGithub =>
      TfRef.attribute<bool>(this, 'linked_to_github');

  /// Reference to `compute_platform` attribute.
  TfRef<String> get computePlatform =>
      TfRef.attribute<String>(this, 'compute_platform');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

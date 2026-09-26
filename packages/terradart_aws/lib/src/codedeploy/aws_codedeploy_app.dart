// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codedeploy_app`.
const Set<String> _awsCodedeployAppSensitive = <String>{};

/// Factory wrapper for `aws_codedeploy_app`.
final class AwsCodedeployApp extends Resource {
  static const String tfType = 'aws_codedeploy_app';

  AwsCodedeployApp({
    required super.localName,
    TfArg<String>? computePlatform,
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
           if (computePlatform != null) 'compute_platform': computePlatform,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodedeployAppSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}

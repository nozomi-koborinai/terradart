// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_secret_version`.
const Set<String> _awsSecretsmanagerSecretVersionSensitive = <String>{
  'secret_binary',
  'secret_string',
};

/// Factory wrapper for `aws_secretsmanager_secret_version`.
final class DataAwsSecretsmanagerSecretVersion extends Data {
  static const String tfType = 'aws_secretsmanager_secret_version';

  DataAwsSecretsmanagerSecretVersion({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> secretId,
    TfArg<String>? versionId,
    TfArg<String>? versionStage,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'secret_id': secretId,
           if (versionId != null) 'version_id': versionId,
           if (versionStage != null) 'version_stage': versionStage,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerSecretVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');

  /// Reference to `secret_binary` attribute.
  TfRef<String> get secretBinary =>
      TfRef.attribute<String>(this, 'secret_binary');

  /// Reference to `secret_string` attribute.
  TfRef<String> get secretString =>
      TfRef.attribute<String>(this, 'secret_string');

  /// Reference to `version_stages` attribute.
  TfRef<List<String>> get versionStages =>
      TfRef.attribute<List<String>>(this, 'version_stages');
}

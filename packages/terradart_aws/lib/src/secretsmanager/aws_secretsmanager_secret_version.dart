// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_secret_version`.
const Set<String> _awsSecretsmanagerSecretVersionSensitive = <String>{
  'secret_binary',
  'secret_string',
  'secret_string_wo',
};

/// Factory wrapper for `aws_secretsmanager_secret_version`.
final class AwsSecretsmanagerSecretVersion extends Resource {
  static const String tfType = 'aws_secretsmanager_secret_version';

  AwsSecretsmanagerSecretVersion({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? secretBinary,
    required TfArg<String> secretId,
    TfArg<String>? secretString,
    TfArg<String>? secretStringWo,
    TfArg<num>? secretStringWoVersion,
    TfArg<List<String>>? versionStages,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (secretBinary != null) 'secret_binary': secretBinary,
           'secret_id': secretId,
           if (secretString != null) 'secret_string': secretString,
           if (secretStringWo != null) 'secret_string_wo': secretStringWo,
           if (secretStringWoVersion != null)
             'secret_string_wo_version': secretStringWoVersion,
           if (versionStages != null) 'version_stages': versionStages,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerSecretVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `has_secret_string_wo` attribute.
  TfRef<bool> get hasSecretStringWo =>
      TfRef.attribute<bool>(this, 'has_secret_string_wo');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}

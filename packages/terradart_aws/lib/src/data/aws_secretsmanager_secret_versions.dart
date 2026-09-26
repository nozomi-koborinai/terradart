// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_secret_versions`.
const Set<String> _awsSecretsmanagerSecretVersionsSensitive = <String>{};

/// Factory wrapper for `aws_secretsmanager_secret_versions`.
final class DataAwsSecretsmanagerSecretVersions extends Data {
  static const String tfType = 'aws_secretsmanager_secret_versions';

  DataAwsSecretsmanagerSecretVersions({
    required super.localName,
    TfArg<bool>? includeDeprecated,
    TfArg<String>? region,
    required TfArg<String> secretId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (includeDeprecated != null)
             'include_deprecated': includeDeprecated,
           if (region != null) 'region': region,
           'secret_id': secretId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerSecretVersionsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');

  /// Reference to `secret_name` attribute.
  TfRef<String> get secretName => TfRef.attribute<String>(this, 'secret_name');

  /// Reference to `versions` attribute.
  TfRef<List<Map<String, Object?>>> get versions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'versions');
}

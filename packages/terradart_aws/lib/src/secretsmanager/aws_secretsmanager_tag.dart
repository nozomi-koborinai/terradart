// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_tag`.
const Set<String> _awsSecretsmanagerTagSensitive = <String>{};

/// Factory wrapper for `aws_secretsmanager_tag`.
final class AwsSecretsmanagerTag extends Resource {
  static const String tfType = 'aws_secretsmanager_tag';

  AwsSecretsmanagerTag({
    required super.localName,
    required TfArg<String> key,
    TfArg<String>? region,
    required TfArg<String> secretId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key': key,
           if (region != null) 'region': region,
           'secret_id': secretId,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerTagSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

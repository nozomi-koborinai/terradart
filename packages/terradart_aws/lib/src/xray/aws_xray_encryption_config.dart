// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_xray_encryption_config`.
const Set<String> _awsXrayEncryptionConfigSensitive = <String>{};

/// Factory wrapper for `aws_xray_encryption_config`.
final class AwsXrayEncryptionConfig extends Resource {
  static const String tfType = 'aws_xray_encryption_config';

  AwsXrayEncryptionConfig({
    required super.localName,
    TfArg<String>? keyId,
    TfArg<String>? region,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (keyId != null) 'key_id': keyId,
           if (region != null) 'region': region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXrayEncryptionConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

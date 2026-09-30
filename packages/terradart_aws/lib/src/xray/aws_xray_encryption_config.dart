// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_xray_encryption_config`.
const Set<String> _awsXrayEncryptionConfigSensitive = <String>{};

/// Xray Encryption Config enum for `type`.
enum XrayEncryptionConfigType implements TerraformEnum {
  none('NONE'),
  kms('KMS');

  const XrayEncryptionConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_xray_encryption_config`.
final class AwsXrayEncryptionConfig extends Resource {
  static const String tfType = 'aws_xray_encryption_config';

  AwsXrayEncryptionConfig({
    required super.localName,
    RefTo<AwsKmsKey>? keyId,
    TfArg<String>? region,
    required TfArg<XrayEncryptionConfigType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_id': ?keyId?.encodeAs('arn'),
           'region': ?region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXrayEncryptionConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsXrayEncryptionConfig>`.
  RefTo<AwsXrayEncryptionConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyIdRef => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}

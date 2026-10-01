// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_xray_encryption_config`.
const Set<String> _awsXrayEncryptionConfigSensitive = <String>{};

/// Xray Encryption Config enum for `type`.
extension type const XrayEncryptionConfigType._(TfArg<String> _)
    implements TfArg<String> {
  XrayEncryptionConfigType.variable(String name) : this._(TfArg.variable(name));
  XrayEncryptionConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const XrayEncryptionConfigType.arg(TfArg<String> arg) : this._(arg);

  static const none = XrayEncryptionConfigType._(TfArgLiteral('NONE'));
  static const kms = XrayEncryptionConfigType._(TfArgLiteral('KMS'));

  static const List<XrayEncryptionConfigType> values = [none, kms];
}

/// Factory wrapper for `aws_xray_encryption_config`.
final class AwsXrayEncryptionConfig extends Resource {
  static const String tfType = 'aws_xray_encryption_config';

  AwsXrayEncryptionConfig(
    super.localName, {
    RefTo<AwsKmsKey>? keyId,
    TfArg<String>? region,
    required XrayEncryptionConfigType type,
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
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_protection`.
const Set<String> _awsShieldProtectionSensitive = <String>{};

/// Factory wrapper for `aws_shield_protection`.
final class DataAwsShieldProtection extends Data {
  static const String tfType = 'aws_shield_protection';

  DataAwsShieldProtection({
    required super.localName,
    TfArg<String>? protectionId,
    TfArg<String>? resourceArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (protectionId != null) 'protection_id': protectionId,
           if (resourceArn != null) 'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsShieldProtectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_arn` attribute.
  TfRef<String> get protectionArn =>
      TfRef.attribute<String>(this, 'protection_arn');
}

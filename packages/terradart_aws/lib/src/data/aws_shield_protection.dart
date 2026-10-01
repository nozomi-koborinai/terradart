// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../shield/aws_shield_protection.dart';

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
         argMap: {'protection_id': ?protectionId, 'resource_arn': ?resourceArn},
       );

  @override
  Set<String> get sensitiveFields => _awsShieldProtectionSensitive;

  /// A reference to the `aws_shield_protection` this data source reads, for
  /// arguments typed `RefTo<AwsShieldProtection>`.
  RefTo<AwsShieldProtection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_arn` attribute.
  TfRef<String> get protectionArn =>
      TfRef.attribute<String>(this, 'protection_arn');

  /// Reference to `protection_id` attribute.
  TfRef<String> get protectionId =>
      TfRef.attribute<String>(this, 'protection_id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}

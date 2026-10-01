// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_protection_health_check_association`.
const Set<String> _awsShieldProtectionHealthCheckAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_shield_protection_health_check_association`.
final class AwsShieldProtectionHealthCheckAssociation extends Resource {
  static const String tfType = 'aws_shield_protection_health_check_association';

  AwsShieldProtectionHealthCheckAssociation(
    super.localName, {
    required TfArg<String> healthCheckArn,
    required TfArg<String> shieldProtectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'health_check_arn': healthCheckArn,
           'shield_protection_id': shieldProtectionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsShieldProtectionHealthCheckAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsShieldProtectionHealthCheckAssociation>`.
  RefTo<AwsShieldProtectionHealthCheckAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `health_check_arn` attribute.
  TfRef<String> get healthCheckArn =>
      TfRef.attribute<String>(this, 'health_check_arn');

  /// Reference to `shield_protection_id` attribute.
  TfRef<String> get shieldProtectionId =>
      TfRef.attribute<String>(this, 'shield_protection_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_configuration_policy_association`.
const Set<String> _awsSecurityhubConfigurationPolicyAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_securityhub_configuration_policy_association`.
final class AwsSecurityhubConfigurationPolicyAssociation extends Resource {
  static const String tfType =
      'aws_securityhub_configuration_policy_association';

  AwsSecurityhubConfigurationPolicyAssociation({
    required super.localName,
    required TfArg<String> policyId,
    TfArg<String>? region,
    required TfArg<String> targetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_id': policyId,
           if (region != null) 'region': region,
           'target_id': targetId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecurityhubConfigurationPolicyAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

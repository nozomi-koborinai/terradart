// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_block_public_access_configuration`.
const Set<String> _awsEmrBlockPublicAccessConfigurationSensitive = <String>{};

/// Typed helper for the `permitted_public_security_group_rule_range` block of
/// `aws_emr_block_public_access_configuration` (derived from provider schema).
@immutable
final class EmrBlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange {
  const EmrBlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange({
    required this.maxRange,
    required this.minRange,
  });

  final TfArg<num> maxRange;

  final TfArg<num> minRange;

  Map<String, Object?> encode() => {
    'max_range': maxRange.toTfJson(),
    'min_range': minRange.toTfJson(),
  };
}

/// Factory wrapper for `aws_emr_block_public_access_configuration`.
final class AwsEmrBlockPublicAccessConfiguration extends Resource {
  static const String tfType = 'aws_emr_block_public_access_configuration';

  AwsEmrBlockPublicAccessConfiguration({
    required super.localName,
    required TfArg<bool> blockPublicSecurityGroupRules,
    TfArg<String>? region,
    List<
      EmrBlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange
    >?
    permittedPublicSecurityGroupRuleRange,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'block_public_security_group_rules': blockPublicSecurityGroupRules,
           if (region != null) 'region': region,
           if (permittedPublicSecurityGroupRuleRange != null)
             'permitted_public_security_group_rule_range': TfArg.literal([
               for (final e in permittedPublicSecurityGroupRuleRange)
                 e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEmrBlockPublicAccessConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

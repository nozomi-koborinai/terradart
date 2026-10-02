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

  @internal
  Map<String, Object?> encode() => {
    'max_range': maxRange.toTfJson(),
    'min_range': minRange.toTfJson(),
  };
}

/// Factory wrapper for `aws_emr_block_public_access_configuration`.
final class AwsEmrBlockPublicAccessConfiguration extends Resource {
  static const String tfType = 'aws_emr_block_public_access_configuration';

  AwsEmrBlockPublicAccessConfiguration(
    super.localName, {
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
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrBlockPublicAccessConfiguration>`.
  RefTo<AwsEmrBlockPublicAccessConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `block_public_security_group_rules` attribute.
  TfRef<bool> get blockPublicSecurityGroupRules =>
      TfRef.attribute<bool>(this, 'block_public_security_group_rules');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

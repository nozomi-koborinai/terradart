// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_organization_configuration_feature`.
const Set<String> _awsGuarddutyOrganizationConfigurationFeatureSensitive =
    <String>{};

/// Typed helper for the `additional_configuration` block of
/// `aws_guardduty_organization_configuration_feature` (derived from provider schema).
@immutable
final class GuarddutyOrganizationConfigurationFeatureAdditionalConfiguration {
  const GuarddutyOrganizationConfigurationFeatureAdditionalConfiguration({
    required this.autoEnable,
    required this.name,
  });

  final TfArg<String> autoEnable;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'auto_enable': autoEnable.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_guardduty_organization_configuration_feature`.
final class AwsGuarddutyOrganizationConfigurationFeature extends Resource {
  static const String tfType =
      'aws_guardduty_organization_configuration_feature';

  AwsGuarddutyOrganizationConfigurationFeature({
    required super.localName,
    required TfArg<String> autoEnable,
    required TfArg<String> detectorId,
    required TfArg<String> name,
    TfArg<String>? region,
    List<GuarddutyOrganizationConfigurationFeatureAdditionalConfiguration>?
    additionalConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_enable': autoEnable,
           'detector_id': detectorId,
           'name': name,
           if (region != null) 'region': region,
           if (additionalConfiguration != null)
             'additional_configuration': TfArg.literal([
               for (final e in additionalConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGuarddutyOrganizationConfigurationFeatureSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

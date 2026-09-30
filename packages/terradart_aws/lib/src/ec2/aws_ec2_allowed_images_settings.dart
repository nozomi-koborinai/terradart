// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_allowed_images_settings`.
const Set<String> _awsEc2AllowedImagesSettingsSensitive = <String>{};

/// Ec2 Allowed Images Settings enum for `state`.
enum Ec2AllowedImagesSettingsState implements TerraformEnum {
  enabled('enabled'),
  auditMode('audit-mode');

  const Ec2AllowedImagesSettingsState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `image_criterion` block of
/// `aws_ec2_allowed_images_settings` (derived from provider schema).
@immutable
final class Ec2AllowedImagesSettingsImageCriterion {
  const Ec2AllowedImagesSettingsImageCriterion({
    this.imageNames,
    this.imageProviders,
    this.marketplaceProductCodes,
    this.creationDateCondition,
    this.deprecationTimeCondition,
  });

  final TfArg<List<String>>? imageNames;

  final TfArg<List<String>>? imageProviders;

  final TfArg<List<String>>? marketplaceProductCodes;

  final List<Ec2AllowedImagesSettingsCreationDateCondition>?
  creationDateCondition;

  final List<Ec2AllowedImagesSettingsDeprecationTimeCondition>?
  deprecationTimeCondition;

  Map<String, Object?> encode() => {
    'image_names': ?imageNames?.toTfJson(),
    'image_providers': ?imageProviders?.toTfJson(),
    'marketplace_product_codes': ?marketplaceProductCodes?.toTfJson(),
    if (creationDateCondition != null)
      'creation_date_condition': [
        for (final e in creationDateCondition!) e.encode(),
      ],
    if (deprecationTimeCondition != null)
      'deprecation_time_condition': [
        for (final e in deprecationTimeCondition!) e.encode(),
      ],
  };
}

/// Typed helper for the `image_criterion.creation_date_condition` block of
/// `aws_ec2_allowed_images_settings` (derived from provider schema).
@immutable
final class Ec2AllowedImagesSettingsCreationDateCondition {
  const Ec2AllowedImagesSettingsCreationDateCondition({
    this.maximumDaysSinceCreated,
  });

  final TfArg<num>? maximumDaysSinceCreated;

  Map<String, Object?> encode() => {
    'maximum_days_since_created': ?maximumDaysSinceCreated?.toTfJson(),
  };
}

/// Typed helper for the `image_criterion.deprecation_time_condition` block of
/// `aws_ec2_allowed_images_settings` (derived from provider schema).
@immutable
final class Ec2AllowedImagesSettingsDeprecationTimeCondition {
  const Ec2AllowedImagesSettingsDeprecationTimeCondition({
    this.maximumDaysSinceDeprecated,
  });

  final TfArg<num>? maximumDaysSinceDeprecated;

  Map<String, Object?> encode() => {
    'maximum_days_since_deprecated': ?maximumDaysSinceDeprecated?.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_allowed_images_settings`.
final class AwsEc2AllowedImagesSettings extends Resource {
  static const String tfType = 'aws_ec2_allowed_images_settings';

  AwsEc2AllowedImagesSettings({
    required super.localName,
    TfArg<String>? region,
    required TfArg<Ec2AllowedImagesSettingsState> state,
    List<Ec2AllowedImagesSettingsImageCriterion>? imageCriterion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'state': state,
           if (imageCriterion != null)
             'image_criterion': TfArg.literal([
               for (final e in imageCriterion) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2AllowedImagesSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2AllowedImagesSettings>`.
  RefTo<AwsEc2AllowedImagesSettings> get ref => RefTo.of(this);

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');
}

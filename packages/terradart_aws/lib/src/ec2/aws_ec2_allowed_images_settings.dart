// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_allowed_images_settings`.
const Set<String> _awsEc2AllowedImagesSettingsSensitive = <String>{};

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

  final TfArg<List<Object?>>? imageNames;

  final TfArg<List<Object?>>? imageProviders;

  final TfArg<List<Object?>>? marketplaceProductCodes;

  final List<Ec2AllowedImagesSettingsImageCriterionCreationDateCondition>?
  creationDateCondition;

  final List<Ec2AllowedImagesSettingsImageCriterionDeprecationTimeCondition>?
  deprecationTimeCondition;

  Map<String, Object?> encode() => {
    if (imageNames != null) 'image_names': imageNames!.toTfJson(),
    if (imageProviders != null) 'image_providers': imageProviders!.toTfJson(),
    if (marketplaceProductCodes != null)
      'marketplace_product_codes': marketplaceProductCodes!.toTfJson(),
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
final class Ec2AllowedImagesSettingsImageCriterionCreationDateCondition {
  const Ec2AllowedImagesSettingsImageCriterionCreationDateCondition({
    this.maximumDaysSinceCreated,
  });

  final TfArg<num>? maximumDaysSinceCreated;

  Map<String, Object?> encode() => {
    if (maximumDaysSinceCreated != null)
      'maximum_days_since_created': maximumDaysSinceCreated!.toTfJson(),
  };
}

/// Typed helper for the `image_criterion.deprecation_time_condition` block of
/// `aws_ec2_allowed_images_settings` (derived from provider schema).
@immutable
final class Ec2AllowedImagesSettingsImageCriterionDeprecationTimeCondition {
  const Ec2AllowedImagesSettingsImageCriterionDeprecationTimeCondition({
    this.maximumDaysSinceDeprecated,
  });

  final TfArg<num>? maximumDaysSinceDeprecated;

  Map<String, Object?> encode() => {
    if (maximumDaysSinceDeprecated != null)
      'maximum_days_since_deprecated': maximumDaysSinceDeprecated!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_allowed_images_settings`.
final class AwsEc2AllowedImagesSettings extends Resource {
  static const String tfType = 'aws_ec2_allowed_images_settings';

  AwsEc2AllowedImagesSettings({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> state,
    List<Ec2AllowedImagesSettingsImageCriterion>? imageCriterion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'state': state,
           if (imageCriterion != null)
             'image_criterion': TfArg.literal([
               for (final e in imageCriterion) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2AllowedImagesSettingsSensitive;
}

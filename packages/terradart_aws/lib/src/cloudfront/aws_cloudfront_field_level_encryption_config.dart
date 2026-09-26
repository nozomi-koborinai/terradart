// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_field_level_encryption_config`.
const Set<String> _awsCloudfrontFieldLevelEncryptionConfigSensitive =
    <String>{};

/// Typed helper for the `content_type_profile_config` block of
/// `aws_cloudfront_field_level_encryption_config` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfig {
  const CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfig({
    required this.forwardWhenContentTypeIsUnknown,
    required this.contentTypeProfiles,
  });

  final TfArg<bool> forwardWhenContentTypeIsUnknown;

  final CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles
  contentTypeProfiles;

  Map<String, Object?> encode() => {
    'forward_when_content_type_is_unknown': forwardWhenContentTypeIsUnknown
        .toTfJson(),
    'content_type_profiles': contentTypeProfiles.encode(),
  };
}

/// Typed helper for the `content_type_profile_config.content_type_profiles` block of
/// `aws_cloudfront_field_level_encryption_config` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles {
  const CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles({
    required this.items,
  });

  final List<
    CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItems
  >
  items;

  Map<String, Object?> encode() => {
    'items': [for (final e in items) e.encode()],
  };
}

/// Typed helper for the `content_type_profile_config.content_type_profiles.items` block of
/// `aws_cloudfront_field_level_encryption_config` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItems {
  const CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItems({
    required this.contentType,
    required this.format,
    this.profileId,
  });

  final TfArg<String> contentType;

  final TfArg<String> format;

  final TfArg<String>? profileId;

  Map<String, Object?> encode() => {
    'content_type': contentType.toTfJson(),
    'format': format.toTfJson(),
    if (profileId != null) 'profile_id': profileId!.toTfJson(),
  };
}

/// Typed helper for the `query_arg_profile_config` block of
/// `aws_cloudfront_field_level_encryption_config` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfig {
  const CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfig({
    required this.forwardWhenQueryArgProfileIsUnknown,
    this.queryArgProfiles,
  });

  final TfArg<bool> forwardWhenQueryArgProfileIsUnknown;

  final CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles?
  queryArgProfiles;

  Map<String, Object?> encode() => {
    'forward_when_query_arg_profile_is_unknown':
        forwardWhenQueryArgProfileIsUnknown.toTfJson(),
    if (queryArgProfiles != null)
      'query_arg_profiles': queryArgProfiles!.encode(),
  };
}

/// Typed helper for the `query_arg_profile_config.query_arg_profiles` block of
/// `aws_cloudfront_field_level_encryption_config` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles {
  const CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles({
    this.items,
  });

  final List<
    CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItems
  >?
  items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `query_arg_profile_config.query_arg_profiles.items` block of
/// `aws_cloudfront_field_level_encryption_config` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItems {
  const CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItems({
    required this.profileId,
    required this.queryArg,
  });

  final TfArg<String> profileId;

  final TfArg<String> queryArg;

  Map<String, Object?> encode() => {
    'profile_id': profileId.toTfJson(),
    'query_arg': queryArg.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_field_level_encryption_config`.
final class AwsCloudfrontFieldLevelEncryptionConfig extends Resource {
  static const String tfType = 'aws_cloudfront_field_level_encryption_config';

  AwsCloudfrontFieldLevelEncryptionConfig({
    required super.localName,
    TfArg<String>? comment,
    required CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfig
    contentTypeProfileConfig,
    required CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfig
    queryArgProfileConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'content_type_profile_config': TfArg.literal(
             contentTypeProfileConfig.encode(),
           ),
           'query_arg_profile_config': TfArg.literal(
             queryArgProfileConfig.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontFieldLevelEncryptionConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `caller_reference` attribute.
  TfRef<String> get callerReference =>
      TfRef.attribute<String>(this, 'caller_reference');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

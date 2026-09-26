// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_access_grant`.
const Set<String> _awsS3controlAccessGrantSensitive = <String>{};

/// Typed helper for the `access_grants_location_configuration` block of
/// `aws_s3control_access_grant` (derived from provider schema).
@immutable
final class S3controlAccessGrantAccessGrantsLocationConfiguration {
  const S3controlAccessGrantAccessGrantsLocationConfiguration({
    this.s3SubPrefix,
  });

  final TfArg<String>? s3SubPrefix;

  Map<String, Object?> encode() => {
    if (s3SubPrefix != null) 's3_sub_prefix': s3SubPrefix!.toTfJson(),
  };
}

/// Typed helper for the `grantee` block of
/// `aws_s3control_access_grant` (derived from provider schema).
@immutable
final class S3controlAccessGrantGrantee {
  const S3controlAccessGrantGrantee({
    required this.granteeIdentifier,
    required this.granteeType,
  });

  final TfArg<String> granteeIdentifier;

  final TfArg<String> granteeType;

  Map<String, Object?> encode() => {
    'grantee_identifier': granteeIdentifier.toTfJson(),
    'grantee_type': granteeType.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_access_grant`.
final class AwsS3controlAccessGrant extends Resource {
  static const String tfType = 'aws_s3control_access_grant';

  AwsS3controlAccessGrant({
    required super.localName,
    required TfArg<String> accessGrantsLocationId,
    TfArg<String>? accountId,
    required TfArg<String> permission,
    TfArg<String>? region,
    TfArg<String>? s3PrefixType,
    TfArg<Map<String, String>>? tags,
    List<S3controlAccessGrantAccessGrantsLocationConfiguration>?
    accessGrantsLocationConfiguration,
    List<S3controlAccessGrantGrantee>? grantee,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_grants_location_id': accessGrantsLocationId,
           if (accountId != null) 'account_id': accountId,
           'permission': permission,
           if (region != null) 'region': region,
           if (s3PrefixType != null) 's3_prefix_type': s3PrefixType,
           if (tags != null) 'tags': tags,
           if (accessGrantsLocationConfiguration != null)
             'access_grants_location_configuration': TfArg.literal([
               for (final e in accessGrantsLocationConfiguration) e.encode(),
             ]),
           if (grantee != null)
             'grantee': TfArg.literal([for (final e in grantee) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlAccessGrantSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_grant_arn` attribute.
  TfRef<String> get accessGrantArn =>
      TfRef.attribute<String>(this, 'access_grant_arn');

  /// Reference to `access_grant_id` attribute.
  TfRef<String> get accessGrantId =>
      TfRef.attribute<String>(this, 'access_grant_id');

  /// Reference to `grant_scope` attribute.
  TfRef<String> get grantScope => TfRef.attribute<String>(this, 'grant_scope');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_outposts_outpost`.
const Set<String> _awsOutpostsOutpostSensitive = <String>{};

/// Factory wrapper for `aws_outposts_outpost`.
final class DataAwsOutpostsOutpost extends Data {
  static const String tfType = 'aws_outposts_outpost';

  DataAwsOutpostsOutpost({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? ownerId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': ?arn,
           'name': ?name,
           'owner_id': ?ownerId,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsOutpostSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `lifecycle_status` attribute.
  TfRef<String> get lifecycleStatus =>
      TfRef.attribute<String>(this, 'lifecycle_status');

  /// Reference to `site_arn` attribute.
  TfRef<String> get siteArn => TfRef.attribute<String>(this, 'site_arn');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `supported_hardware_type` attribute.
  TfRef<String> get supportedHardwareType =>
      TfRef.attribute<String>(this, 'supported_hardware_type');

  /// Reference to `arn` attribute.
  TfRef<String> get arnRef => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerIdRef => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

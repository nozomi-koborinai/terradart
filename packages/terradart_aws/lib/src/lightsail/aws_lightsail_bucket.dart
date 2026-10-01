// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_bucket`.
const Set<String> _awsLightsailBucketSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_bucket`.
final class AwsLightsailBucket extends Resource {
  static const String tfType = 'aws_lightsail_bucket';

  AwsLightsailBucket(
    super.localName, {
    required TfArg<String> bundleId,
    TfArg<bool>? forceDelete,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bundle_id': bundleId,
           'force_delete': ?forceDelete,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailBucket>`.
  RefTo<AwsLightsailBucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `support_code` attribute.
  TfRef<String> get supportCode =>
      TfRef.attribute<String>(this, 'support_code');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `bundle_id` attribute.
  TfRef<String> get bundleId => TfRef.attribute<String>(this, 'bundle_id');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

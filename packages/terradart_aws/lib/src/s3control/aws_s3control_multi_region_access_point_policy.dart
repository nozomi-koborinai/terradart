// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_multi_region_access_point_policy`.
const Set<String> _awsS3controlMultiRegionAccessPointPolicySensitive =
    <String>{};

/// Typed helper for the `details` block of
/// `aws_s3control_multi_region_access_point_policy` (derived from provider schema).
@immutable
final class S3controlMultiRegionAccessPointPolicyDetails {
  const S3controlMultiRegionAccessPointPolicyDetails({
    required this.name,
    required this.policy,
  });

  final TfArg<String> name;

  final TfArg<String> policy;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'policy': policy.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_multi_region_access_point_policy`.
final class AwsS3controlMultiRegionAccessPointPolicy extends Resource {
  static const String tfType = 'aws_s3control_multi_region_access_point_policy';

  AwsS3controlMultiRegionAccessPointPolicy({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? region,
    required S3controlMultiRegionAccessPointPolicyDetails details,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'region': ?region,
           'details': TfArg.literal(details.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlMultiRegionAccessPointPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3controlMultiRegionAccessPointPolicy>`.
  RefTo<AwsS3controlMultiRegionAccessPointPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `established` attribute.
  TfRef<String> get established => TfRef.attribute<String>(this, 'established');

  /// Reference to `proposed` attribute.
  TfRef<String> get proposed => TfRef.attribute<String>(this, 'proposed');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

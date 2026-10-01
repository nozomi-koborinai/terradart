// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_opensearch_package`.
const Set<String> _awsOpensearchPackageSensitive = <String>{};

/// Opensearch Package enum for `package_type`.
enum OpensearchPackageType implements TerraformEnum {
  txtDictionary('TXT-DICTIONARY'),
  zipPlugin('ZIP-PLUGIN'),
  packageLicense('PACKAGE-LICENSE'),
  packageConfig('PACKAGE-CONFIG');

  const OpensearchPackageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `package_source` block of
/// `aws_opensearch_package` (derived from provider schema).
@immutable
final class OpensearchPackageSource {
  const OpensearchPackageSource({
    required this.s3BucketName,
    required this.s3Key,
  });

  final RefTo<AwsS3Bucket> s3BucketName;

  final TfArg<String> s3Key;

  Map<String, Object?> encode() => {
    's3_bucket_name': s3BucketName.encodeAs('id').toTfJson(),
    's3_key': s3Key.toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearch_package`.
final class AwsOpensearchPackage extends Resource {
  static const String tfType = 'aws_opensearch_package';

  AwsOpensearchPackage(
    super.localName, {
    TfArg<String>? engineVersion,
    TfArg<String>? packageDescription,
    required TfArg<String> packageName,
    required TfArg<OpensearchPackageType> packageType,
    TfArg<String>? region,
    required OpensearchPackageSource packageSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'engine_version': ?engineVersion,
           'package_description': ?packageDescription,
           'package_name': packageName,
           'package_type': packageType,
           'region': ?region,
           'package_source': TfArg.literal(packageSource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOpensearchPackageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchPackage>`.
  RefTo<AwsOpensearchPackage> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `available_package_version` attribute.
  TfRef<String> get availablePackageVersion =>
      TfRef.attribute<String>(this, 'available_package_version');

  /// Reference to `package_id` attribute.
  TfRef<String> get packageId => TfRef.attribute<String>(this, 'package_id');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `package_description` attribute.
  TfRef<String> get packageDescription =>
      TfRef.attribute<String>(this, 'package_description');

  /// Reference to `package_name` attribute.
  TfRef<String> get packageName =>
      TfRef.attribute<String>(this, 'package_name');

  /// Reference to `package_type` attribute.
  TfRef<String> get packageType =>
      TfRef.attribute<String>(this, 'package_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

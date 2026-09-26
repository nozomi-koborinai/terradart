// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_package`.
const Set<String> _awsOpensearchPackageSensitive = <String>{};

/// Typed helper for the `package_source` block of
/// `aws_opensearch_package` (derived from provider schema).
@immutable
final class OpensearchPackagePackageSource {
  const OpensearchPackagePackageSource({
    required this.s3BucketName,
    required this.s3Key,
  });

  final TfArg<String> s3BucketName;

  final TfArg<String> s3Key;

  Map<String, Object?> encode() => {
    's3_bucket_name': s3BucketName.toTfJson(),
    's3_key': s3Key.toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearch_package`.
final class AwsOpensearchPackage extends Resource {
  static const String tfType = 'aws_opensearch_package';

  AwsOpensearchPackage({
    required super.localName,
    TfArg<String>? engineVersion,
    TfArg<String>? packageDescription,
    required TfArg<String> packageName,
    required TfArg<String> packageType,
    TfArg<String>? region,
    required OpensearchPackagePackageSource packageSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (engineVersion != null) 'engine_version': engineVersion,
           if (packageDescription != null)
             'package_description': packageDescription,
           'package_name': packageName,
           'package_type': packageType,
           if (region != null) 'region': region,
           'package_source': TfArg.literal(packageSource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOpensearchPackageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `available_package_version` attribute.
  TfRef<String> get availablePackageVersion =>
      TfRef.attribute<String>(this, 'available_package_version');

  /// Reference to `package_id` attribute.
  TfRef<String> get packageId => TfRef.attribute<String>(this, 'package_id');
}

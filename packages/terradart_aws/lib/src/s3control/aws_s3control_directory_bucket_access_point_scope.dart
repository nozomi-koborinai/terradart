// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_directory_bucket_access_point_scope`.
const Set<String> _awsS3controlDirectoryBucketAccessPointScopeSensitive =
    <String>{};

/// Typed helper for the `scope` block of
/// `aws_s3control_directory_bucket_access_point_scope` (derived from provider schema).
@immutable
final class S3controlDirectoryBucketAccessPointScopeScope {
  const S3controlDirectoryBucketAccessPointScopeScope({
    this.permissions,
    this.prefixes,
  });

  final TfArg<List<Object?>>? permissions;

  final TfArg<List<Object?>>? prefixes;

  Map<String, Object?> encode() => {
    if (permissions != null) 'permissions': permissions!.toTfJson(),
    if (prefixes != null) 'prefixes': prefixes!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_directory_bucket_access_point_scope`.
final class AwsS3controlDirectoryBucketAccessPointScope extends Resource {
  static const String tfType =
      'aws_s3control_directory_bucket_access_point_scope';

  AwsS3controlDirectoryBucketAccessPointScope({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    TfArg<String>? region,
    List<S3controlDirectoryBucketAccessPointScopeScope>? scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           if (region != null) 'region': region,
           if (scope != null)
             'scope': TfArg.literal([for (final e in scope) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlDirectoryBucketAccessPointScopeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

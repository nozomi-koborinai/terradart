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
final class S3controlDirectoryBucketAccessPointScope {
  const S3controlDirectoryBucketAccessPointScope({
    this.permissions,
    this.prefixes,
  });

  final List<TfArg<S3controlDirectoryBucketAccessPointScopePermissions>>?
  permissions;

  final TfArg<List<String>>? prefixes;

  Map<String, Object?> encode() => {
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
    'prefixes': ?prefixes?.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
enum S3controlDirectoryBucketAccessPointScopePermissions
    implements TerraformEnum {
  getobject('GetObject'),
  getobjectattributes('GetObjectAttributes'),
  listmultipartuploadparts('ListMultipartUploadParts'),
  listbucket('ListBucket'),
  listbucketmultipartuploads('ListBucketMultipartUploads'),
  putobject('PutObject'),
  deleteobject('DeleteObject'),
  abortmultipartupload('AbortMultipartUpload');

  const S3controlDirectoryBucketAccessPointScopePermissions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    List<S3controlDirectoryBucketAccessPointScope>? scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           'region': ?region,
           if (scope != null)
             'scope': TfArg.literal([for (final e in scope) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlDirectoryBucketAccessPointScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3controlDirectoryBucketAccessPointScope>`.
  RefTo<AwsS3controlDirectoryBucketAccessPointScope> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

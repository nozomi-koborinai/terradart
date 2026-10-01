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

  final List<S3controlDirectoryBucketAccessPointScopePermissions>? permissions;

  final TfArg<List<String>>? prefixes;

  Map<String, Object?> encode() => {
    if (permissions != null)
      'permissions': [for (final e in permissions!) e.toTfJson()],
    'prefixes': ?prefixes?.toTfJson(),
  };
}

/// `permissions` — derived from the provider schema description.
extension type const S3controlDirectoryBucketAccessPointScopePermissions._(
  TfArg<String> _
) implements TfArg<String> {
  S3controlDirectoryBucketAccessPointScopePermissions.variable(String name)
    : this._(TfArg.variable(name));
  S3controlDirectoryBucketAccessPointScopePermissions.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const S3controlDirectoryBucketAccessPointScopePermissions.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const getobject =
      S3controlDirectoryBucketAccessPointScopePermissions._(
        TfArgLiteral('GetObject'),
      );
  static const getobjectattributes =
      S3controlDirectoryBucketAccessPointScopePermissions._(
        TfArgLiteral('GetObjectAttributes'),
      );
  static const listmultipartuploadparts =
      S3controlDirectoryBucketAccessPointScopePermissions._(
        TfArgLiteral('ListMultipartUploadParts'),
      );
  static const listbucket =
      S3controlDirectoryBucketAccessPointScopePermissions._(
        TfArgLiteral('ListBucket'),
      );
  static const listbucketmultipartuploads =
      S3controlDirectoryBucketAccessPointScopePermissions._(
        TfArgLiteral('ListBucketMultipartUploads'),
      );
  static const putobject =
      S3controlDirectoryBucketAccessPointScopePermissions._(
        TfArgLiteral('PutObject'),
      );
  static const deleteobject =
      S3controlDirectoryBucketAccessPointScopePermissions._(
        TfArgLiteral('DeleteObject'),
      );
  static const abortmultipartupload =
      S3controlDirectoryBucketAccessPointScopePermissions._(
        TfArgLiteral('AbortMultipartUpload'),
      );

  static const List<S3controlDirectoryBucketAccessPointScopePermissions>
  values = [
    getobject,
    getobjectattributes,
    listmultipartuploadparts,
    listbucket,
    listbucketmultipartuploads,
    putobject,
    deleteobject,
    abortmultipartupload,
  ];
}

/// Factory wrapper for `aws_s3control_directory_bucket_access_point_scope`.
final class AwsS3controlDirectoryBucketAccessPointScope extends Resource {
  static const String tfType =
      'aws_s3control_directory_bucket_access_point_scope';

  AwsS3controlDirectoryBucketAccessPointScope(
    super.localName, {
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

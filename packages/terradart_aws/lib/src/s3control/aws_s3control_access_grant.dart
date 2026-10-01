// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_access_grant`.
const Set<String> _awsS3controlAccessGrantSensitive = <String>{};

/// S3control Access Grant enum for `permission`.
extension type const S3controlAccessGrantPermission._(TfArg<String> _)
    implements TfArg<String> {
  S3controlAccessGrantPermission.variable(String name)
    : this._(TfArg.variable(name));
  S3controlAccessGrantPermission.expression(String template)
    : this._(TfArg.expression(template));
  const S3controlAccessGrantPermission.arg(TfArg<String> arg) : this._(arg);

  static const read = S3controlAccessGrantPermission._(TfArgLiteral('READ'));
  static const write = S3controlAccessGrantPermission._(TfArgLiteral('WRITE'));
  static const readwrite = S3controlAccessGrantPermission._(
    TfArgLiteral('READWRITE'),
  );

  static const List<S3controlAccessGrantPermission> values = [
    read,
    write,
    readwrite,
  ];
}

/// S3control Access Grant S3 Prefix enum for `s3_prefix_type`.
extension type const S3controlAccessGrantS3PrefixType._(TfArg<String> _)
    implements TfArg<String> {
  S3controlAccessGrantS3PrefixType.variable(String name)
    : this._(TfArg.variable(name));
  S3controlAccessGrantS3PrefixType.expression(String template)
    : this._(TfArg.expression(template));
  const S3controlAccessGrantS3PrefixType.arg(TfArg<String> arg) : this._(arg);

  static const object = S3controlAccessGrantS3PrefixType._(
    TfArgLiteral('Object'),
  );

  static const List<S3controlAccessGrantS3PrefixType> values = [object];
}

/// Typed helper for the `access_grants_location_configuration` block of
/// `aws_s3control_access_grant` (derived from provider schema).
@immutable
final class S3controlAccessGrantAccessGrantsLocationConfiguration {
  const S3controlAccessGrantAccessGrantsLocationConfiguration({
    this.s3SubPrefix,
  });

  final TfArg<String>? s3SubPrefix;

  Map<String, Object?> encode() => {'s3_sub_prefix': ?s3SubPrefix?.toTfJson()};
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

  final S3controlAccessGrantGranteeType granteeType;

  Map<String, Object?> encode() => {
    'grantee_identifier': granteeIdentifier.toTfJson(),
    'grantee_type': granteeType.toTfJson(),
  };
}

/// `grantee_type` — derived from the provider schema description.
extension type const S3controlAccessGrantGranteeType._(TfArg<String> _)
    implements TfArg<String> {
  S3controlAccessGrantGranteeType.variable(String name)
    : this._(TfArg.variable(name));
  S3controlAccessGrantGranteeType.expression(String template)
    : this._(TfArg.expression(template));
  const S3controlAccessGrantGranteeType.arg(TfArg<String> arg) : this._(arg);

  static const directoryUser = S3controlAccessGrantGranteeType._(
    TfArgLiteral('DIRECTORY_USER'),
  );
  static const directoryGroup = S3controlAccessGrantGranteeType._(
    TfArgLiteral('DIRECTORY_GROUP'),
  );
  static const iam = S3controlAccessGrantGranteeType._(TfArgLiteral('IAM'));

  static const List<S3controlAccessGrantGranteeType> values = [
    directoryUser,
    directoryGroup,
    iam,
  ];
}

/// Factory wrapper for `aws_s3control_access_grant`.
final class AwsS3controlAccessGrant extends Resource {
  static const String tfType = 'aws_s3control_access_grant';

  AwsS3controlAccessGrant(
    super.localName, {
    required TfArg<String> accessGrantsLocationId,
    TfArg<String>? accountId,
    required S3controlAccessGrantPermission permission,
    TfArg<String>? region,
    S3controlAccessGrantS3PrefixType? s3PrefixType,
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
           'account_id': ?accountId,
           'permission': permission,
           'region': ?region,
           's3_prefix_type': ?s3PrefixType,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3controlAccessGrant>`.
  RefTo<AwsS3controlAccessGrant> get ref => RefTo.of(this);

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

  /// Reference to `access_grants_location_id` attribute.
  TfRef<String> get accessGrantsLocationId =>
      TfRef.attribute<String>(this, 'access_grants_location_id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `permission` attribute.
  TfRef<String> get permission => TfRef.attribute<String>(this, 'permission');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_prefix_type` attribute.
  TfRef<String> get s3PrefixType =>
      TfRef.attribute<String>(this, 's3_prefix_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

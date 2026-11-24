// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatchomni_organization_access_grant`.
const Set<String> _awsCloudwatchomniOrganizationAccessGrantSensitive =
    <String>{};

/// Cloudwatchomni Organization Access Grant enum for `permission`.
extension type const CloudwatchomniOrganizationAccessGrantPermission._(
  TfArg<String> _
)
    implements TfArg<String> {
  CloudwatchomniOrganizationAccessGrantPermission.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniOrganizationAccessGrantPermission.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniOrganizationAccessGrantPermission.arg(TfArg<String> arg)
    : this._(arg);

  static const admin = CloudwatchomniOrganizationAccessGrantPermission._(
    TfArgLiteral('ADMIN'),
  );

  static const List<CloudwatchomniOrganizationAccessGrantPermission> values = [
    admin,
  ];
}

/// Typed helper for the `principal` block of
/// `aws_cloudwatchomni_organization_access_grant` (derived from provider schema).
@immutable
final class CloudwatchomniOrganizationAccessGrantPrincipal {
  const CloudwatchomniOrganizationAccessGrantPrincipal({
    this.principalId,
    required this.principalType,
    this.principalAttribute,
  });

  final TfArg<String>? principalId;

  final CloudwatchomniOrganizationAccessGrantPrincipalType principalType;

  final List<CloudwatchomniOrganizationAccessGrantPrincipalAttribute>?
  principalAttribute;

  @internal
  Map<String, Object?> encode() => {
    'principal_id': ?principalId?.toTfJson(),
    'principal_type': principalType.toTfJson(),
    if (principalAttribute != null)
      'principal_attribute': [for (final e in principalAttribute!) e.encode()],
  };
}

/// `principal_type` — derived from the provider schema description.
extension type const CloudwatchomniOrganizationAccessGrantPrincipalType._(
  TfArg<String> _
)
    implements TfArg<String> {
  CloudwatchomniOrganizationAccessGrantPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniOrganizationAccessGrantPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniOrganizationAccessGrantPrincipalType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const idcUser = CloudwatchomniOrganizationAccessGrantPrincipalType._(
    TfArgLiteral('IDC_USER'),
  );
  static const idcGroup = CloudwatchomniOrganizationAccessGrantPrincipalType._(
    TfArgLiteral('IDC_GROUP'),
  );
  static const iamUser = CloudwatchomniOrganizationAccessGrantPrincipalType._(
    TfArgLiteral('IAM_USER'),
  );
  static const iamRole = CloudwatchomniOrganizationAccessGrantPrincipalType._(
    TfArgLiteral('IAM_ROLE'),
  );
  static const iamRoot = CloudwatchomniOrganizationAccessGrantPrincipalType._(
    TfArgLiteral('IAM_ROOT'),
  );

  static const List<CloudwatchomniOrganizationAccessGrantPrincipalType> values =
      [idcUser, idcGroup, iamUser, iamRole, iamRoot];
}

/// Typed helper for the `principal.principal_attribute` block of
/// `aws_cloudwatchomni_organization_access_grant` (derived from provider schema).
@immutable
final class CloudwatchomniOrganizationAccessGrantPrincipalAttribute {
  const CloudwatchomniOrganizationAccessGrantPrincipalAttribute({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatchomni_organization_access_grant`.
final class AwsCloudwatchomniOrganizationAccessGrant extends Resource {
  static const String tfType = 'aws_cloudwatchomni_organization_access_grant';

  AwsCloudwatchomniOrganizationAccessGrant(
    super.localName, {
    required TfArg<String> domainId,
    required TfArg<String> name,
    required CloudwatchomniOrganizationAccessGrantPermission permission,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<CloudwatchomniOrganizationAccessGrantPrincipal>? principal,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_id': domainId,
           'name': name,
           'permission': permission,
           'region': ?region,
           'tags': ?tags,
           if (principal != null)
             'principal': TfArg.literal([
               for (final e in principal) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchomniOrganizationAccessGrantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniOrganizationAccessGrant>`.
  RefTo<AwsCloudwatchomniOrganizationAccessGrant> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `grant_id` attribute.
  TfRef<String> get grantId => TfRef.attribute<String>(this, 'grant_id');

  /// Reference to `grant_type` attribute.
  TfRef<String> get grantType => TfRef.attribute<String>(this, 'grant_type');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `permission` attribute.
  TfRef<String> get permission => TfRef.attribute<String>(this, 'permission');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_authorized_orgs_desc`.
const Set<String> _googleAccessContextManagerAuthorizedOrgsDescSensitive =
    <String>{};

/// `authorization_type` for [GoogleAccessContextManagerAuthorizedOrgsDesc].
extension type const AccessContextManagerAuthorizedOrgsDescAuthorizationType._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAuthorizedOrgsDescAuthorizationType.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerAuthorizedOrgsDescAuthorizationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerAuthorizedOrgsDescAuthorizationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const trust =
      AccessContextManagerAuthorizedOrgsDescAuthorizationType._(
        TfArgLiteral('AUTHORIZATION_TYPE_TRUST'),
      );

  static const List<AccessContextManagerAuthorizedOrgsDescAuthorizationType>
  values = [trust];
}

/// `asset_type` for [GoogleAccessContextManagerAuthorizedOrgsDesc].
extension type const AccessContextManagerAuthorizedOrgsDescAssetType._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAuthorizedOrgsDescAssetType.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerAuthorizedOrgsDescAssetType.expression(String template)
    : this._(TfArg.expression(template));
  const AccessContextManagerAuthorizedOrgsDescAssetType.arg(TfArg<String> arg)
    : this._(arg);

  static const device = AccessContextManagerAuthorizedOrgsDescAssetType._(
    TfArgLiteral('ASSET_TYPE_DEVICE'),
  );
  static const credentialStrength =
      AccessContextManagerAuthorizedOrgsDescAssetType._(
        TfArgLiteral('ASSET_TYPE_CREDENTIAL_STRENGTH'),
      );

  static const List<AccessContextManagerAuthorizedOrgsDescAssetType> values = [
    device,
    credentialStrength,
  ];
}

/// `authorization_direction` for [GoogleAccessContextManagerAuthorizedOrgsDesc].
extension type const AccessContextManagerAuthorizedOrgsDescAuthorizationDirection._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerAuthorizedOrgsDescAuthorizationDirection.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AccessContextManagerAuthorizedOrgsDescAuthorizationDirection.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerAuthorizedOrgsDescAuthorizationDirection.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const to =
      AccessContextManagerAuthorizedOrgsDescAuthorizationDirection._(
        TfArgLiteral('AUTHORIZATION_DIRECTION_TO'),
      );
  static const from =
      AccessContextManagerAuthorizedOrgsDescAuthorizationDirection._(
        TfArgLiteral('AUTHORIZATION_DIRECTION_FROM'),
      );

  static const List<
    AccessContextManagerAuthorizedOrgsDescAuthorizationDirection
  >
  values = [to, from];
}

/// Factory wrapper for `google_access_context_manager_authorized_orgs_desc`.
///
/// An authorized organizations description describes a list of organizations
/// (1) that have been authorized to use certain asset (for example, device)
/// data owned by different organizations at the enforcement points, or (2) with
/// certain asset (for example, device) have been authorized to access the
/// resources in another organization at the enforcement points.
///
/// Access Context Manager **authorized orgs descriptor** — VPC-SC
/// cross-org trust metadata on an access policy. Creating the
/// descriptor does **not** evaluate traffic or grant live access.
///
/// Prefer a thin smoke stack: [parent] `accessPolicies/{policy}`,
/// [name] ending in `authorizedOrgsDescs/terradart_desc`, placeholder
/// [orgs], and the Hashicorp basic enums. Set [deletionPolicy] to
/// `DELETE`.
///
/// `access_context_quickstart` is apply-smoke skipped (needs a real
/// organization id), so this factory is synth + `terraform validate`
/// only.
///
/// Example:
/// ```dart
/// GoogleAccessContextManagerAuthorizedOrgsDesc(
///   'demo_orgs',
///   parent: TfArg.literal(
///     'accessPolicies/${policy.name.interpolation}',
///   ),
///   name: TfArg.literal(
///     'accessPolicies/${policy.name.interpolation}'
///     '/authorizedOrgsDescs/terradart_desc',
///   ),
///   orgs: TfArg.literal(['organizations/12345']),
///   authorizationType: AccessContextManagerAuthorizedOrgsDescAuthorizationType.trust,
///   assetType: AccessContextManagerAuthorizedOrgsDescAssetType.credentialStrength,
///   authorizationDirection: AccessContextManagerAuthorizedOrgsDescAuthorizationDirection.to,
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleAccessContextManagerAuthorizedOrgsDesc extends Resource {
  static const String tfType =
      'google_access_context_manager_authorized_orgs_desc';

  GoogleAccessContextManagerAuthorizedOrgsDesc(
    super.localName, {
    required TfArg<String> parent,
    required TfArg<String> name,
    TfArg<List<String>>? orgs,
    AccessContextManagerAuthorizedOrgsDescAuthorizationType? authorizationType,
    AccessContextManagerAuthorizedOrgsDescAssetType? assetType,
    AccessContextManagerAuthorizedOrgsDescAuthorizationDirection?
    authorizationDirection,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'name': name,
           'orgs': ?orgs,
           'authorization_type': ?authorizationType,
           'asset_type': ?assetType,
           'authorization_direction': ?authorizationDirection,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAuthorizedOrgsDescSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerAuthorizedOrgsDesc>`.
  RefTo<GoogleAccessContextManagerAuthorizedOrgsDesc> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `asset_type` attribute.
  TfRef<String> get assetType => TfRef.attribute<String>(this, 'asset_type');

  /// Reference to `authorization_direction` attribute.
  TfRef<String> get authorizationDirection =>
      TfRef.attribute<String>(this, 'authorization_direction');

  /// Reference to `authorization_type` attribute.
  TfRef<String> get authorizationType =>
      TfRef.attribute<String>(this, 'authorization_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `orgs` attribute.
  TfRef<List<String>> get orgs => TfRef.attribute<List<String>>(this, 'orgs');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}

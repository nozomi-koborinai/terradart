// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_authorized_orgs_desc`.
const Set<String> _googleAccessContextManagerAuthorizedOrgsDescSensitive =
    <String>{};

/// `authorization_type` for [GoogleAccessContextManagerAuthorizedOrgsDesc].
enum AccessContextManagerAuthorizedOrgsDescAuthorizationType
    implements TerraformEnum {
  trust('AUTHORIZATION_TYPE_TRUST');

  const AccessContextManagerAuthorizedOrgsDescAuthorizationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `asset_type` for [GoogleAccessContextManagerAuthorizedOrgsDesc].
enum AccessContextManagerAuthorizedOrgsDescAssetType implements TerraformEnum {
  device('ASSET_TYPE_DEVICE'),
  credentialStrength('ASSET_TYPE_CREDENTIAL_STRENGTH');

  const AccessContextManagerAuthorizedOrgsDescAssetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `authorization_direction` for [GoogleAccessContextManagerAuthorizedOrgsDesc].
enum AccessContextManagerAuthorizedOrgsDescAuthorizationDirection
    implements TerraformEnum {
  to('AUTHORIZATION_DIRECTION_TO'),
  from('AUTHORIZATION_DIRECTION_FROM');

  const AccessContextManagerAuthorizedOrgsDescAuthorizationDirection(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
///   localName: 'demo_orgs',
///   parent: TfArg.literal(
///     'accessPolicies/${policy.name.interpolation}',
///   ),
///   name: TfArg.literal(
///     'accessPolicies/${policy.name.interpolation}'
///     '/authorizedOrgsDescs/terradart_desc',
///   ),
///   orgs: TfArg.literal(['organizations/12345']),
///   authorizationType: TfArg.literal(
///     AccessContextManagerAuthorizedOrgsDescAuthorizationType.trust,
///   ),
///   assetType: TfArg.literal(
///     AccessContextManagerAuthorizedOrgsDescAssetType.credentialStrength,
///   ),
///   authorizationDirection: TfArg.literal(
///     AccessContextManagerAuthorizedOrgsDescAuthorizationDirection.to,
///   ),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleAccessContextManagerAuthorizedOrgsDesc extends Resource {
  static const String tfType =
      'google_access_context_manager_authorized_orgs_desc';

  GoogleAccessContextManagerAuthorizedOrgsDesc({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> name,
    TfArg<List<String>>? orgs,
    TfArg<AccessContextManagerAuthorizedOrgsDescAuthorizationType>?
    authorizationType,
    TfArg<AccessContextManagerAuthorizedOrgsDescAssetType>? assetType,
    TfArg<AccessContextManagerAuthorizedOrgsDescAuthorizationDirection>?
    authorizationDirection,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'name': name,
           if (orgs != null) 'orgs': orgs,
           if (authorizationType != null)
             'authorization_type': authorizationType,
           if (assetType != null) 'asset_type': assetType,
           if (authorizationDirection != null)
             'authorization_direction': authorizationDirection,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAuthorizedOrgsDescSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

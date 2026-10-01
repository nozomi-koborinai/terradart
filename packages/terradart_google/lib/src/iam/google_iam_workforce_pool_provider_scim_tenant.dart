// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workforce_pool_provider_scim_tenant`.
const Set<String> _googleIamWorkforcePoolProviderScimTenantSensitive =
    <String>{};

/// Factory wrapper for `google_iam_workforce_pool_provider_scim_tenant`.
///
/// Represents a SCIM tenant configuration for a Workforce Pool Provider. The
/// SCIM tenant configuration allows for the synchronization of user/group
/// identities from external identity provider into Google Cloud using the
/// System for Cross-domain Identity Management (SCIM) protocol.
///
/// Workforce pool SCIM tenant — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleIamWorkforcePoolProviderScimTenant extends Resource {
  static const String tfType = 'google_iam_workforce_pool_provider_scim_tenant';

  GoogleIamWorkforcePoolProviderScimTenant({
    required super.localName,
    required TfArg<Map<String, String>> claimMapping,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? hardDelete,
    required TfArg<String> location,
    required TfArg<String> providerId,
    required TfArg<String> scimTenantId,
    required TfArg<String> workforcePoolId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'claim_mapping': claimMapping,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'hard_delete': ?hardDelete,
           'location': location,
           'provider_id': providerId,
           'scim_tenant_id': scimTenantId,
           'workforce_pool_id': workforcePoolId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkforcePoolProviderScimTenantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkforcePoolProviderScimTenant>`.
  RefTo<GoogleIamWorkforcePoolProviderScimTenant> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `base_uri` attribute.
  TfRef<String> get baseUri => TfRef.attribute<String>(this, 'base_uri');

  /// Reference to `purge_time` attribute.
  TfRef<String> get purgeTime => TfRef.attribute<String>(this, 'purge_time');

  /// Reference to `service_agent` attribute.
  TfRef<String> get serviceAgent =>
      TfRef.attribute<String>(this, 'service_agent');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `claim_mapping` attribute.
  TfRef<Map<String, String>> get claimMapping =>
      TfRef.attribute<Map<String, String>>(this, 'claim_mapping');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `hard_delete` attribute.
  TfRef<bool> get hardDelete => TfRef.attribute<bool>(this, 'hard_delete');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `provider_id` attribute.
  TfRef<String> get providerId => TfRef.attribute<String>(this, 'provider_id');

  /// Reference to `scim_tenant_id` attribute.
  TfRef<String> get scimTenantId =>
      TfRef.attribute<String>(this, 'scim_tenant_id');

  /// Reference to `workforce_pool_id` attribute.
  TfRef<String> get workforcePoolId =>
      TfRef.attribute<String>(this, 'workforce_pool_id');
}

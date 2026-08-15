// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workforce_pool_provider_scim_token`.
const Set<String> _googleIamWorkforcePoolProviderScimTokenSensitive = <String>{
  'security_token',
};

/// Factory wrapper for `google_iam_workforce_pool_provider_scim_token`.
///
/// Represents a SCIM Token for a Workforce Pool Provider Scim Tenant. The SCIM
/// Token is used for authenticating SCIM provisioning requests during the
/// synchronization of user/group identities from external identity provider
/// into Google Cloud using the System for Cross-domain Identity Management
/// (SCIM) protocol. This needs to be provided in the Secret (Long Lived) Token
/// field when configuring SCIM on an IdP.
///
/// Workforce pool SCIM token — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleIamWorkforcePoolProviderScimToken extends Resource {
  static const String tfType = 'google_iam_workforce_pool_provider_scim_token';

  GoogleIamWorkforcePoolProviderScimToken({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> location,
    required TfArg<String> providerId,
    required TfArg<String> scimTenantId,
    required TfArg<String> scimTokenId,
    required TfArg<String> workforcePoolId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           'location': location,
           'provider_id': providerId,
           'scim_tenant_id': scimTenantId,
           'scim_token_id': scimTokenId,
           'workforce_pool_id': workforcePoolId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkforcePoolProviderScimTokenSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `security_token` attribute.
  TfRef<String> get securityToken =>
      TfRef.attribute<String>(this, 'security_token');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}

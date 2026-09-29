// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_identity_provider.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_identity_provider`.
const Set<String> _cloudflareZeroTrustAccessIdentityProviderSensitive =
    <String>{'config.client_secret', 'scim_config.secret'};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_access_identity_provider` (derived from provider schema).
@immutable
final class DataZeroTrustAccessIdentityProviderFilter {
  const DataZeroTrustAccessIdentityProviderFilter({this.scimEnabled});

  final TfArg<String>? scimEnabled;

  Map<String, Object?> encode() => {'scim_enabled': ?scimEnabled?.toTfJson()};
}

/// Factory wrapper for `cloudflare_zero_trust_access_identity_provider`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class DataCloudflareZeroTrustAccessIdentityProvider extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_identity_provider';

  DataCloudflareZeroTrustAccessIdentityProvider({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? identityProviderId,
    TfArg<String>? zoneId,
    DataZeroTrustAccessIdentityProviderFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'identity_provider_id': ?identityProviderId,
           'zone_id': ?zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessIdentityProviderSensitive;

  /// A reference to the `cloudflare_zero_trust_access_identity_provider` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessIdentityProvider>`.
  RefTo<CloudflareZeroTrustAccessIdentityProvider> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `read_only` attribute.
  TfRef<bool> get readOnly => TfRef.attribute<bool>(this, 'read_only');

  /// Reference to `saml_certificate_set_id` attribute.
  TfRef<String> get samlCertificateSetId =>
      TfRef.attribute<String>(this, 'saml_certificate_set_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

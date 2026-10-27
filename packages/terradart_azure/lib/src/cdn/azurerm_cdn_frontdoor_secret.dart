// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_secret`.
const Set<String> _azurermCdnFrontdoorSecretSensitive = <String>{};

/// Typed helper for the `secret` block of
/// `azurerm_cdn_frontdoor_secret` (derived from provider schema).
@immutable
final class CdnFrontdoorSecret {
  const CdnFrontdoorSecret({required this.customerCertificate});

  final List<CdnFrontdoorSecretCustomerCertificate> customerCertificate;

  @internal
  Map<String, Object?> encode() => {
    'customer_certificate': [for (final e in customerCertificate) e.encode()],
  };
}

/// Typed helper for the `secret.customer_certificate` block of
/// `azurerm_cdn_frontdoor_secret` (derived from provider schema).
@immutable
final class CdnFrontdoorSecretCustomerCertificate {
  const CdnFrontdoorSecretCustomerCertificate({
    required this.keyVaultCertificateId,
  });

  final TfArg<String> keyVaultCertificateId;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_certificate_id': keyVaultCertificateId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cdn_frontdoor_secret`.
final class AzurermCdnFrontdoorSecret extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_secret';

  AzurermCdnFrontdoorSecret(
    super.localName, {
    required TfArg<String> cdnFrontdoorProfileId,
    required TfArg<String> name,
    required CdnFrontdoorSecret secret,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_profile_id': cdnFrontdoorProfileId,
           'name': name,
           'secret': TfArg.literal(secret.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorSecretSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorSecret>`.
  RefTo<AzurermCdnFrontdoorSecret> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_profile_name` attribute.
  TfRef<String> get cdnFrontdoorProfileName =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_name');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');
}

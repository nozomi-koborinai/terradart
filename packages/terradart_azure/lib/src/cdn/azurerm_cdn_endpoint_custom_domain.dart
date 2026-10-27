// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_endpoint_custom_domain`.
const Set<String> _azurermCdnEndpointCustomDomainSensitive = <String>{};

/// Typed helper for the `cdn_managed_https` block of
/// `azurerm_cdn_endpoint_custom_domain` (derived from provider schema).
@immutable
final class CdnEndpointCustomDomainCdnManagedHttps {
  const CdnEndpointCustomDomainCdnManagedHttps({
    required this.certificateType,
    required this.protocolType,
    this.tlsVersion,
  });

  final TfArg<String> certificateType;

  final TfArg<String> protocolType;

  final TfArg<String>? tlsVersion;

  @internal
  Map<String, Object?> encode() => {
    'certificate_type': certificateType.toTfJson(),
    'protocol_type': protocolType.toTfJson(),
    'tls_version': ?tlsVersion?.toTfJson(),
  };
}

/// Typed helper for the `user_managed_https` block of
/// `azurerm_cdn_endpoint_custom_domain` (derived from provider schema).
@immutable
final class CdnEndpointCustomDomainUserManagedHttps {
  const CdnEndpointCustomDomainUserManagedHttps({
    required this.keyVaultSecretId,
    this.tlsVersion,
  });

  final TfArg<String> keyVaultSecretId;

  final TfArg<String>? tlsVersion;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_secret_id': keyVaultSecretId.toTfJson(),
    'tls_version': ?tlsVersion?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cdn_endpoint_custom_domain`.
final class AzurermCdnEndpointCustomDomain extends Resource {
  static const String tfType = 'azurerm_cdn_endpoint_custom_domain';

  AzurermCdnEndpointCustomDomain(
    super.localName, {
    required TfArg<String> cdnEndpointId,
    required TfArg<String> hostName,
    required TfArg<String> name,
    CdnEndpointCustomDomainCdnManagedHttps? cdnManagedHttps,
    CdnEndpointCustomDomainUserManagedHttps? userManagedHttps,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_endpoint_id': cdnEndpointId,
           'host_name': hostName,
           'name': name,
           if (cdnManagedHttps != null)
             'cdn_managed_https': TfArg.literal(cdnManagedHttps.encode()),
           if (userManagedHttps != null)
             'user_managed_https': TfArg.literal(userManagedHttps.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnEndpointCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnEndpointCustomDomain>`.
  RefTo<AzurermCdnEndpointCustomDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_endpoint_id` attribute.
  TfRef<String> get cdnEndpointId =>
      TfRef.attribute<String>(this, 'cdn_endpoint_id');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');
}

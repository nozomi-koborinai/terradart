// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_endpoint_custom_domain`.
const Set<String> _azurermCdnEndpointCustomDomainSensitive = <String>{};

/// At most one of `cdn_managed_https`, `user_managed_https` on `azurerm_cdn_endpoint_custom_domain`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cdnManagedHttps(...)`.
sealed class CdnEndpointCustomDomainManagedHttps {
  const CdnEndpointCustomDomainManagedHttps();

  /// Sets `cdn_managed_https`.
  const factory CdnEndpointCustomDomainManagedHttps.cdnManagedHttps(
    CdnEndpointCustomDomainCdnManagedHttps cdnManagedHttps,
  ) = CdnEndpointCustomDomainCdnManagedHttpsChoice;

  /// Sets `user_managed_https`.
  const factory CdnEndpointCustomDomainManagedHttps.userManagedHttps(
    CdnEndpointCustomDomainUserManagedHttps userManagedHttps,
  ) = CdnEndpointCustomDomainUserManagedHttpsChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CdnEndpointCustomDomainManagedHttps.cdnManagedHttps] choice: sets `cdn_managed_https`.
final class CdnEndpointCustomDomainCdnManagedHttpsChoice
    extends CdnEndpointCustomDomainManagedHttps {
  const CdnEndpointCustomDomainCdnManagedHttpsChoice(this.cdnManagedHttps);

  final CdnEndpointCustomDomainCdnManagedHttps cdnManagedHttps;

  @internal
  @override
  String get blockKey => 'cdn_managed_https';

  @internal
  @override
  Map<String, Object?> encode() => {
    'cdn_managed_https': cdnManagedHttps.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cdn_managed_https': TfArg.literal(cdnManagedHttps.encode()),
  };
}

/// The [CdnEndpointCustomDomainManagedHttps.userManagedHttps] choice: sets `user_managed_https`.
final class CdnEndpointCustomDomainUserManagedHttpsChoice
    extends CdnEndpointCustomDomainManagedHttps {
  const CdnEndpointCustomDomainUserManagedHttpsChoice(this.userManagedHttps);

  final CdnEndpointCustomDomainUserManagedHttps userManagedHttps;

  @internal
  @override
  String get blockKey => 'user_managed_https';

  @internal
  @override
  Map<String, Object?> encode() => {
    'user_managed_https': userManagedHttps.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'user_managed_https': TfArg.literal(userManagedHttps.encode()),
  };
}

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
    CdnEndpointCustomDomainManagedHttps? managedHttps,
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
           ...?managedHttps?.argMap,
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

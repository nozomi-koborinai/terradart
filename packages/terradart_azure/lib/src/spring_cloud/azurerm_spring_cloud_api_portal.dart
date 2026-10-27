// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_api_portal`.
const Set<String> _azurermSpringCloudApiPortalSensitive = <String>{};

/// Typed helper for the `sso` block of
/// `azurerm_spring_cloud_api_portal` (derived from provider schema).
@immutable
final class SpringCloudApiPortalSso {
  const SpringCloudApiPortalSso({
    this.clientId,
    this.clientSecret,
    this.issuerUri,
    this.scope,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? issuerUri;

  final TfArg<List<String>>? scope;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'issuer_uri': ?issuerUri?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_api_portal`.
final class AzurermSpringCloudApiPortal extends Resource {
  static const String tfType = 'azurerm_spring_cloud_api_portal';

  AzurermSpringCloudApiPortal(
    super.localName, {
    TfArg<bool>? apiTryOutEnabled,
    TfArg<List<String>>? gatewayIds,
    TfArg<bool>? httpsOnlyEnabled,
    TfArg<num>? instanceCount,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required TfArg<String> springCloudServiceId,
    SpringCloudApiPortalSso? sso,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_try_out_enabled': ?apiTryOutEnabled,
           'gateway_ids': ?gatewayIds,
           'https_only_enabled': ?httpsOnlyEnabled,
           'instance_count': ?instanceCount,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'spring_cloud_service_id': springCloudServiceId,
           if (sso != null) 'sso': TfArg.literal(sso.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudApiPortalSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudApiPortal>`.
  RefTo<AzurermSpringCloudApiPortal> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `api_try_out_enabled` attribute.
  TfRef<bool> get apiTryOutEnabled =>
      TfRef.attribute<bool>(this, 'api_try_out_enabled');

  /// Reference to `gateway_ids` attribute.
  TfRef<List<String>> get gatewayIds =>
      TfRef.attribute<List<String>>(this, 'gateway_ids');

  /// Reference to `https_only_enabled` attribute.
  TfRef<bool> get httpsOnlyEnabled =>
      TfRef.attribute<bool>(this, 'https_only_enabled');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}

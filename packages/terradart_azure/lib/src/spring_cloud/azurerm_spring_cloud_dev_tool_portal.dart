// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_dev_tool_portal`.
const Set<String> _azurermSpringCloudDevToolPortalSensitive = <String>{};

/// Spring Cloud Dev Tool Portal enum for `name`.
extension type const SpringCloudDevToolPortalName._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudDevToolPortalName.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudDevToolPortalName.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudDevToolPortalName.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = SpringCloudDevToolPortalName._(
    TfArgLiteral('default'),
  );

  static const List<SpringCloudDevToolPortalName> values = [defaultCase];
}

/// Typed helper for the `sso` block of
/// `azurerm_spring_cloud_dev_tool_portal` (derived from provider schema).
@immutable
final class SpringCloudDevToolPortalSso {
  const SpringCloudDevToolPortalSso({
    this.clientId,
    this.clientSecret,
    this.metadataUrl,
    this.scope,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? metadataUrl;

  final TfArg<List<String>>? scope;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'metadata_url': ?metadataUrl?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_dev_tool_portal`.
final class AzurermSpringCloudDevToolPortal extends Resource {
  static const String tfType = 'azurerm_spring_cloud_dev_tool_portal';

  AzurermSpringCloudDevToolPortal(
    super.localName, {
    TfArg<bool>? applicationAcceleratorEnabled,
    TfArg<bool>? applicationLiveViewEnabled,
    required SpringCloudDevToolPortalName name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required TfArg<String> springCloudServiceId,
    SpringCloudDevToolPortalSso? sso,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_accelerator_enabled': ?applicationAcceleratorEnabled,
           'application_live_view_enabled': ?applicationLiveViewEnabled,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'spring_cloud_service_id': springCloudServiceId,
           if (sso != null) 'sso': TfArg.literal(sso.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudDevToolPortalSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudDevToolPortal>`.
  RefTo<AzurermSpringCloudDevToolPortal> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_accelerator_enabled` attribute.
  TfRef<bool> get applicationAcceleratorEnabled =>
      TfRef.attribute<bool>(this, 'application_accelerator_enabled');

  /// Reference to `application_live_view_enabled` attribute.
  TfRef<bool> get applicationLiveViewEnabled =>
      TfRef.attribute<bool>(this, 'application_live_view_enabled');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}

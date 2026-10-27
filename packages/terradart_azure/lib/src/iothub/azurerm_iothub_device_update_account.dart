// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_device_update_account`.
const Set<String> _azurermIothubDeviceUpdateAccountSensitive = <String>{};

/// Iothub Device Update Account enum for `sku`.
extension type const IothubDeviceUpdateAccountSku._(TfArg<String> _)
    implements TfArg<String> {
  IothubDeviceUpdateAccountSku.variable(String name)
    : this._(TfArg.variable(name));
  IothubDeviceUpdateAccountSku.expression(String template)
    : this._(TfArg.expression(template));
  const IothubDeviceUpdateAccountSku.arg(TfArg<String> arg) : this._(arg);

  static const free = IothubDeviceUpdateAccountSku._(TfArgLiteral('Free'));
  static const standard = IothubDeviceUpdateAccountSku._(
    TfArgLiteral('Standard'),
  );

  static const List<IothubDeviceUpdateAccountSku> values = [free, standard];
}

/// Typed helper for the `identity` block of
/// `azurerm_iothub_device_update_account` (derived from provider schema).
@immutable
final class IothubDeviceUpdateAccountIdentity {
  const IothubDeviceUpdateAccountIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_iothub_device_update_account`.
final class AzurermIothubDeviceUpdateAccount extends Resource {
  static const String tfType = 'azurerm_iothub_device_update_account';

  AzurermIothubDeviceUpdateAccount(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    IothubDeviceUpdateAccountSku? sku,
    TfArg<Map<String, String>>? tags,
    IothubDeviceUpdateAccountIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubDeviceUpdateAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubDeviceUpdateAccount>`.
  RefTo<AzurermIothubDeviceUpdateAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

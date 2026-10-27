// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bastion_host`.
const Set<String> _azurermBastionHostSensitive = <String>{};

/// Bastion Host enum for `sku`.
extension type const BastionHostSku._(TfArg<String> _)
    implements TfArg<String> {
  BastionHostSku.variable(String name) : this._(TfArg.variable(name));
  BastionHostSku.expression(String template)
    : this._(TfArg.expression(template));
  const BastionHostSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = BastionHostSku._(TfArgLiteral('Basic'));
  static const developer = BastionHostSku._(TfArgLiteral('Developer'));
  static const premium = BastionHostSku._(TfArgLiteral('Premium'));
  static const standard = BastionHostSku._(TfArgLiteral('Standard'));

  static const List<BastionHostSku> values = [
    basic,
    developer,
    premium,
    standard,
  ];
}

/// Typed helper for the `ip_configuration` block of
/// `azurerm_bastion_host` (derived from provider schema).
@immutable
final class BastionHostIpConfiguration {
  const BastionHostIpConfiguration({
    required this.name,
    this.publicIpAddressId,
    required this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<String>? publicIpAddressId;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'public_ip_address_id': ?publicIpAddressId?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_bastion_host`.
final class AzurermBastionHost extends Resource {
  static const String tfType = 'azurerm_bastion_host';

  AzurermBastionHost(
    super.localName, {
    TfArg<bool>? copyPasteEnabled,
    TfArg<bool>? fileCopyEnabled,
    TfArg<bool>? ipConnectEnabled,
    TfArg<bool>? kerberosEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? scaleUnits,
    TfArg<bool>? sessionRecordingEnabled,
    TfArg<bool>? shareableLinkEnabled,
    BastionHostSku? sku,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tunnelingEnabled,
    RefTo<AzurermVirtualNetwork>? virtualNetworkId,
    TfArg<List<String>>? zones,
    BastionHostIpConfiguration? ipConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'copy_paste_enabled': ?copyPasteEnabled,
           'file_copy_enabled': ?fileCopyEnabled,
           'ip_connect_enabled': ?ipConnectEnabled,
           'kerberos_enabled': ?kerberosEnabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scale_units': ?scaleUnits,
           'session_recording_enabled': ?sessionRecordingEnabled,
           'shareable_link_enabled': ?shareableLinkEnabled,
           'sku': ?sku,
           'tags': ?tags,
           'tunneling_enabled': ?tunnelingEnabled,
           'virtual_network_id': ?virtualNetworkId?.encodeAs('id'),
           'zones': ?zones,
           if (ipConfiguration != null)
             'ip_configuration': TfArg.literal(ipConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBastionHostSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBastionHost>`.
  RefTo<AzurermBastionHost> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `private_only_enabled` attribute.
  TfRef<bool> get privateOnlyEnabled =>
      TfRef.attribute<bool>(this, 'private_only_enabled');

  /// Reference to `copy_paste_enabled` attribute.
  TfRef<bool> get copyPasteEnabled =>
      TfRef.attribute<bool>(this, 'copy_paste_enabled');

  /// Reference to `file_copy_enabled` attribute.
  TfRef<bool> get fileCopyEnabled =>
      TfRef.attribute<bool>(this, 'file_copy_enabled');

  /// Reference to `ip_connect_enabled` attribute.
  TfRef<bool> get ipConnectEnabled =>
      TfRef.attribute<bool>(this, 'ip_connect_enabled');

  /// Reference to `kerberos_enabled` attribute.
  TfRef<bool> get kerberosEnabled =>
      TfRef.attribute<bool>(this, 'kerberos_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scale_units` attribute.
  TfRef<num> get scaleUnits => TfRef.attribute<num>(this, 'scale_units');

  /// Reference to `session_recording_enabled` attribute.
  TfRef<bool> get sessionRecordingEnabled =>
      TfRef.attribute<bool>(this, 'session_recording_enabled');

  /// Reference to `shareable_link_enabled` attribute.
  TfRef<bool> get shareableLinkEnabled =>
      TfRef.attribute<bool>(this, 'shareable_link_enabled');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tunneling_enabled` attribute.
  TfRef<bool> get tunnelingEnabled =>
      TfRef.attribute<bool>(this, 'tunneling_enabled');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}

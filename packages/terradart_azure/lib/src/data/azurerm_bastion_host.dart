// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../bastion/azurerm_bastion_host.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bastion_host`.
const Set<String> _azurermBastionHostSensitive = <String>{};

/// Factory wrapper for `azurerm_bastion_host`.
final class DataAzurermBastionHost extends Data {
  static const String tfType = 'azurerm_bastion_host';

  DataAzurermBastionHost(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBastionHostSensitive;

  /// A reference to the `azurerm_bastion_host` this data source reads, for
  /// arguments typed `RefTo<AzurermBastionHost>`.
  RefTo<AzurermBastionHost> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `copy_paste_enabled` attribute.
  TfRef<bool> get copyPasteEnabled =>
      TfRef.attribute<bool>(this, 'copy_paste_enabled');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `file_copy_enabled` attribute.
  TfRef<bool> get fileCopyEnabled =>
      TfRef.attribute<bool>(this, 'file_copy_enabled');

  /// Reference to `ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get ipConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_configuration');

  /// Reference to `ip_connect_enabled` attribute.
  TfRef<bool> get ipConnectEnabled =>
      TfRef.attribute<bool>(this, 'ip_connect_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_only_enabled` attribute.
  TfRef<bool> get privateOnlyEnabled =>
      TfRef.attribute<bool>(this, 'private_only_enabled');

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

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

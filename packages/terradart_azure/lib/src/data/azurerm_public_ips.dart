// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_public_ips`.
const Set<String> _azurermPublicIpsSensitive = <String>{};

/// Factory wrapper for `azurerm_public_ips`.
final class DataAzurermPublicIps extends Data {
  static const String tfType = 'azurerm_public_ips';

  DataAzurermPublicIps(
    super.localName, {
    TfArg<String>? allocationType,
    TfArg<String>? attachmentStatus,
    TfArg<String>? namePrefix,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_type': ?allocationType,
           'attachment_status': ?attachmentStatus,
           'name_prefix': ?namePrefix,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPublicIpsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `public_ips` attribute.
  TfRef<List<Map<String, Object?>>> get publicIps =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'public_ips');

  /// Reference to `allocation_type` attribute.
  TfRef<String> get allocationType =>
      TfRef.attribute<String>(this, 'allocation_type');

  /// Reference to `attachment_status` attribute.
  TfRef<String> get attachmentStatus =>
      TfRef.attribute<String>(this, 'attachment_status');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

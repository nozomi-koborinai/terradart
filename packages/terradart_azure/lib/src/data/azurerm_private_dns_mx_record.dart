// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_mx_record.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_dns_mx_record`.
const Set<String> _azurermPrivateDnsMxRecordSensitive = <String>{};

/// Factory wrapper for `azurerm_private_dns_mx_record`.
final class DataAzurermPrivateDnsMxRecord extends Data {
  static const String tfType = 'azurerm_private_dns_mx_record';

  DataAzurermPrivateDnsMxRecord(
    super.localName, {
    TfArg<String>? name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> zoneName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'zone_name': zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPrivateDnsMxRecordSensitive;

  /// A reference to the `azurerm_private_dns_mx_record` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsMxRecord>`.
  RefTo<AzurermPrivateDnsMxRecord> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `record` attribute.
  TfRef<List<Map<String, Object?>>> get record =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'record');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}

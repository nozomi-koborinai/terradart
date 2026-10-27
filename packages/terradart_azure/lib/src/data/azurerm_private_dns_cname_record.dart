// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_cname_record.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_dns_cname_record`.
const Set<String> _azurermPrivateDnsCnameRecordSensitive = <String>{};

/// Factory wrapper for `azurerm_private_dns_cname_record`.
final class DataAzurermPrivateDnsCnameRecord extends Data {
  static const String tfType = 'azurerm_private_dns_cname_record';

  DataAzurermPrivateDnsCnameRecord(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> zoneName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'zone_name': zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPrivateDnsCnameRecordSensitive;

  /// A reference to the `azurerm_private_dns_cname_record` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsCnameRecord>`.
  RefTo<AzurermPrivateDnsCnameRecord> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `record` attribute.
  TfRef<String> get record => TfRef.attribute<String>(this, 'record');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}

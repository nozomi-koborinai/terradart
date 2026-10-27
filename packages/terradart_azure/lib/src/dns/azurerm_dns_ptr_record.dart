// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dns_ptr_record`.
const Set<String> _azurermDnsPtrRecordSensitive = <String>{};

/// Factory wrapper for `azurerm_dns_ptr_record`.
final class AzurermDnsPtrRecord extends Resource {
  static const String tfType = 'azurerm_dns_ptr_record';

  AzurermDnsPtrRecord(
    super.localName, {
    required TfArg<String> name,
    required TfArg<List<String>> records,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> ttl,
    required TfArg<String> zoneName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'records': records,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'ttl': ttl,
           'zone_name': zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDnsPtrRecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDnsPtrRecord>`.
  RefTo<AzurermDnsPtrRecord> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `records` attribute.
  TfRef<List<String>> get records =>
      TfRef.attribute<List<String>>(this, 'records');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}

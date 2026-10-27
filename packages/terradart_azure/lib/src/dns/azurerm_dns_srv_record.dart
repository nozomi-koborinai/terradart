// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dns_srv_record`.
const Set<String> _azurermDnsSrvRecordSensitive = <String>{};

/// Typed helper for the `record` block of
/// `azurerm_dns_srv_record` (derived from provider schema).
@immutable
final class DnsSrvRecord {
  const DnsSrvRecord({
    required this.port,
    required this.priority,
    required this.target,
    required this.weight,
  });

  final TfArg<num> port;

  final TfArg<num> priority;

  final TfArg<String> target;

  final TfArg<num> weight;

  @internal
  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'priority': priority.toTfJson(),
    'target': target.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dns_srv_record`.
final class AzurermDnsSrvRecord extends Resource {
  static const String tfType = 'azurerm_dns_srv_record';

  AzurermDnsSrvRecord(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> ttl,
    required TfArg<String> zoneName,
    required List<DnsSrvRecord> record,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'ttl': ttl,
           'zone_name': zoneName,
           'record': TfArg.literal([for (final e in record) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDnsSrvRecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDnsSrvRecord>`.
  RefTo<AzurermDnsSrvRecord> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

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

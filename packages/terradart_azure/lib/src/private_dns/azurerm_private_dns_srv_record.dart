// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_private_dns_srv_record`.
const Set<String> _azurermPrivateDnsSrvRecordSensitive = <String>{};

/// Typed helper for the `record` block of
/// `azurerm_private_dns_srv_record` (derived from provider schema).
@immutable
final class PrivateDnsSrvRecord {
  const PrivateDnsSrvRecord({
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

/// Factory wrapper for `azurerm_private_dns_srv_record`.
final class AzurermPrivateDnsSrvRecord extends Resource {
  static const String tfType = 'azurerm_private_dns_srv_record';

  AzurermPrivateDnsSrvRecord(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> privateDnsZoneId,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> ttl,
    required List<PrivateDnsSrvRecord> record,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'private_dns_zone_id': privateDnsZoneId,
           'tags': ?tags,
           'ttl': ttl,
           'record': TfArg.literal([for (final e in record) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPrivateDnsSrvRecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateDnsSrvRecord>`.
  RefTo<AzurermPrivateDnsSrvRecord> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `private_dns_zone_id` attribute.
  TfRef<String> get privateDnsZoneId =>
      TfRef.attribute<String>(this, 'private_dns_zone_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');
}

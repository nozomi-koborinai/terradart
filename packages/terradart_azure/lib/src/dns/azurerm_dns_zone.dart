// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dns_zone`.
const Set<String> _azurermDnsZoneSensitive = <String>{};

/// Typed helper for the `soa_record` block of
/// `azurerm_dns_zone` (derived from provider schema).
@immutable
final class DnsZoneSoaRecord {
  const DnsZoneSoaRecord({
    required this.email,
    this.expireTime,
    this.minimumTtl,
    this.refreshTime,
    this.retryTime,
    this.serialNumber,
    this.tags,
    this.ttl,
  });

  final TfArg<String> email;

  final TfArg<num>? expireTime;

  final TfArg<num>? minimumTtl;

  final TfArg<num>? refreshTime;

  final TfArg<num>? retryTime;

  final TfArg<num>? serialNumber;

  final TfArg<Map<String, String>>? tags;

  final TfArg<num>? ttl;

  @internal
  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'expire_time': ?expireTime?.toTfJson(),
    'minimum_ttl': ?minimumTtl?.toTfJson(),
    'refresh_time': ?refreshTime?.toTfJson(),
    'retry_time': ?retryTime?.toTfJson(),
    'serial_number': ?serialNumber?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'ttl': ?ttl?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dns_zone`.
final class AzurermDnsZone extends Resource {
  static const String tfType = 'azurerm_dns_zone';

  AzurermDnsZone(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    DnsZoneSoaRecord? soaRecord,
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
           if (soaRecord != null)
             'soa_record': TfArg.literal(soaRecord.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDnsZoneSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDnsZone>`.
  RefTo<AzurermDnsZone> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `max_number_of_record_sets` attribute.
  TfRef<num> get maxNumberOfRecordSets =>
      TfRef.attribute<num>(this, 'max_number_of_record_sets');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');

  /// Reference to `number_of_record_sets` attribute.
  TfRef<num> get numberOfRecordSets =>
      TfRef.attribute<num>(this, 'number_of_record_sets');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

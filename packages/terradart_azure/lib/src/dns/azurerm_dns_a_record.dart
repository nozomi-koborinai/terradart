// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dns_a_record`.
const Set<String> _azurermDnsARecordSensitive = <String>{};

/// At most one of `records`, `target_resource_id` on `azurerm_dns_a_record`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.records(...)`.
sealed class DnsARecordTarget {
  const DnsARecordTarget();

  /// Sets `records`.
  const factory DnsARecordTarget.records(TfArg<List<String>> records) =
      DnsARecordTargetRecords;

  /// Sets `target_resource_id`.
  const factory DnsARecordTarget.targetResourceId(
    TfArg<String> targetResourceId,
  ) = DnsARecordTargetResourceId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DnsARecordTarget.records] choice: sets `records`.
final class DnsARecordTargetRecords extends DnsARecordTarget {
  const DnsARecordTargetRecords(this.records);

  final TfArg<List<String>> records;

  @internal
  @override
  String get blockKey => 'records';

  @internal
  @override
  Map<String, Object?> encode() => {'records': records.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'records': records};
}

/// The [DnsARecordTarget.targetResourceId] choice: sets `target_resource_id`.
final class DnsARecordTargetResourceId extends DnsARecordTarget {
  const DnsARecordTargetResourceId(this.targetResourceId);

  final TfArg<String> targetResourceId;

  @internal
  @override
  String get blockKey => 'target_resource_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'target_resource_id': targetResourceId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'target_resource_id': targetResourceId,
  };
}

/// Factory wrapper for `azurerm_dns_a_record`.
final class AzurermDnsARecord extends Resource {
  static const String tfType = 'azurerm_dns_a_record';

  AzurermDnsARecord(
    super.localName, {
    required TfArg<String> name,
    DnsARecordTarget? target,
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
           ...?target?.argMap,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'ttl': ttl,
           'zone_name': zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDnsARecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDnsARecord>`.
  RefTo<AzurermDnsARecord> get ref => RefTo.of(this);

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

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}

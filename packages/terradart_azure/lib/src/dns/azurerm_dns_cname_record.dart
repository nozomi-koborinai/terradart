// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dns_cname_record`.
const Set<String> _azurermDnsCnameRecordSensitive = <String>{};

/// Exactly one of `record`, `target_resource_id` on `azurerm_dns_cname_record`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.record(...)`.
sealed class DnsCnameRecordOrTargetResourceId {
  const DnsCnameRecordOrTargetResourceId();

  /// Sets `record`.
  const factory DnsCnameRecordOrTargetResourceId.record(TfArg<String> record) =
      DnsCnameRecordOrTargetResourceIdRecord;

  /// Sets `target_resource_id`.
  const factory DnsCnameRecordOrTargetResourceId.targetResourceId(
    TfArg<String> targetResourceId,
  ) = DnsCnameRecordOrTargetResourceIdChoice;

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

/// The [DnsCnameRecordOrTargetResourceId.record] choice: sets `record`.
final class DnsCnameRecordOrTargetResourceIdRecord
    extends DnsCnameRecordOrTargetResourceId {
  const DnsCnameRecordOrTargetResourceIdRecord(this.record);

  final TfArg<String> record;

  @internal
  @override
  String get blockKey => 'record';

  @internal
  @override
  Map<String, Object?> encode() => {'record': record.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'record': record};
}

/// The [DnsCnameRecordOrTargetResourceId.targetResourceId] choice: sets `target_resource_id`.
final class DnsCnameRecordOrTargetResourceIdChoice
    extends DnsCnameRecordOrTargetResourceId {
  const DnsCnameRecordOrTargetResourceIdChoice(this.targetResourceId);

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

/// Factory wrapper for `azurerm_dns_cname_record`.
final class AzurermDnsCnameRecord extends Resource {
  static const String tfType = 'azurerm_dns_cname_record';

  AzurermDnsCnameRecord(
    super.localName, {
    required TfArg<String> name,
    required DnsCnameRecordOrTargetResourceId recordOrTargetResourceId,
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
           ...recordOrTargetResourceId.argMap,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'ttl': ttl,
           'zone_name': zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDnsCnameRecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDnsCnameRecord>`.
  RefTo<AzurermDnsCnameRecord> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `record` attribute.
  TfRef<String> get record => TfRef.attribute<String>(this, 'record');

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

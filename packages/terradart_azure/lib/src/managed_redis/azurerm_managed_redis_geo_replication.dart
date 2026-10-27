// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_managed_redis_geo_replication`.
const Set<String> _azurermManagedRedisGeoReplicationSensitive = <String>{};

/// Factory wrapper for `azurerm_managed_redis_geo_replication`.
final class AzurermManagedRedisGeoReplication extends Resource {
  static const String tfType = 'azurerm_managed_redis_geo_replication';

  AzurermManagedRedisGeoReplication(
    super.localName, {
    required TfArg<List<String>> linkedManagedRedisIds,
    required TfArg<String> managedRedisId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'linked_managed_redis_ids': linkedManagedRedisIds,
           'managed_redis_id': managedRedisId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermManagedRedisGeoReplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedRedisGeoReplication>`.
  RefTo<AzurermManagedRedisGeoReplication> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `linked_managed_redis_ids` attribute.
  TfRef<List<String>> get linkedManagedRedisIds =>
      TfRef.attribute<List<String>>(this, 'linked_managed_redis_ids');

  /// Reference to `managed_redis_id` attribute.
  TfRef<String> get managedRedisId =>
      TfRef.attribute<String>(this, 'managed_redis_id');
}

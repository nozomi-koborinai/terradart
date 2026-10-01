import 'package:terradart_google/redis.dart';
import 'package:test/test.dart';

void main() {
  group('GoogleRedisInstance', () {
    test('emits maintenance_policy and persistence_config blocks', () {
      final cache = GoogleRedisInstance(
        'cache',
        name: TfArg.literal('cache'),
        memorySizeGb: TfArg.literal(1),
        authEnabled: TfArg.literal(true),
        transitEncryptionMode:
            RedisInstanceTransitEncryptionMode.serverAuthentication,
        maintenancePolicy: const RedisInstanceMaintenancePolicy(
          weeklyMaintenanceWindow: RedisInstanceWeeklyMaintenanceWindow(
            day: RedisInstanceWeeklyMaintenanceDay.sunday,
            startTime: RedisInstanceMaintenanceStartTime(
              hours: TfArgLiteral(3),
            ),
          ),
        ),
        persistenceConfig: const RedisInstancePersistenceConfig(
          persistenceMode: RedisInstancePersistenceMode.rdb,
          rdbSnapshotPeriod: RedisInstanceRdbSnapshotPeriod.twelveHours,
        ),
      );

      expect(cache.argMap['auth_enabled']!.toTfJson(), true);
      expect(
        cache.argMap['transit_encryption_mode']!.toTfJson(),
        'SERVER_AUTHENTICATION',
      );
      expect(cache.argMap['maintenance_policy']!.toTfJson(), [
        {
          'weekly_maintenance_window': [
            {
              'day': 'SUNDAY',
              'start_time': [
                {'hours': 3},
              ],
            },
          ],
        },
      ]);
      expect(cache.argMap['persistence_config']!.toTfJson(), [
        {'persistence_mode': 'RDB', 'rdb_snapshot_period': 'TWELVE_HOURS'},
      ]);
    });

    test('read replica inputs reach argMap', () {
      final cache = GoogleRedisInstance(
        'cache',
        name: TfArg.literal('cache'),
        memorySizeGb: TfArg.literal(5),
        tier: RedisInstanceTier.standardHa,
        replicaCount: TfArg.literal(2),
        readReplicasMode: RedisInstanceReadReplicasMode.readReplicasEnabled,
      );
      expect(cache.argMap['replica_count']!.toTfJson(), 2);
      expect(
        cache.argMap['read_replicas_mode']!.toTfJson(),
        'READ_REPLICAS_ENABLED',
      );
    });
  });
}

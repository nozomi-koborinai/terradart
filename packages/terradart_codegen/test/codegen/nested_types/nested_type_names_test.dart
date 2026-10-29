import 'package:terradart_codegen/src/codegen/nested_types/nested_type_names.dart';
import 'package:test/test.dart';

void main() {
  group('joinStem', () {
    test('drops the words the segment repeats from the stem', () {
      expect(
        joinStem('ComputeSnapshot', 'snapshot_type', const {}),
        'ComputeSnapshotType',
      );
      expect(
        joinStem('Ec2InstanceState', 'state', const {}),
        'Ec2InstanceState',
      );
    });

    test('keeps the words when another lane type takes the short name', () {
      const lane = {
        'AutoscalingGroup': {'Tag', 'Name'},
      };
      expect(
        joinStem('AutoscalingGroupTag', 'tag', lane),
        'AutoscalingGroupTagTag',
      );
      expect(
        joinStem('AutoscalingGroupTag', 'tag', const {
          'AutoscalingGroup': {'Name'},
        }),
        'AutoscalingGroupTag',
      );
    });
  });

  group('topLevelTypeNames', () {
    test('joins each input onto the stem', () {
      expect(
        topLevelTypeNames('ComputeSnapshot', ['snapshot_type', 'labels']),
        {
          'snapshot_type': 'ComputeSnapshotType',
          'labels': 'ComputeSnapshotLabels',
        },
      );
    });

    test('the input dropping fewest words keeps a shared name', () {
      expect(topLevelTypeNames('ComputeSnapshot', ['type', 'snapshot_type']), {
        'type': 'ComputeSnapshotType',
        'snapshot_type': 'ComputeSnapshotSnapshotType',
      });
    });

    test('an input dropping more words concatenates whole', () {
      expect(topLevelTypeNames('FooBar', ['bar_mode', 'foo_bar_mode']), {
        'bar_mode': 'FooBarMode',
        'foo_bar_mode': 'FooBarFooBarMode',
      });
    });

    test('a named input takes its name', () {
      expect(
        topLevelTypeNames(
          'ComputeSnapshot',
          ['type', 'snapshot_type'],
          named: {'type': 'ComputeSnapshotKind'},
        ),
        {'type': 'ComputeSnapshotKind', 'snapshot_type': 'ComputeSnapshotType'},
      );
    });

    test('a derived name moves off a named one', () {
      expect(
        topLevelTypeNames(
          'FooBar',
          ['bar_mode', 'foo_bar_mode'],
          named: {'foo_bar_mode': 'FooBarMode'},
        ),
        {'bar_mode': 'FooBarBarMode', 'foo_bar_mode': 'FooBarMode'},
      );
    });

    test('a named input on another input\'s own name fails', () {
      expect(
        () => topLevelTypeNames(
          'ComputeSnapshot',
          ['type', 'labels'],
          named: {'labels': 'ComputeSnapshotType'},
        ),
        throwsStateError,
      );
    });
  });

  group('typeNameCandidates', () {
    test('a leaf repeating the stem end takes the stem itself', () {
      expect(
        typeNameCandidates('AccessContextManagerAccessLevels', [
          'access_levels',
        ]).first,
        'AccessContextManagerAccessLevels',
      );
    });

    test('a stemless path never takes the stem', () {
      expect(
        typeNameCandidates('AccessContextManagerAccessLevels', [
          'access_levels',
        ], allowStem: false),
        isNot(contains('AccessContextManagerAccessLevels')),
      );
    });

    test('names that repeat a word across the stem come last', () {
      final candidates = typeNameCandidates('S3BucketVersioning', [
        'versioning_configuration',
      ]);
      expect(candidates.first, 'S3BucketVersioningConfiguration');
      expect(candidates.last, 'S3BucketVersioningVersioningConfiguration');
    });
  });

  test('conciseTypeNames fails on a final name another type owns', () {
    expect(
      () => conciseTypeNames(
        'FooBar',
        [
          ['type'],
        ],
        owned: {'FooBarType'},
      ),
      throwsStateError,
    );
  });

  test('a reserved variant name yields to a path with no other name', () {
    expect(
      conciseTypeNames(
        'FooBar',
        [
          ['type'],
        ],
        reserved: {'FooBarType'},
      ),
      ['FooBarType'],
    );
  });

  test('conciseTypeNames gives a named path its name', () {
    expect(
      conciseTypeNames(
        'NetappVolume',
        [
          ['cool_access'],
          ['cool_access', 'tiering_policy'],
          ['tiering_policy'],
        ],
        named: {
          'cool_access.tiering_policy': 'AzurermNetappVolumeTieringPolicy',
        },
      ),
      [
        'NetappVolumeCoolAccess',
        'AzurermNetappVolumeTieringPolicy',
        'NetappVolumeTieringPolicy',
      ],
    );
  });

  test('conciseTypeNames never gives a stemless path a named name', () {
    expect(
      conciseTypeNames(
        'FooBar',
        [
          ['settings', 'code'],
        ],
        stemless: {0},
        named: {'settings.code': 'FooBarSource'},
      ),
      ['FooBarCode'],
    );
  });

  test('conciseTypeNames fails on a named name another path keeps', () {
    expect(
      () => conciseTypeNames(
        'FooBar',
        [
          ['type'],
          ['settings', 'mode'],
        ],
        named: {'settings.mode': 'FooBarType'},
      ),
      throwsStateError,
    );
  });

  test('conciseTypeNames keeps the stem away from stemless paths', () {
    expect(
      conciseTypeNames(
        'AppmeshGatewayRoute',
        [
          ['spec', 'grpc_route'],
          ['route'],
        ],
        stemless: {1},
      ),
      ['AppmeshGatewayRouteGrpcRoute', isNot('AppmeshGatewayRoute')],
    );
  });
}

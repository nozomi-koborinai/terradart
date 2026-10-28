import 'package:terradart_codegen/src/codegen/exactly_one_placement.dart';
import 'package:test/test.dart';

List<Object> _placed(
  List<List<String>> exactlyOne, [
  List<List<String>> atMostOne = const [],
]) => [
  for (final placement in placeGroups(blockGroups(exactlyOne, atMostOne)))
    switch (placement) {
      SinglePlacement(:final group) => group.members,
      JointPlacement(:final groups) => {'joint': groups},
    },
];

const _linux = [
  ['admin_username', 'os_managed_disk_id'],
  ['os_managed_disk_id', 'source_image_id', 'source_image_reference'],
];

void main() {
  test('disjoint groups each seal alone, in order', () {
    expect(
      _placed(
        [
          ['a', 'b'],
          ['c', 'd'],
        ],
        [
          ['e', 'f'],
        ],
      ),
      [
        ['a', 'b'],
        ['c', 'd'],
        ['e', 'f'],
      ],
    );
  });

  test('two groups sharing one member join, and a later group stays', () {
    final placements = placeGroups(
      blockGroups(_linux, [
        ['custom_data', 'user_data'],
      ]),
    );
    expect(placements, hasLength(2));
    final joint = placements.first as JointPlacement;
    expect(joint.groups, _linux);
    expect(joint.shared, ['os_managed_disk_id']);
    expect(joint.parts, [
      ['admin_username'],
      ['source_image_id', 'source_image_reference'],
    ]);
    expect(joint.members, [
      'admin_username',
      'os_managed_disk_id',
      'source_image_id',
      'source_image_reference',
    ]);
    expect(joint.jointMembers, [
      'admin_username',
      'source_image_id',
      'source_image_reference',
    ]);
    expect(joint.keyMember, 'admin_username');
    final single = placements.last as SinglePlacement;
    expect(single.group.members, ['custom_data', 'user_data']);
    expect(single.group.optional, isTrue);
  });

  test('two groups whose parts are one member each join', () {
    final joint =
        placeGroups(
              blockGroups(const [
                ['default_log_storage_account_id', 'managed_disk'],
                ['default_recovery_disk_type', 'managed_disk'],
              ], const []),
            ).single
            as JointPlacement;
    expect(joint.shared, ['managed_disk']);
    expect(joint.parts, [
      ['default_log_storage_account_id'],
      ['default_recovery_disk_type'],
    ]);
    expect(joint.keyMember, 'default_log_storage_account_id');
  });

  test('three groups sharing one member join', () {
    final joint =
        placeGroups(
              blockGroups(const [
                ['a', 'b'],
                ['a', 'c'],
                ['a', 'd', 'e'],
              ], const []),
            ).single
            as JointPlacement;
    expect(joint.shared, ['a']);
    expect(joint.parts, [
      ['b'],
      ['c'],
      ['d', 'e'],
    ]);
    expect(joint.keyMember, 'b');
  });

  test('a chain of overlaps shares no member set and stays single', () {
    expect(
      _placed([
        ['a', 'b'],
        ['b', 'c'],
        ['c', 'd'],
      ]),
      [
        ['a', 'b'],
        ['b', 'c'],
        ['c', 'd'],
      ],
    );
  });

  test('a group inside another stays single', () {
    expect(
      _placed([
        ['a', 'b'],
        ['a', 'b', 'c'],
      ]),
      [
        ['a', 'b'],
        ['a', 'b', 'c'],
      ],
    );
  });

  test('parts that all have several members stay single', () {
    expect(
      _placed([
        ['a', 'b', 'x'],
        ['b', 'c', 'd'],
      ]),
      [
        ['a', 'b', 'x'],
        ['b', 'c', 'd'],
      ],
    );
  });

  test('identical groups stay single', () {
    expect(
      _placed([
        ['a', 'b'],
        ['a', 'b'],
      ]),
      [
        ['a', 'b'],
        ['a', 'b'],
      ],
    );
  });

  test('an at-most-one group never joins', () {
    expect(
      _placed(
        [
          ['a', 'b'],
        ],
        [
          ['b', 'c'],
        ],
      ),
      [
        ['a', 'b'],
        ['b', 'c'],
      ],
    );
  });

  test('a joint takes its first group\'s place', () {
    expect(
      _placed([
        ['a', 'b'],
        ['x', 'y'],
        ['a', 'c'],
      ]),
      [
        {
          'joint': [
            ['a', 'b'],
            ['a', 'c'],
          ],
        },
        ['x', 'y'],
      ],
    );
  });
}

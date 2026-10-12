import 'package:terradart_codegen/src/codegen/exclusive_groups.dart';
import 'package:test/test.dart';

void main() {
  test('keeps exactly-one sets, deduplicated as sets', () {
    final g = exclusiveGroups(
      exactlyOne: [
        ['a', 'b'],
        ['b', 'a'],
        ['c'],
      ],
    );
    expect(g.exactlyOne, [
      ['a', 'b'],
    ]);
    expect(g.atMostOne, isEmpty);
    expect(g.unsealed, isEmpty);
  });

  test('promotes an at-least-one set whose members all conflict', () {
    final g = exclusiveGroups(
      atLeastOne: [
        ['a', 'b'],
        ['x', 'y', 'z'],
      ],
      conflicts: [('a', 'b'), ('b', 'a'), ('x', 'y')],
    );
    expect(g.exactlyOne, [
      ['a', 'b'],
    ]);
    expect(g.atMostOne, [
      ['x', 'y'],
    ]);
    expect(g.unsealed, isEmpty);
  });

  test(
    'turns each pairwise conflicting component into an at-most-one group',
    () {
      final g = exclusiveGroups(
        conflicts: [
          ('content', 'data'),
          ('item.ip', 'item.asn'),
          ('item.ip', 'item.hostname'),
          ('item.asn', 'item.hostname'),
        ],
      );
      expect(g.atMostOne, [
        ['content', 'data'],
        ['item.ip', 'item.asn', 'item.hostname'],
      ]);
      expect(g.unsealed, isEmpty);
    },
  );

  test('unions overlapping exactly-one pairs into one group', () {
    // Magic Modules writes a 3-way exactly_one_of as each member listing
    // the other two. Sealing any one pair would drop the third member.
    final g = exclusiveGroups(
      exactlyOne: [
        ['psc_interface_config', 'reserved_public_ip_config'],
        ['vpc_peering_config', 'reserved_public_ip_config'],
        ['vpc_peering_config', 'psc_interface_config'],
      ],
    );
    expect(g.exactlyOne, [
      [
        'psc_interface_config',
        'reserved_public_ip_config',
        'vpc_peering_config',
      ],
    ]);
  });

  test('reports conflicts no group expresses', () {
    final g = exclusiveGroups(
      exactlyOne: [
        ['a', 'b'],
      ],
      conflicts: [('a', 'b'), ('a', 'c'), ('x', 's.y'), ('p', 'q'), ('p', 'r')],
    );
    expect(g.exactlyOne, [
      ['a', 'b'],
    ]);
    expect(g.atMostOne, isEmpty);
    expect(g.unsealed, [
      '[a, c]: conflicts with an exactly-one member',
      '[x, s.y]: members in different blocks',
      '[p, q, r]: not pairwise exclusive',
    ]);
  });
}

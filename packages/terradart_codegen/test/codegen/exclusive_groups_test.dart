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

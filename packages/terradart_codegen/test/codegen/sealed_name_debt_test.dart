import 'package:terradart_codegen/src/codegen/sealed_name_debt.dart';
import 'package:test/test.dart';

void main() {
  test('render and parse round-trip, empty included', () {
    final debt = {
      'aws_b': {'x, y': 'awaiting-name: hashicorp/aws 6.0.0'},
      'aws_a': {'p, q': 'awaiting-name: hashicorp/aws 6.0.0'},
    };
    final rendered = renderSealedNameDebt(debt);
    expect(rendered.indexOf('aws_a:'), lessThan(rendered.indexOf('aws_b:')));
    expect(parseSealedNameDebt(rendered), debt);
    expect(parseSealedNameDebt(renderSealedNameDebt({})), isEmpty);
  });

  test('sync adds new fallbacks, keeps reasons, drops stale entries', () {
    final synced = syncSealedNameDebt(
      {
        'aws_a': {
          'p, q': 'awaiting-name: hashicorp/aws 5.0.0',
          'gone, too': 'awaiting-name: hashicorp/aws 5.0.0',
        },
        'aws_other_lane': {'m, n': 'awaiting-name: x'},
      },
      laneTypes: {'aws_a', 'aws_b'},
      fallbacks: {
        'aws_a': {'p, q'},
        'aws_b': {'x, y'},
      },
      reason: 'awaiting-name: hashicorp/aws 6.0.0',
    );
    expect(synced.debt, {
      'aws_a': {'p, q': 'awaiting-name: hashicorp/aws 5.0.0'},
      'aws_b': {'x, y': 'awaiting-name: hashicorp/aws 6.0.0'},
      'aws_other_lane': {'m, n': 'awaiting-name: x'},
    });
    expect(synced.missing, ['aws_b [x, y]']);
    expect(synced.stale, [
      'aws_a [gone, too]: the group is named or no longer sealed',
    ]);
  });

  test('an entry without the awaiting-name reason is stale', () {
    final synced = syncSealedNameDebt(
      {
        'aws_a': {'p, q': 'reviewed: keep'},
      },
      laneTypes: {'aws_a'},
      fallbacks: {
        'aws_a': {'p, q'},
      },
      reason: 'awaiting-name: hashicorp/aws 6.0.0',
    );
    expect(synced.stale.single, contains('must start with "awaiting-name:"'));
    expect(synced.debt['aws_a'], {
      'p, q': 'awaiting-name: hashicorp/aws 6.0.0',
    });
  });
}

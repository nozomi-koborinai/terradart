import 'package:terradart_cloudflare/terradart_cloudflare.dart';
import 'package:test/test.dart';

final class _EnumListStack extends Stack {
  _EnumListStack() : super(providers: const [CloudflareProvider()]) {
    variable<List<String>>('regions');
    add(
      CloudflareLoadBalancerPool(
        'literal',
        accountId: .literal('acc'),
        name: const .literal('pool'),
        origins: [const .new(address: .literal('192.0.2.1'))],
        checkRegions: const .literal([.wnam, .weu]),
      ),
    );
    add(
      CloudflareLoadBalancerPool(
        'variable',
        accountId: .literal('acc'),
        name: const .literal('pool'),
        origins: [const .new(address: .literal('192.0.2.1'))],
        checkRegions: .variable('regions'),
      ),
    );
    add(
      CloudflareLoadBalancerPool(
        'expression',
        accountId: .literal('acc'),
        name: const .literal('pool'),
        origins: [const .new(address: .literal('192.0.2.1'))],
        checkRegions: .expression(r'${tolist(var.regions)}'),
      ),
    );
  }
}

void main() {
  test('an enum list takes a literal list, a whole-list variable and a '
      'whole-list expression', () {
    final resources =
        _EnumListStack().synth().tfJson['resource'] as Map<String, dynamic>;
    final blocks =
        resources['cloudflare_load_balancer_pool'] as Map<String, dynamic>;
    expect((blocks['literal'] as Map)['check_regions'], ['WNAM', 'WEU']);
    expect((blocks['variable'] as Map)['check_regions'], r'${var.regions}');
    expect(
      (blocks['expression'] as Map)['check_regions'],
      r'${tolist(var.regions)}',
    );
  });
}

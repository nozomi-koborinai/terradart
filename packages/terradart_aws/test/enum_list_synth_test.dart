import 'package:terradart_aws/terradart_aws.dart';
import 'package:test/test.dart';

final class _EnumListStack extends Stack {
  _EnumListStack()
    : super(providers: const [AwsProvider(region: 'us-east-1')]) {
    variable<List<String>>('capabilities');
    add(
      AwsCloudformationStack(
        'literal',
        name: .literal('app'),
        capabilities: .literal([.capabilityIam, .capabilityNamedIam]),
      ),
    );
    add(
      AwsCloudformationStack(
        'variable',
        name: .literal('app'),
        capabilities: .variable('capabilities'),
      ),
    );
    add(
      AwsCloudformationStack(
        'expression',
        name: .literal('app'),
        capabilities: .expression(r'${tolist(var.capabilities)}'),
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
        resources['aws_cloudformation_stack'] as Map<String, dynamic>;
    expect((blocks['literal'] as Map)['capabilities'], [
      'CAPABILITY_IAM',
      'CAPABILITY_NAMED_IAM',
    ]);
    expect((blocks['variable'] as Map)['capabilities'], r'${var.capabilities}');
    expect(
      (blocks['expression'] as Map)['capabilities'],
      r'${tolist(var.capabilities)}',
    );
  });
}

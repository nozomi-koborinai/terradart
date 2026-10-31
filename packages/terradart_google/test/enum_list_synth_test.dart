import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

final class _EnumListStack extends Stack {
  _EnumListStack() : super(providers: const [GoogleProvider(project: 'demo')]) {
    variable<List<String>>('types');
    add(
      GoogleResourceManagerCapabilityConfig(
        'literal',
        capabilityConfigId: .literal('cc'),
        parent: .literal('folders/1'),
        types: .literal([.appManagement, .agentManagement]),
      ),
    );
    add(
      GoogleResourceManagerCapabilityConfig(
        'variable',
        capabilityConfigId: .literal('cc'),
        parent: .literal('folders/1'),
        types: .variable('types'),
      ),
    );
    add(
      GoogleResourceManagerCapabilityConfig(
        'expression',
        capabilityConfigId: .literal('cc'),
        parent: .literal('folders/1'),
        types: .expression(r'${tolist(var.types)}'),
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
        resources['google_resource_manager_capability_config']
            as Map<String, dynamic>;
    expect((blocks['literal'] as Map)['types'], [
      'APP_MANAGEMENT',
      'AGENT_MANAGEMENT',
    ]);
    expect((blocks['variable'] as Map)['types'], r'${var.types}');
    expect((blocks['expression'] as Map)['types'], r'${tolist(var.types)}');
  });
}

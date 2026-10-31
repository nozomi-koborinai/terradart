import 'package:terradart_azure/terradart_azure.dart';
import 'package:test/test.dart';

final class _EnumListStack extends Stack {
  _EnumListStack() : super(providers: const [AzureProvider()]) {
    variable<List<String>>('protocols');
    add(
      AzurermApiManagementApi(
        'literal',
        apiManagementName: const .literal('apim'),
        name: const .literal('api'),
        resourceGroupName: .literal('rg'),
        revision: const .literal('1'),
        protocols: const .literal([.https, .ws]),
      ),
    );
    add(
      AzurermApiManagementApi(
        'variable',
        apiManagementName: const .literal('apim'),
        name: const .literal('api'),
        resourceGroupName: .literal('rg'),
        revision: const .literal('1'),
        protocols: .variable('protocols'),
      ),
    );
    add(
      AzurermApiManagementApi(
        'expression',
        apiManagementName: const .literal('apim'),
        name: const .literal('api'),
        resourceGroupName: .literal('rg'),
        revision: const .literal('1'),
        protocols: .expression(r'${tolist(var.protocols)}'),
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
        resources['azurerm_api_management_api'] as Map<String, dynamic>;
    expect((blocks['literal'] as Map)['protocols'], ['https', 'ws']);
    expect((blocks['variable'] as Map)['protocols'], r'${var.protocols}');
    expect(
      (blocks['expression'] as Map)['protocols'],
      r'${tolist(var.protocols)}',
    );
  });
}

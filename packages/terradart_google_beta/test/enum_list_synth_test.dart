import 'package:terradart_google_beta/terradart_google_beta.dart';
import 'package:test/test.dart';

final class _EnumListStack extends Stack {
  _EnumListStack()
    : super(providers: const [GoogleBetaProvider(project: 'demo')]) {
    variable<List<String>>('platforms');
    add(
      GoogleSecurityScannerScanConfig(
        'literal',
        displayName: .literal('scan'),
        startingUrls: .literal(['https://example.com']),
        targetPlatforms: .literal([.appEngine, .compute]),
      ),
    );
    add(
      GoogleSecurityScannerScanConfig(
        'variable',
        displayName: .literal('scan'),
        startingUrls: .literal(['https://example.com']),
        targetPlatforms: .variable('platforms'),
      ),
    );
    add(
      GoogleSecurityScannerScanConfig(
        'expression',
        displayName: .literal('scan'),
        startingUrls: .literal(['https://example.com']),
        targetPlatforms: .expression(r'${tolist(var.platforms)}'),
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
        resources['google_security_scanner_scan_config']
            as Map<String, dynamic>;
    expect((blocks['literal'] as Map)['target_platforms'], [
      'APP_ENGINE',
      'COMPUTE',
    ]);
    expect(
      (blocks['variable'] as Map)['target_platforms'],
      r'${var.platforms}',
    );
    expect(
      (blocks['expression'] as Map)['target_platforms'],
      r'${tolist(var.platforms)}',
    );
  });
}

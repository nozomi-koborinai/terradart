import 'package:test/test.dart';
import '../tool/render_formula.dart';

void main() {
  test('renders a formula with version, urls, and sha256', () {
    final rb = renderFormula(
      className: 'TerradartCoverage',
      binName: 'terradart-coverage',
      desc: 'Terraform coverage checker for TerraDart',
      version: '0.13.1',
      testCmd: '--help',
      assets: {
        'darwin-arm64': ('https://example/terradart-coverage-darwin-arm64', 'aaa'),
        'darwin-amd64': ('https://example/terradart-coverage-darwin-amd64', 'bbb'),
        'linux-amd64': ('https://example/terradart-coverage-linux-amd64', 'ccc'),
      },
    );
    expect(rb, contains('class TerradartCoverage < Formula'));
    expect(rb, contains('version "0.13.1"'));
    expect(rb, contains('sha256 "aaa"'));
    expect(rb, contains('=> "terradart-coverage"'));
    expect(rb, contains('assert_match'));
  });
}

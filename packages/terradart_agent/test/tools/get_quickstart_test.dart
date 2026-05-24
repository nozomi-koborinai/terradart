import 'package:terradart_agent/src/tools/get_quickstart.dart';
import 'package:test/test.dart';

void main() {
  test('returns a known scenario', () {
    final r = getQuickstart('cloud-run-webhook');
    expect(r.found, isTrue);
    expect(r.scenario!.dartCode, contains('Stack'));
    expect(r.scenario!.gcsRefs, isNotEmpty);
  });

  test('unknown scenario lists available names', () {
    final r = getQuickstart('nope');
    expect(r.found, isFalse);
    expect(r.available, contains('cloud-run-webhook'));
  });
}

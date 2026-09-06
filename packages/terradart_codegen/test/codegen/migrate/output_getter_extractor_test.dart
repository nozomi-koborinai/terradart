import 'package:terradart_codegen/src/codegen/migrate/output_getter_extractor.dart';
import 'package:test/test.dart';

void main() {
  test('extracts TfRef.attribute getters in declaration order', () {
    const src = '''
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');
  TfRef<
    List<String>
  > get uris => TfRef.attribute<List<String>>(this, 'uris');
''';
    final getters = extractOutputGetters(src);
    expect(getters.map((g) => g.dartName), ['nameRef', 'labels', 'uris']);
    expect(getters.map((g) => g.tfName), ['name', 'effective_labels', 'uris']);
    expect(
      getters.map((g) => g.dartType),
      ['String', 'Map<String, String>', 'List<String>'],
    );
  });

  test('ignores unrelated getters', () {
    expect(extractOutputGetters("String get blockKey => 'x';"), isEmpty);
  });
}

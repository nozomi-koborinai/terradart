import 'dart:io';

import 'package:test/test.dart';

import 'catalog_class_names.dart';

void main() {
  late Directory tmp;

  setUp(() => tmp = Directory.systemTemp.createTempSync('catalog_names_'));
  tearDown(() => tmp.deleteSync(recursive: true));

  test('reads class names dart_style wrapped onto the next line', () {
    File('${tmp.path}/_catalog.g.dart').writeAsStringSync('''
const terradartCatalog = [
  CatalogEntry(
    className: 'GoogleShort',
  ),
  CatalogEntry(
    className:
        'AwsNotificationsManagedNotificationAdditionalChannelAssociation',
  ),
];
''');
    expect(catalogClassNames(tmp.path), {
      'GoogleShort',
      'AwsNotificationsManagedNotificationAdditionalChannelAssociation',
    });
  });

  test('covers every entry of the committed google and aws catalogs', () {
    for (final pkg in ['terradart_google', 'terradart_aws']) {
      final src = 'packages/$pkg/lib/src';
      final entries = RegExp(
        r'className:',
      ).allMatches(File('$src/_catalog.g.dart').readAsStringSync()).length;
      expect(catalogClassNames(src), hasLength(entries), reason: pkg);
    }
  });
}

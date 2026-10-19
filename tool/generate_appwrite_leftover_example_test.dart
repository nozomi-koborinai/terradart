import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'coverage_dummies.dart';
import 'coverage_stack.dart';
import 'generate_appwrite_leftover_example.dart';

void main() {
  final lane = CoverageLane.read('appwrite');

  test(
    'leftover places every factory the quickstart and the debt ledger leave out',
    () {
      final rendered = lane.generator.render(
        lane.dummies,
        exclude: lane.debtListed,
      );
      expect(rendered.unplaceable, isEmpty);
      expect(rendered.source, contains('AppwriteDocumentsdb('));
      expect(rendered.source, contains('AppwriteVectorsdb('));
      expect(rendered.source, contains('DataAppwriteDocumentsdb('));
      expect(rendered.source, contains('DataAppwriteVectorsdb('));
    },
  );

  test('the committed stack is the rendered one', () async {
    final rendered = lane.generator.render(
      lane.dummies,
      exclude: lane.debtListed,
    );
    final tmp = Directory.systemTemp.createTempSync('appwrite_stack_');
    addTearDown(() => tmp.deleteSync(recursive: true));
    final path = '${tmp.path}/main.dart';
    File(path).writeAsStringSync(rendered.source);
    await formatStack(path);
    expect(
      File(path).readAsStringSync(),
      File(
        'examples/appwrite_leftover_quickstart/lib/main.dart',
      ).readAsStringSync(),
    );
  });

  test('places every flat factory when no example covers it', () {
    final empty = Directory.systemTemp.createTempSync('appwrite_covered_');
    addTearDown(() => empty.deleteSync(recursive: true));
    final rendered = AppwriteLeftoverGenerator(
      omitConstructedIn: empty.path,
    ).render(lane.dummies, exclude: lane.debtListed);
    expect(rendered.unplaceable, isEmpty);
    for (final entry in appwriteMigrateManifest.entries) {
      if (lane.debtListed.contains(entry.className)) continue;
      expect(rendered.source, contains('${entry.className}('));
    }
  });

  test(
    'a ledger value wins over the type default, and a sensitive input stays an expression',
    () {
      final dummies = CoverageDummies.parse(
        "AppwriteWebhook.url: 'https://hooks.example.com'\n",
        path: 'appwrite.yaml',
        manifest: appwriteMigrateManifest,
        bindings: const {},
      );
      final empty = Directory.systemTemp.createTempSync('appwrite_covered_');
      addTearDown(() => empty.deleteSync(recursive: true));
      final rendered = AppwriteLeftoverGenerator(
        omitConstructedIn: empty.path,
      ).render(dummies, exclude: lane.debtListed);
      expect(
        rendered.source,
        contains("url: .literal('https://hooks.example.com')"),
      );
      expect(
        rendered.source,
        contains(
          r'''value: .value(Sensitive.expression(r'${sensitive("leftover")}'))''',
        ),
      );
      expect(rendered.source, isNot(contains('.valueWo(')));
      expect(rendered.source, isNot(contains('value: .literal(')));
      expect(rendered.source, isNot(contains('value: TfArg.literal(')));
    },
  );
}

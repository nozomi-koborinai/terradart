import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_google/project.dart';
import 'package:test/test.dart';

void main() {
  group('GoogleApi', () {
    test('a constant synthesizes its service name', () {
      final api = GoogleProjectService('compute', service: .compute);
      expect(api.argMap['service']!.toTfJson(), 'compute.googleapis.com');
      expect(GoogleApi.values, contains(GoogleApi.compute));
    });

    test('custom takes a Google API without a constant', () {
      expect(
        GoogleApi.custom('foo.googleapis.com').toTfJson(),
        'foo.googleapis.com',
      );
    });

    test('custom rejects a name outside googleapis.com', () {
      expect(
        () => GoogleApi.custom('foo.example.com'),
        throwsA(isA<ArgumentError>()),
      );
      expect(
        () => GoogleApi.custom('.googleapis.com'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('variable, expression and arg take any service', () {
      expect(GoogleApi.variable('api').toTfJson(), r'${var.api}');
      expect(GoogleApi.expression(r'${local.api}').toTfJson(), r'${local.api}');
      expect(
        const GoogleApi.arg(
          .literal('orders.endpoints.my-project.cloud.goog'),
        ).toTfJson(),
        'orders.endpoints.my-project.cloud.goog',
      );
    });
  });

  group('GoogleProjectService service', () {
    late Map<String, List<String>> errors;

    setUpAll(() async {
      const probes = {
        'constant': ".compute",
        'custom': ".custom('a.googleapis.com')",
        'typo': 'GoogleApi.comptue',
        'string': "'compute.googleapis.com'",
        'tf_arg': "TfArg.literal('compute.googleapis.com')",
        'literal': ".literal('compute.googleapis.com')",
      };
      final dir = Directory(
        p.join('..', '..', '.dart_tool'),
      ).createTempSync('google_api_probe_');
      addTearDown(() => dir.deleteSync(recursive: true));
      for (final MapEntry(:key, :value) in probes.entries) {
        File(p.join(dir.path, '$key.dart')).writeAsStringSync(
          "import 'package:terradart_google/project.dart';\n"
          "final api = GoogleProjectService('api', service: $value);\n",
        );
      }
      final result = await Process.run(Platform.resolvedExecutable, [
        'analyze',
        '--format=machine',
        dir.path,
      ]);
      errors = {for (final key in probes.keys) key: <String>[]};
      for (final line in '${result.stdout}${result.stderr}'.split('\n')) {
        final fields = line.split('|');
        if (fields.length < 8 || fields[0] != 'ERROR') continue;
        errors[p.basenameWithoutExtension(fields[3])]?.add(fields[2]);
      }
    });

    test('takes a GoogleApi', () {
      expect(errors['constant'], isEmpty);
      expect(errors['custom'], isEmpty);
    });

    test('rejects an unknown constant, a String and a TfArg', () {
      expect(errors['typo'], isNotEmpty);
      expect(errors['string'], isNotEmpty);
      expect(errors['tf_arg'], isNotEmpty);
      expect(errors['literal'], isNotEmpty);
    });
  });
}

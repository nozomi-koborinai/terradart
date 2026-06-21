import 'dart:convert';
import 'dart:io';

import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:test/test.dart';

/// Classifies a terraform invocation by its args so a fake runner can answer
/// like the real binary would.
String _kindOf(List<String> args) {
  if (args.contains('plan')) return 'plan';
  // `show -json` with a trailing plan-file path is the plan-show; without it,
  // it is the state-show.
  if (args.contains('show')) {
    return args.last == '-json' ? 'state-show' : 'plan-show';
  }
  return 'other';
}

ProcessResultLike _ok(String stdout) =>
    (exitCode: 0, stdout: stdout, stderr: '');

String _doc({required bool withResources}) => jsonEncode({
  'format_version': '1.0',
  'planned_values': {
    'root_module': {
      'resources': withResources
          ? [
              {'mode': 'managed', 'type': 'google_storage_bucket', 'name': 'a'},
            ]
          : <Map<String, dynamic>>[],
    },
  },
});

void main() {
  group('terraformShowJson', () {
    test(
      'uses existing state and does not plan when state has resources',
      () async {
        final kinds = <String>[];
        Future<ProcessResultLike> runner(String exe, List<String> args) async {
          kinds.add(_kindOf(args));
          return _ok(_doc(withResources: true));
        }

        final json = await terraformShowJson('some/dir', runner: runner);

        expect(json['planned_values'], isA<Map>());
        expect(kinds, ['state-show']);
        expect(kinds, isNot(contains('plan')));
      },
    );

    test('falls back to a plan when state is empty', () async {
      final kinds = <String>[];
      Future<ProcessResultLike> runner(String exe, List<String> args) async {
        final kind = _kindOf(args);
        kinds.add(kind);
        return switch (kind) {
          'state-show' => _ok(_doc(withResources: false)),
          'plan' => _ok(''),
          'plan-show' => _ok(_doc(withResources: true)),
          _ => _ok(''),
        };
      }

      final json = await terraformShowJson('some/dir', runner: runner);

      expect(json['planned_values'], isA<Map>());
      expect(kinds, ['state-show', 'plan', 'plan-show']);
    });

    test('throws TerraformFailed with an init hint when plan fails', () async {
      Future<ProcessResultLike> runner(String exe, List<String> args) async {
        return switch (_kindOf(args)) {
          'state-show' => _ok(_doc(withResources: false)),
          'plan' => (
            exitCode: 1,
            stdout: '',
            stderr: 'Error: Backend initialization required',
          ),
          _ => _ok(''),
        };
      }

      expect(
        () => terraformShowJson('some/dir', runner: runner),
        throwsA(
          isA<TerraformFailed>().having(
            (e) => e.message,
            'message',
            contains('terraform init'),
          ),
        ),
      );
    });

    test('throws TerraformUnavailable when the binary is missing', () async {
      Future<ProcessResultLike> runner(String exe, List<String> args) async {
        throw const ProcessException('terraform', [], 'No such file');
      }

      expect(
        () => terraformShowJson('some/dir', runner: runner),
        throwsA(isA<TerraformUnavailable>()),
      );
    });
  });
}

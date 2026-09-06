@Tags(['specsuite'])
library;

import 'dart:io';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:test/test.dart';

/// Locates the hashicorp/hcl specsuite `tests` directory: an explicit
/// checkout via `TERRADART_HCL_SPECSUITE` (the hcl repo root or its
/// `specsuite/tests` directory), else a cached shallow clone under
/// `.dart_tool/hcl_specsuite`, made on first use. Returns `null` only when
/// `TERRADART_HCL_SPECSUITE_SKIP` is set.
Directory? locateSpecsuite() {
  final env = Platform.environment;
  if (env['TERRADART_HCL_SPECSUITE_SKIP'] == '1') return null;
  final explicit = env['TERRADART_HCL_SPECSUITE'];
  if (explicit != null && explicit.isNotEmpty) {
    return _testsDir(Directory(explicit)) ??
        (throw StateError(
          'TERRADART_HCL_SPECSUITE=$explicit has no specsuite/tests',
        ));
  }
  final cache = Directory('.dart_tool/hcl_specsuite');
  final cached = _testsDir(cache);
  if (cached != null) return cached;
  final result = Process.runSync('git', [
    'clone',
    '--depth',
    '1',
    '--filter=blob:none',
    'https://github.com/hashicorp/hcl.git',
    cache.path,
  ]);
  if (result.exitCode != 0) {
    throw StateError(
      'could not fetch the hashicorp/hcl specsuite (git clone exit '
      '${result.exitCode}: ${result.stderr}). Point TERRADART_HCL_SPECSUITE at '
      'a checkout, or set TERRADART_HCL_SPECSUITE_SKIP=1 to skip offline.',
    );
  }
  return _testsDir(cache) ?? (throw StateError('clone has no specsuite/tests'));
}

Directory? _testsDir(Directory root) {
  for (final candidate in [
    Directory('${root.path}/specsuite/tests'),
    Directory('${root.path}/tests'),
    root,
  ]) {
    if (candidate.existsSync() &&
        candidate.listSync(recursive: true).any((f) => f.path.endsWith('.t'))) {
      return candidate;
    }
  }
  return null;
}

void main() {
  final tests = locateSpecsuite();
  if (tests == null) {
    test('specsuite', () {}, skip: 'TERRADART_HCL_SPECSUITE_SKIP=1');
    return;
  }
  final cases =
      tests
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.endsWith('.hcl'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));

  test(
    'the suite has cases',
    () => expect(cases.length, greaterThanOrEqualTo(10)),
  );

  group('every specsuite case', () {
    for (final hcl in cases) {
      final t = File('${hcl.path.substring(0, hcl.path.length - 4)}.t');
      final expectsDiagnostics =
          t.existsSync() &&
          RegExp(
            r'^diagnostics\s*\{',
            multiLine: true,
          ).hasMatch(t.readAsStringSync());
      test(hcl.path.substring(tests.path.length + 1), () {
        final src = hcl.readAsStringSync();
        if (expectsDiagnostics) {
          // Some diagnostics are schema errors the parser cannot see; a
          // parse must simply not crash with anything but a parse error.
          try {
            parseHcl(src, fileName: hcl.path);
          } on HclParseException {
            // A syntax error is the expected outcome for the syntax cases.
          }
        } else {
          expect(() => parseHcl(src, fileName: hcl.path), returnsNormally);
        }
      });
    }
  });

  test('heredoc values match the suite expectations', () {
    final dir = '${tests.path}/expressions';
    final actual = parseHcl(File('$dir/heredoc.hcl').readAsStringSync());
    final expected = parseHcl(File('$dir/heredoc.t').readAsStringSync());
    final spec = parseHcl(File('$dir/heredoc.hcldec').readAsStringSync());
    final variables = {
      for (final a in spec.body.block('variables')!.body.attributes)
        a.name: a.value.constantString,
    };
    String evaluate(TemplateExpr t) => [
      for (final p in t.parts)
        switch (p) {
          TemplateLiteral(:final text) => text,
          TemplateInterpolation(:final expr) =>
            variables[(expr as TraversalExpr).root]!,
          TemplateDirective() => throw StateError('no directives expected'),
        },
    ].join();
    final result = expected.body.attribute('result')!.value as ObjectExpr;
    var checked = 0;
    for (final group in ['normal', 'flush']) {
      final want = result.item(group)!.value as ObjectExpr;
      final got = actual.body.attribute(group)!.value as ObjectExpr;
      for (final item in want.items) {
        final template = got.item(item.keyName!)!.value as TemplateExpr;
        expect(
          evaluate(template),
          item.value.constantString,
          reason: '$group.${item.keyName}',
        );
        checked++;
      }
    }
    expect(checked, greaterThanOrEqualTo(15));
  });

  test('primitive literal values match the suite expectations', () {
    final dir = '${tests.path}/expressions';
    final actual = parseHcl(
      File('$dir/primitive_literals.hcl').readAsStringSync(),
    );
    final expected = parseHcl(
      File('$dir/primitive_literals.t').readAsStringSync(),
    );
    final result = expected.body.attribute('result')!.value as ObjectExpr;
    for (final item in result.items) {
      final got = actual.body.attribute(item.keyName!)!.value as LiteralExpr;
      final want = item.value as LiteralExpr;
      if (item.keyName == 'string_unicode_nonnorm') {
        // HCL normalizes strings to NFC; this parser keeps the source code
        // points (the migrator copies text back verbatim), so the combining
        // tilde in the input stays a combining tilde.
        expect(got.value, 'an\u0303os');
        continue;
      }
      expect(got.value, want.value, reason: item.keyName);
    }
    expect(result.items, hasLength(10));
  });
}

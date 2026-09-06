import 'dart:io';

import 'package:terradart_hcl/src/dump.dart';
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:test/test.dart';

String _roundTrip(String src) => serializeHcl(parseHcl(src));

void main() {
  group('HclWriter', () {
    test(
      'renders attributes, blocks, labels, one-line blocks and comments',
      () {
        const src = '''
# header
a = "x" # trailing

b "l1" l2 {
  c = 1
  d { e = true }
  f {}
  # dangling
}
''';
        expect(_roundTrip(src), src);
      },
    );

    test('escapes strings and template markers', () {
      final file = parseHcl(
        r'a = "q\"b\\c\n$${x}%%{y}"'
        '\n',
      );
      expect(
        serializeHcl(file),
        r'a = "q\"b\\c\n$${x}%%{y}"'
        '\n',
      );
      final t = parseHcl(
        r'a = "${var.x}-${~ y ~}%{ if z }!%{ endif }"'
        '\n',
      );
      expect(
        serializeHcl(t),
        r'a = "${var.x}-${~y~}%{if z}!%{endif}"'
        '\n',
      );
    });

    test('reproduces heredocs from their raw body', () {
      const src = 'a = <<-EOT\n    p ${r'${q}'}\n      r\n  EOT\nb = 1\n';
      expect(
        _roundTrip(src),
        'a = <<-EOT\n    p ${r'${q}'}\n      r\nEOT\nb = 1\n',
      );
      const nested = 'x {\n  a = <<EOT\n  p\n  EOT\n}\n';
      expect(_roundTrip(nested), nested);
    });

    test('tuples and objects', () {
      expect(_roundTrip('a = [1, "b", var.c]\n'), 'a = [1, "b", var.c]\n');
      expect(_roundTrip('a = [\n  1,\n  2,\n]\n'), 'a = [\n  1,\n  2,\n]\n');
      expect(
        _roundTrip('a = { b = 1, "c d" = 2, e: 3 }\n'),
        'a = { b = 1, "c d" = 2, e : 3 }\n',
      );
      expect(
        _roundTrip('a = {\n  source = "x"\n  version = "1"\n}\n'),
        'a = {\n  source = "x"\n  version = "1"\n}\n',
      );
      expect(_roundTrip('a = []\nb = {}\n'), 'a = []\nb = {}\n');
    });

    test('raw expressions are verbatim', () {
      const src = 'a = merge(\n  local.x,\n  { b = 1 },\n)\nc = x ? 1 : 2\n';
      expect(_roundTrip(src), src);
    });

    test('a heredoc inside a tuple stays valid HCL', () {
      const src = 'a = [<<EOT\nx\nEOT\n, 1]\n';
      final out = _roundTrip(src);
      expect(dumpHcl(parseHcl(out)), dumpHcl(parseHcl(src)));
    });

    test('writeExpr and writeEntry', () {
      const w = HclWriter();
      expect(w.writeExpr(parseHclExpression('var.x[0]')), 'var.x[0]');
      final file = parseHcl('b {\n  c = 1\n}\n');
      expect(
        w.writeEntry(file.body.blocks.single, level: 1),
        '  b {\n    c = 1\n  }\n',
      );
    });
  });

  group('round trip', () {
    final fixtures = [
      File('test/fixtures/repeated_blocks.tf'),
      ...Directory('../terradart_coverage/test/fixtures')
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.endsWith('.tf')),
    ];
    for (final f in fixtures) {
      test('parse → write → parse is structurally identical: ${f.path}', () {
        final src = f.readAsStringSync();
        final first = parseHcl(src, fileName: f.path);
        final written = serializeHcl(first);
        final again = parseHcl(written, fileName: '${f.path}#written');
        expect(dumpHcl(again), dumpHcl(first));
        // Writing is idempotent.
        expect(serializeHcl(again), written);
        // Comments survive too.
        expect(
          again.comments.map((c) => c.text),
          first.comments.map((c) => c.text),
        );
      });
    }
  });
}

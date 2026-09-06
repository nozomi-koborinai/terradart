import 'package:terradart_hcl/src/dump.dart';
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:test/test.dart';

Expr _expr(String src) => parseHcl('x = $src\n').body.attribute('x')!.value;

Matcher _parseError(String messagePart) => throwsA(
  isA<HclParseException>().having(
    (e) => e.first.message,
    'message',
    contains(messagePart),
  ),
);

void main() {
  group('structure', () {
    test('attributes and blocks keep source order and repeats', () {
      const src = '''
resource "google_cloud_run_v2_service" "svc" {
  name = "svc"
  template {
    containers {
      env {
        name = "A"
      }
      env {
        name = "B"
      }
      env {
        name = "C"
      }
    }
    containers {
      image = "x"
    }
  }
}
''';
      final file = parseHcl(src, fileName: 'main.tf');
      final res = file.body.blocks.single;
      expect(res.type, 'resource');
      expect(res.labelTexts, ['google_cloud_run_v2_service', 'svc']);
      expect(res.labels.every((l) => l.quoted), isTrue);
      final template = res.body.block('template')!;
      final containers = template.body.blocksOf('containers');
      expect(containers, hasLength(2));
      final envs = containers.first.body.blocksOf('env');
      expect(envs.map((e) => e.body.attribute('name')!.value.constantString), [
        'A',
        'B',
        'C',
      ]);
      expect(file.textOf(res), src.trim());
      expect(file.textOf(envs[1]), 'env {\n        name = "B"\n      }');
    });

    test('identifier labels and one-line blocks', () {
      final file = parseHcl('a b c {}\nd { e = 1 }\nf {\n}\n');
      final a = file.body.blocks.first;
      expect(a.labelTexts, ['b', 'c']);
      expect(a.labels.first.quoted, isFalse);
      expect(a.oneLine, isTrue);
      expect(a.body.isEmpty, isTrue);
      final d = file.body.blocks.elementAt(1);
      expect(d.oneLine, isTrue);
      expect(
        d.body.attribute('e')!.value,
        isA<LiteralExpr>().having((l) => l.value, 'value', 1),
      );
      expect(file.body.blocks.elementAt(2).oneLine, isFalse);
    });

    test('comments attach to the entry they precede and to the same line', () {
      const src = '''
# file header

// leading a
a = 1 # trailing a

/* leading b */
b "x" {
  c = 2 // trailing c
  # dangling in b
} # after b
''';
      final file = parseHcl(src);
      final a = file.body.attributes.single;
      expect(a.leadingComments.map((c) => c.text), [
        '# file header',
        '// leading a',
      ]);
      expect(a.trailingComment!.text, '# trailing a');
      final b = file.body.blocks.single;
      expect(b.leadingComments.map((c) => c.text), ['/* leading b */']);
      expect(b.leadingComments.single.isBlock, isTrue);
      expect(b.body.attribute('c')!.trailingComment!.text, '// trailing c');
      expect(b.body.trailingComments.map((c) => c.text), ['# dangling in b']);
      expect(b.trailingComment!.text, '# after b');
      expect(file.comments, hasLength(7));
    });

    test('CRLF input', () {
      final file = parseHcl('a = 1\r\nb {\r\n  c = "d"\r\n}\r\n');
      expect(file.body.attribute('a')!.value.constantString, isNull);
      expect(
        file.body.block('b')!.body.attribute('c')!.value.constantString,
        'd',
      );
    });

    test('empty and comment-only files', () {
      expect(parseHcl('').body.isEmpty, isTrue);
      final file = parseHcl('# only a comment\n');
      expect(file.body.isEmpty, isTrue);
      expect(file.body.trailingComments, hasLength(1));
    });
  });

  group('expressions', () {
    test('literals', () {
      expect((_expr('5') as LiteralExpr).value, 5);
      expect((_expr('3.2') as LiteralExpr).value, 3.2);
      expect((_expr('-1') as LiteralExpr).value, -1);
      expect((_expr('1e3') as LiteralExpr).value, 1000);
      expect((_expr('true') as LiteralExpr).value, true);
      expect((_expr('null') as LiteralExpr).isNull, isTrue);
      final big = _expr('3.14159265358979323846264338327950288') as LiteralExpr;
      expect(big.source, '3.14159265358979323846264338327950288');
      expect((_expr('"hello"') as LiteralExpr).value, 'hello');
      expect((_expr(r'"a\"b\\c\n\té"') as LiteralExpr).value, 'a"b\\c\n\té');
      expect(
        (_expr(r'"$${not} %%{either}"') as LiteralExpr).value,
        r'${not} %{either}',
      );
      expect((_expr('""') as LiteralExpr).value, '');
    });

    test('templates', () {
      final t = _expr(r'"${var.a}-${b}"') as TemplateExpr;
      expect(t.parts, hasLength(3));
      expect(
        (t.parts[0] as TemplateInterpolation).expr,
        isA<TraversalExpr>().having((e) => e.dottedPath, 'path', 'var.a'),
      );
      expect((t.parts[1] as TemplateLiteral).text, '-');
      expect(t.isConstant, isFalse);
      expect(t.constantString, isNull);

      final d = _expr(r'"%{ if var.x }a${ y }%{ endif }"') as TemplateExpr;
      expect(d.parts.whereType<TemplateDirective>().map((p) => p.content), [
        'if var.x',
        'endif',
      ]);

      final strip =
          (_expr(r'"${~ x ~}"') as TemplateExpr).parts.single
              as TemplateInterpolation;
      expect(strip.stripLeft, isTrue);
      expect(strip.stripRight, isTrue);
      expect((strip.expr as TraversalExpr).root, 'x');

      final nested =
          (_expr(r'"${lookup(var.m, "k")}"') as TemplateExpr).parts.single
              as TemplateInterpolation;
      expect(
        nested.expr,
        isA<RawExpr>().having((r) => r.source, 'source', 'lookup(var.m, "k")'),
      );
    });

    test('heredocs', () {
      final file = parseHcl(
        'a = <<EOT\n  x ${r'${y}'}\n  z\n  EOT\nb = <<-EOT\n    p\n      q\n  EOT\n',
      );
      final a = file.body.attribute('a')!.value as TemplateExpr;
      expect(a.isHeredoc, isTrue);
      expect(a.delimiter, 'EOT');
      expect(a.flush, isFalse);
      expect(a.rawBody, '  x ${r'${y}'}\n  z\n');
      expect((a.parts.first as TemplateLiteral).text, '  x ');
      expect(a.parts[1], isA<TemplateInterpolation>());
      final b = file.body.attribute('b')!.value as TemplateExpr;
      expect(b.flush, isTrue);
      expect(b.constantString, 'p\n  q\n');
      expect(b.rawBody, '    p\n      q\n');
    });

    test('traversals', () {
      expect((_expr('var.x') as TraversalExpr).dottedPath, 'var.x');
      final t = _expr('google_pubsub_topic.t.name') as TraversalExpr;
      expect(t.root, 'google_pubsub_topic');
      expect(t.steps.map((s) => (s as AttrStep).name), ['t', 'name']);
      final idx = _expr('local.l[0]["k"].v') as TraversalExpr;
      expect(idx.steps, hasLength(4));
      expect((idx.steps[0] as AttrStep).name, 'l');
      expect((idx.steps[1] as IndexStep).index.value, 0);
      expect((idx.steps[2] as IndexStep).index.value, 'k');
      expect((idx.steps[3] as AttrStep).name, 'v');
      expect(idx.dottedPath, 'local.l.v');
      expect((_expr('each.key') as TraversalExpr).dottedPath, 'each.key');
    });

    test('everything else is raw with exact source', () {
      expect((_expr('a.b.*.c') as RawExpr).source, 'a.b.*.c');
      expect((_expr('a.b[*].c') as RawExpr).source, 'a.b[*].c');
      expect((_expr('lower(var.x)') as RawExpr).source, 'lower(var.x)');
      expect((_expr('a.0') as RawExpr).source, 'a.0');
      expect((_expr('1 + 2 * 3') as RawExpr).source, '1 + 2 * 3');
      expect((_expr('x ? "a" : "b"') as RawExpr).source, 'x ? "a" : "b"');
      expect((_expr('!enabled') as RawExpr).source, '!enabled');
      expect((_expr('(1)') as RawExpr).source, '(1)');
      expect((_expr('m[var.k]') as RawExpr).source, 'm[var.k]');
      expect((_expr('[for i in x : i]') as RawExpr).source, '[for i in x : i]');
      expect(
        (_expr('{ for k, v in m : k => v }') as RawExpr).source,
        '{ for k, v in m : k => v }',
      );
      final multi = _expr('merge(\n  a,\n  b, # c\n)') as RawExpr;
      expect(multi.source, 'merge(\n  a,\n  b, # c\n)');
    });

    test('tuples', () {
      final t = _expr('[1, "a", var.x]') as TupleExpr;
      expect(t.elements, hasLength(3));
      expect(t.multiLine, isFalse);
      final m = _expr('[\n  1,\n  # comment\n  2,\n]') as TupleExpr;
      expect(m.elements.map((e) => (e as LiteralExpr).value), [1, 2]);
      expect(m.multiLine, isTrue);
      expect((_expr('[]') as TupleExpr).elements, isEmpty);
      final nested = _expr('[[1], { a = 2 }]') as TupleExpr;
      expect(nested.elements[0], isA<TupleExpr>());
      expect(nested.elements[1], isA<ObjectExpr>());
    });

    test('objects', () {
      final o = _expr('{ a = 1, "b" = 2, (c) = 3, d: 4 }') as ObjectExpr;
      expect(o.items.map((i) => i.key.constantString), ['a', 'b', null, 'd']);
      expect(
        o.items[2].key,
        isA<RawExpr>().having((r) => r.source, 'source', '(c)'),
      );
      expect(o.items[3].colon, isTrue);
      expect(
        o.item('b')!.value,
        isA<LiteralExpr>().having((l) => l.value, 'value', 2),
      );
      final m =
          _expr(
                '{\n  source  = "hashicorp/google"\n  version = "~> 7.0"\n  nested = {\n    k = "v"\n  }\n}',
              )
              as ObjectExpr;
      expect(m.multiLine, isTrue);
      expect(m.items.map((i) => i.keyName), ['source', 'version', 'nested']);
      expect(
        (m.item('nested')!.value as ObjectExpr).item('k')!.value.constantString,
        'v',
      );
      expect((_expr('{}') as ObjectExpr).items, isEmpty);
    });

    test('parseHclExpression', () {
      expect(parseHclExpression('var.x'), isA<TraversalExpr>());
      expect(parseHclExpression('[1,\n 2]'), isA<TupleExpr>());
      expect(parseHclExpression('  "s"  '), isA<LiteralExpr>());
      expect(() => parseHclExpression('1, 2'), _parseError('unexpected'));
      // Adjacent primaries are not validated: the shallow parser keeps them raw.
      expect(parseHclExpression('1 2'), isA<RawExpr>());
    });
  });

  group('errors', () {
    test('arguments must be on their own line', () {
      expect(
        () => parseHcl('a = "a value", b = "b value"\n'),
        _parseError('own line'),
      );
      expect(() => parseHcl('a = 1 b = 2\n'), _parseError('missing newline'));
    });

    test('single-line block rules', () {
      expect(
        () => parseHcl('a { b = "foo", c = "bar" }\n'),
        throwsA(isA<HclParseException>()),
      );
      expect(() => parseHcl('a { b = "foo"\n}\n'), _parseError('same line'));
      expect(
        () => parseHcl('a { b = "foo"\n  c = "bar" }\n'),
        _parseError('same line'),
      );
      expect(
        () => parseHcl('a { d {} }\n'),
        _parseError('cannot contain another block'),
      );
    });

    test('unclosed constructs', () {
      expect(() => parseHcl('a {\n'), _parseError('unclosed block "a"'));
      expect(() => parseHcl('a = (1\n'), _parseError('unbalanced'));
      expect(() => parseHcl('a = [1, 2\n'), _parseError('unterminated tuple'));
      expect(
        () => parseHcl('a = {\n  b = 1\n'),
        _parseError('unterminated object'),
      );
      expect(() => parseHcl('a =\n'), _parseError('expected an expression'));
      expect(() => parseHcl('a = foo['), _parseError('unbalanced'));
      expect(() => parseHcl('a = foo[0'), _parseError('unbalanced'));
      expect(() => parseHclExpression('foo['), _parseError('unbalanced'));
      expect(() => parseHcl('a b c\n'), _parseError('expected "{"'));
      expect(() => parseHcl('a\n'), _parseError('expected "=" or "{"'));
      expect(() => parseHcl('}\n'), _parseError('unexpected "}"'));
      expect(
        () => parseHcl('a "${r'${x}'}" {}\n'),
        _parseError('plain string'),
      );
    });

    test('diagnostics carry the file name and position', () {
      try {
        parseHcl('ok = 1\nbad = (\n', fileName: 'x.tf');
        fail('expected an exception');
      } on HclParseException catch (e) {
        expect(e.first.fileName, 'x.tf');
        expect(e.first.range.start.line, 2);
        expect(e.toString(), contains('x.tf:2:'));
      }
    });
  });

  test('dumpHcl is position-free and stable', () {
    final a = dumpHcl(parseHcl('a = 1\nb "x" { c = [1,2] }\n'));
    final b = dumpHcl(parseHcl('\n\na   =   1\n\nb "x" { c = [1, 2] }\n'));
    expect(a, b);
    expect(a, 'a = 1\nb "x" { (one-line)\n  c = [1, 2]\n}\n');
  });
}

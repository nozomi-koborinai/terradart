import 'package:terradart_core/src/tf_template.dart';
import 'package:test/test.dart';

void main() {
  group('hasTemplateSequence', () {
    test('true for an interpolation or a directive anywhere', () {
      expect(hasTemplateSequence(r'${var.a}'), isTrue);
      expect(hasTemplateSequence(r'prefix-${var.a}-suffix'), isTrue);
      expect(hasTemplateSequence('%{ if true }x%{ endif }'), isTrue);
    });

    test('false for plain text and for escaped sequences only', () {
      expect(hasTemplateSequence(''), isFalse);
      expect(hasTemplateSequence('orders'), isFalse);
      expect(hasTemplateSequence(r'$${literal}'), isFalse);
      expect(hasTemplateSequence('%%{literal}'), isFalse);
      expect(hasTemplateSequence(r'price-$5 {braces}'), isFalse);
    });

    test(r'$$${ is a literal dollar followed by an escaped sequence', () {
      expect(hasTemplateSequence(r'$$${x}'), isFalse);
      expect(hasTemplateSequence(r'$$$${x}${y}'), isTrue);
    });
  });

  group('templateSequenceBodies', () {
    test('returns each sequence body in order, braces balanced', () {
      expect(
        templateSequenceBodies(r'a-${var.x}-%{ if var.y }b%{ endif }'),
        equals(['var.x', ' if var.y ', ' endif ']),
      );
      expect(
        templateSequenceBodies(r'${ {a = 1}["a"] }'),
        equals([' {a = 1}[ ] ']),
      );
    });

    test('blanks quoted strings and scans the sequences nested in them', () {
      expect(
        templateSequenceBodies(r'${format("%s-${var.n}", "x")}'),
        equals(['format( ,  )', 'var.n']),
      );
    });

    test('an unterminated sequence still yields its body', () {
      expect(templateSequenceBodies(r'${var.x'), equals(['var.x']));
      expect(templateSequenceBodies(r'${"unterminated'), equals([' ']));
    });
  });

  group('templateVariableNames', () {
    test('finds var.<name> in interpolations and directives', () {
      expect(
        templateVariableNames(r'${var.a}${var.a}-%{ if var.b-c }x%{ endif }'),
        equals({'a', 'b-c'}),
      );
    });

    test('does not match escaped text, string literals or lookalikes', () {
      expect(
        templateVariableNames(
          r'$${var.no} ${lookup(var.m, "var.key")} ${x.var.y} ${avar.z} '
          r'${var.m["${var.k}"]}',
        ),
        equals({'m', 'k'}),
      );
      expect(templateVariableNames('plain var.text'), isEmpty);
    });
  });
}

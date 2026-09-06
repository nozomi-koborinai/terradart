import 'package:terradart_hcl/src/lexer.dart';
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:test/test.dart';

List<TokenType> _types(String src) =>
    Lexer(src).tokenize().map((t) => t.type).toList();

void main() {
  group('Lexer', () {
    test('tokenizes structure, keeping newlines and comments', () {
      expect(_types('a = "x" # c\nb { }\n'), [
        TokenType.ident,
        TokenType.equal,
        TokenType.string,
        TokenType.comment,
        TokenType.newline,
        TokenType.ident,
        TokenType.lbrace,
        TokenType.rbrace,
        TokenType.newline,
        TokenType.eof,
      ]);
    });

    test('a string with nested interpolation and quotes is one token', () {
      final tokens = Lexer('x = "${r'${lookup(var.m, "k")}'}-y"').tokenize();
      final str = tokens.firstWhere((t) => t.type == TokenType.string);
      expect(str.inner, r'${lookup(var.m, "k")}-y');
      expect(tokens.where((t) => t.type == TokenType.string), hasLength(1));
    });

    test('heredoc token carries the marker, flush flag and raw body', () {
      final tokens = Lexer('x = <<-EOT\n  a\n   b\n  EOT\ny = 1\n').tokenize();
      final h = tokens.firstWhere((t) => t.type == TokenType.heredoc);
      expect(h.delimiter, 'EOT');
      expect(h.flush, isTrue);
      expect(h.body, '  a\n   b\n');
      // The newline after the closing marker is a regular newline token.
      expect(tokens[tokens.indexOf(h) + 1].type, TokenType.newline);
      expect(tokens[tokens.indexOf(h) + 2].text, 'y');
    });

    test('numbers and operators', () {
      final tokens = Lexer(
        '1 1.5 1e3 1.5E-2 == != <= >= && || => ...',
      ).tokenize();
      expect(tokens.map((t) => t.text).where((t) => t.isNotEmpty).toList(), [
        '1',
        '1.5',
        '1e3',
        '1.5E-2',
        '==',
        '!=',
        '<=',
        '>=',
        '&&',
        '||',
        '=>',
        '...',
      ]);
      expect(tokens[4].type, TokenType.op);
      expect(tokens[10].type, TokenType.fatArrow);
      expect(tokens[11].type, TokenType.ellipsis);
    });

    test('unicode identifiers', () {
      final tokens = Lexer('ünïcode-name_1 = 1').tokenize();
      expect(tokens.first.type, TokenType.ident);
      expect(tokens.first.text, 'ünïcode-name_1');
    });

    test('positions are one-based lines and columns', () {
      final tokens = Lexer('a = 1\n  bb = 2').tokenize();
      final bb = tokens.firstWhere((t) => t.text == 'bb');
      expect(bb.range.start.line, 2);
      expect(bb.range.start.column, 3);
      expect(bb.range.start.offset, 8);
      expect(bb.range.end.offset, 10);
    });

    test(
      'rejects unterminated strings, heredocs, comments and stray characters',
      () {
        expect(
          () => Lexer('a = "abc').tokenize(),
          throwsA(isA<HclParseException>()),
        );
        expect(
          () => Lexer('a = <<EOT\nabc\n').tokenize(),
          throwsA(isA<HclParseException>()),
        );
        expect(
          () => Lexer('/* open').tokenize(),
          throwsA(isA<HclParseException>()),
        );
        expect(
          () => Lexer('a = @').tokenize(),
          throwsA(isA<HclParseException>()),
        );
        expect(
          () => Lexer('a = "line\nbreak"').tokenize(),
          throwsA(isA<HclParseException>()),
        );
      },
    );

    test(
      'leadingWhitespace counts characters, including tabs and em spaces',
      () {
        expect(Lexer.leadingWhitespace('    x'), 4);
        expect(Lexer.leadingWhitespace('\tx'), 1);
        expect(Lexer.leadingWhitespace('   x'), 3);
        expect(Lexer.leadingWhitespace('x'), 0);
      },
    );
  });
}

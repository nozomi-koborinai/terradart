import 'diagnostics.dart';
import 'source.dart';

enum TokenType {
  lbrace,
  rbrace,
  lbrack,
  rbrack,
  lparen,
  rparen,
  equal,
  comma,
  dot,
  ellipsis,
  colon,
  question,
  fatArrow,
  op,
  ident,
  number,
  string,
  heredoc,
  newline,
  comment,
  eof,
}

final class Token {
  const Token(
    this.type,
    this.text,
    this.range, {
    this.inner,
    this.delimiter,
    this.flush = false,
    this.body,
    this.bodyRange,
  });

  final TokenType type;
  final String text;
  final SourceRange range;
  final String? inner;
  final String? delimiter;
  final bool flush;
  final String? body;
  final SourceRange? bodyRange;

  bool get isOp => type == TokenType.op;

  @override
  String toString() => '$type(${text.replaceAll('\n', r'\n')})@$range';
}

final class Lexer {
  Lexer(
    this.source, {
    this.fileName,
    this.baseOffset = 0,
    this.baseLine = 1,
    this.baseColumn = 1,
  });

  final String source;
  final String? fileName;
  final int baseOffset;
  final int baseLine;
  final int baseColumn;

  int _pos = 0;
  int _line = 1;
  int _col = 1;
  final _tokens = <Token>[];

  static const _quote = 0x22;
  static const _hash = 0x23;
  static const _dollar = 0x24;
  static const _percent = 0x25;
  static const _star = 0x2a;
  static const _minus = 0x2d;
  static const _slash = 0x2f;
  static const _lessThan = 0x3c;
  static const _backslash = 0x5c;
  static const _underscore = 0x5f;
  static const _lbrace = 0x7b;

  static final RegExp _letter = RegExp(r'\p{L}', unicode: true);
  static final RegExp _mark = RegExp(r'\p{M}', unicode: true);
  static final RegExp _space = RegExp(r'\p{White_Space}', unicode: true);

  List<Token> tokenize() {
    while (_pos < source.length) {
      final c = source.codeUnitAt(_pos);
      if (c == 0x0a) {
        _newline();
      } else if (c == 0x20 || c == 0x09 || c == 0x0d) {
        _advance();
      } else if (c == _hash) {
        _lineComment();
      } else if (c == _slash && _peekChar(1) == _slash) {
        _lineComment();
      } else if (c == _slash && _peekChar(1) == _star) {
        _blockComment();
      } else if (c == _quote) {
        _string();
      } else if (c == _lessThan && _peekChar(1) == _lessThan) {
        _heredoc();
      } else if (_isDigit(c)) {
        _number();
      } else if (_isIdStart(_pos)) {
        _ident();
      } else {
        _punct();
      }
    }
    _tokens.add(Token(TokenType.eof, '', SourceRange(_here(), _here())));
    return _tokens;
  }

  int _peekChar(int ahead) =>
      _pos + ahead < source.length ? source.codeUnitAt(_pos + ahead) : -1;

  SourcePos _here() => SourcePos(
    baseOffset + _pos,
    baseLine + _line - 1,
    _line == 1 ? baseColumn + _col - 1 : _col,
  );

  void _advance([int n = 1]) {
    for (var i = 0; i < n; i++) {
      if (source.codeUnitAt(_pos) == 0x0a) {
        _line++;
        _col = 1;
      } else {
        _col++;
      }
      _pos++;
    }
  }

  void _emit(TokenType type, SourcePos start, {String? text}) {
    final end = _here();
    _tokens.add(
      Token(
        type,
        text ?? source.substring(start.offset - baseOffset, _pos),
        SourceRange(start, end),
      ),
    );
  }

  Never _fail(String message, SourcePos start) {
    throw HclParseException([
      HclDiagnostic(message, SourceRange(start, _here()), fileName: fileName),
    ]);
  }

  static bool _isDigit(int c) => c >= 0x30 && c <= 0x39;

  bool _isIdStart(int at) {
    final c = source.codeUnitAt(at);
    if (c == _underscore) return true;
    if ((c >= 0x41 && c <= 0x5a) || (c >= 0x61 && c <= 0x7a)) return true;
    if (c < 0x80) return false;
    return _letter.hasMatch(_charAt(at));
  }

  bool _isIdContinue(int at) {
    final c = source.codeUnitAt(at);
    if (c == _minus || _isDigit(c)) return true;
    if (_isIdStart(at)) return true;
    if (c < 0x80) return false;
    return _mark.hasMatch(_charAt(at));
  }

  String _charAt(int at) {
    final c = source.codeUnitAt(at);
    if (c >= 0xd800 && c <= 0xdbff && at + 1 < source.length) {
      return source.substring(at, at + 2);
    }
    return String.fromCharCode(c);
  }

  static int leadingWhitespace(String line) {
    var n = 0;
    for (final r in line.runes) {
      if (r == 0x20 ||
          r == 0x09 ||
          (r > 0x7f && _space.hasMatch(String.fromCharCode(r)))) {
        n++;
      } else {
        break;
      }
    }
    return n;
  }

  void _newline() {
    final start = _here();
    _advance();
    _emit(TokenType.newline, start);
  }

  void _lineComment() {
    final start = _here();
    while (_pos < source.length && source.codeUnitAt(_pos) != 0x0a) {
      _advance();
    }
    var text = source.substring(start.offset - baseOffset, _pos);
    if (text.endsWith('\r')) text = text.substring(0, text.length - 1);
    _emit(TokenType.comment, start, text: text);
  }

  void _blockComment() {
    final start = _here();
    _advance(2);
    while (true) {
      if (_pos >= source.length) _fail('unterminated block comment', start);
      if (source.codeUnitAt(_pos) == 0x2a && _peekChar(1) == 0x2f) {
        _advance(2);
        break;
      }
      _advance();
    }
    _emit(TokenType.comment, start);
  }

  void _number() {
    final start = _here();
    while (_pos < source.length && _isDigit(source.codeUnitAt(_pos))) {
      _advance();
    }
    if (_pos < source.length &&
        source.codeUnitAt(_pos) == 0x2e &&
        _isDigit(_peekChar(1))) {
      _advance();
      while (_pos < source.length && _isDigit(source.codeUnitAt(_pos))) {
        _advance();
      }
    }
    final e = _pos < source.length ? source.codeUnitAt(_pos) : -1;
    if (e == 0x65 || e == 0x45) {
      var ahead = 1;
      final sign = _peekChar(1);
      if (sign == 0x2b || sign == 0x2d) ahead = 2;
      if (_isDigit(_peekChar(ahead))) {
        _advance(ahead);
        while (_pos < source.length && _isDigit(source.codeUnitAt(_pos))) {
          _advance();
        }
      }
    }
    _emit(TokenType.number, start);
  }

  void _ident() {
    final start = _here();
    _advance(_charAt(_pos).length);
    while (_pos < source.length && _isIdContinue(_pos)) {
      _advance(_charAt(_pos).length);
    }
    _emit(TokenType.ident, start);
  }

  void _string() {
    final start = _here();
    _advance();
    final innerStart = _pos;
    while (true) {
      if (_pos >= source.length) _fail('unterminated string', start);
      final c = source.codeUnitAt(_pos);
      if (c == _backslash) {
        if (_pos + 1 >= source.length) _fail('unterminated string', start);
        _advance(2);
      } else if (c == _quote) {
        break;
      } else if (c == 0x0a) {
        _fail('newline in string literal', start);
      } else if ((c == _dollar || c == _percent) &&
          _peekChar(1) == c &&
          _peekChar(2) == _lbrace) {
        _advance(3);
      } else if ((c == _dollar || c == _percent) && _peekChar(1) == _lbrace) {
        _advance(2);
        _skipInterpolation(start);
      } else {
        _advance();
      }
    }
    final inner = source.substring(innerStart, _pos);
    _advance();
    final end = _here();
    _tokens.add(
      Token(
        TokenType.string,
        source.substring(start.offset - baseOffset, _pos),
        SourceRange(start, end),
        inner: inner,
      ),
    );
  }

  void _skipInterpolation(SourcePos start) {
    var depth = 1;
    while (true) {
      if (_pos >= source.length) _fail('unterminated interpolation', start);
      final c = source.codeUnitAt(_pos);
      if (c == _quote) {
        _skipNestedString(start);
      } else if (c == _lbrace) {
        depth++;
        _advance();
      } else if (c == 0x7d) {
        depth--;
        _advance();
        if (depth == 0) return;
      } else {
        _advance();
      }
    }
  }

  void _skipNestedString(SourcePos start) {
    _advance();
    while (true) {
      if (_pos >= source.length) _fail('unterminated string', start);
      final c = source.codeUnitAt(_pos);
      if (c == _backslash) {
        _advance(2);
      } else if (c == _quote) {
        _advance();
        return;
      } else if ((c == _dollar || c == _percent) &&
          _peekChar(1) == c &&
          _peekChar(2) == _lbrace) {
        _advance(3);
      } else if ((c == _dollar || c == _percent) && _peekChar(1) == _lbrace) {
        _advance(2);
        _skipInterpolation(start);
      } else {
        _advance();
      }
    }
  }

  void _heredoc() {
    final start = _here();
    _advance(2);
    var flush = false;
    if (_pos < source.length && source.codeUnitAt(_pos) == _minus) {
      flush = true;
      _advance();
    }
    while (_pos < source.length &&
        (source.codeUnitAt(_pos) == 0x20 || source.codeUnitAt(_pos) == 0x09)) {
      _advance();
    }
    if (_pos >= source.length || !_isIdStart(_pos)) {
      _fail('heredoc marker expected after <<', start);
    }
    final markerStart = _pos;
    while (_pos < source.length && _isIdContinue(_pos)) {
      _advance(_charAt(_pos).length);
    }
    final delimiter = source.substring(markerStart, _pos);
    while (_pos < source.length &&
        (source.codeUnitAt(_pos) == 0x20 ||
            source.codeUnitAt(_pos) == 0x09 ||
            source.codeUnitAt(_pos) == 0x0d)) {
      _advance();
    }
    if (_pos >= source.length || source.codeUnitAt(_pos) != 0x0a) {
      _fail('newline expected after heredoc marker', start);
    }
    _advance();
    final bodyStartPos = _here();
    final bodyStart = _pos;
    while (true) {
      if (_pos >= source.length) {
        _fail('unterminated heredoc (missing closing "$delimiter")', start);
      }
      final lineStart = _pos;
      var lineEnd = source.indexOf('\n', lineStart);
      if (lineEnd < 0) lineEnd = source.length;
      var line = source.substring(lineStart, lineEnd);
      if (line.endsWith('\r')) line = line.substring(0, line.length - 1);
      if (line.trim() == delimiter) {
        final body = source.substring(bodyStart, lineStart);
        final bodyRange = SourceRange(bodyStartPos, _here());
        final markerOffset = lineStart + line.indexOf(delimiter);
        _advance(markerOffset - _pos + delimiter.length);
        final end = _here();
        _tokens.add(
          Token(
            TokenType.heredoc,
            source.substring(start.offset - baseOffset, _pos),
            SourceRange(start, end),
            delimiter: delimiter,
            flush: flush,
            body: body,
            bodyRange: bodyRange,
          ),
        );
        return;
      }
      _advance(lineEnd - _pos);
      if (_pos < source.length) _advance();
    }
  }

  void _punct() {
    final start = _here();
    final c = source.codeUnitAt(_pos);
    final n = _peekChar(1);
    final n2 = _peekChar(2);
    TokenType? type;
    var len = 1;
    if (c == 0x2e && n == 0x2e && n2 == 0x2e) {
      type = TokenType.ellipsis;
      len = 3;
    } else if (c == 0x3d && n == 0x3e) {
      type = TokenType.fatArrow;
      len = 2;
    } else if ((c == 0x3d || c == 0x21 || c == 0x3c || c == 0x3e) &&
        n == 0x3d) {
      type = TokenType.op;
      len = 2;
    } else if ((c == 0x26 && n == 0x26) || (c == 0x7c && n == 0x7c)) {
      type = TokenType.op;
      len = 2;
    } else {
      type = switch (c) {
        0x7b => TokenType.lbrace,
        0x7d => TokenType.rbrace,
        0x5b => TokenType.lbrack,
        0x5d => TokenType.rbrack,
        0x28 => TokenType.lparen,
        0x29 => TokenType.rparen,
        0x3d => TokenType.equal,
        0x2c => TokenType.comma,
        0x2e => TokenType.dot,
        0x3a => TokenType.colon,
        0x3f => TokenType.question,
        0x2b ||
        0x2d ||
        0x2a ||
        0x2f ||
        0x25 ||
        0x3c ||
        0x3e ||
        0x21 => TokenType.op,
        _ => null,
      };
    }
    if (type == null) {
      _advance(_charAt(_pos).length);
      _fail(
        'unexpected character "${_charAt(start.offset - baseOffset)}"',
        start,
      );
    }
    _advance(len);
    _emit(type, start);
  }
}

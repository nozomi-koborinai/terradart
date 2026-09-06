import 'diagnostics.dart';
import 'source.dart';

/// Token kinds of HCL native syntax.
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

  /// `== != < <= > >= + - * / % && || !`
  op,
  ident,
  number,

  /// A quoted string; [Token.inner] is the text between the quotes.
  string,

  /// A heredoc; see [Token.delimiter], [Token.flush], [Token.body].
  heredoc,
  newline,
  comment,
  eof,
}

/// One lexical token with its source [range] and verbatim [text].
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

  /// For [TokenType.string]: the raw text between the quotes (escapes and
  /// interpolations undecoded).
  final String? inner;

  /// For [TokenType.heredoc]: the marker identifier.
  final String? delimiter;

  /// For [TokenType.heredoc]: true for the `<<-` form.
  final bool flush;

  /// For [TokenType.heredoc]: the lines between the opening line and the
  /// closing marker, exactly as written (each ending in `\n`).
  final String? body;

  /// For [TokenType.heredoc]: the range of [body] within the file.
  final SourceRange? bodyRange;

  bool get isOp => type == TokenType.op;

  @override
  String toString() => '$type(${text.replaceAll('\n', r'\n')})@$range';
}

/// Splits HCL source into [Token]s. Whitespace is dropped; newlines and
/// comments are tokens so the parser can decide where they matter.
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

  /// When lexing a fragment (an interpolation inside a string), the
  /// position of the fragment's first character in the enclosing file, so
  /// every token range is file-relative.
  final int baseOffset;
  final int baseLine;
  final int baseColumn;

  int _pos = 0;
  int _line = 1;
  int _col = 1;
  final _tokens = <Token>[];

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
      } else if (c == 0x23 /* # */ ) {
        _lineComment();
      } else if (c == 0x2f /* / */ && _peekChar(1) == 0x2f) {
        _lineComment();
      } else if (c == 0x2f && _peekChar(1) == 0x2a /* * */ ) {
        _blockComment();
      } else if (c == 0x22 /* " */ ) {
        _string();
      } else if (c == 0x3c /* < */ && _peekChar(1) == 0x3c) {
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

  // -- helpers --------------------------------------------------------------

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
    if (c == 0x5f /* _ */ ) return true;
    if ((c >= 0x41 && c <= 0x5a) || (c >= 0x61 && c <= 0x7a)) return true;
    if (c < 0x80) return false;
    return _letter.hasMatch(_charAt(at));
  }

  bool _isIdContinue(int at) {
    final c = source.codeUnitAt(at);
    if (c == 0x2d /* - */ || _isDigit(c)) return true;
    if (_isIdStart(at)) return true;
    if (c < 0x80) return false;
    return _mark.hasMatch(_charAt(at));
  }

  /// The character at [at], as a string (a surrogate pair when needed).
  String _charAt(int at) {
    final c = source.codeUnitAt(at);
    if (c >= 0xd800 && c <= 0xdbff && at + 1 < source.length) {
      return source.substring(at, at + 2);
    }
    return String.fromCharCode(c);
  }

  /// Number of leading whitespace *characters* of [line] (Unicode
  /// White_Space, so tabs and em spaces each count once).
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

  // -- scanners --------------------------------------------------------------

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
    // Drop a trailing carriage return from CRLF files.
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
    _advance(); // opening quote
    final innerStart = _pos;
    while (true) {
      if (_pos >= source.length) _fail('unterminated string', start);
      final c = source.codeUnitAt(_pos);
      if (c == 0x5c /* \ */ ) {
        if (_pos + 1 >= source.length) _fail('unterminated string', start);
        _advance(2);
      } else if (c == 0x22) {
        break;
      } else if (c == 0x0a) {
        _fail('newline in string literal', start);
      } else if ((c == 0x24 /* $ */ || c == 0x25 /* % */ ) &&
          _peekChar(1) == c &&
          _peekChar(2) == 0x7b) {
        _advance(3); // `$${` / `%%{` escape
      } else if ((c == 0x24 || c == 0x25) && _peekChar(1) == 0x7b) {
        _advance(2);
        _skipInterpolation(start);
      } else {
        _advance();
      }
    }
    final inner = source.substring(innerStart, _pos);
    _advance(); // closing quote
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

  /// Skips to the `}` closing an interpolation / directive opened just
  /// before [_pos], tracking nested braces and nested quoted strings.
  void _skipInterpolation(SourcePos start) {
    var depth = 1;
    while (true) {
      if (_pos >= source.length) _fail('unterminated interpolation', start);
      final c = source.codeUnitAt(_pos);
      if (c == 0x22) {
        _skipNestedString(start);
      } else if (c == 0x7b) {
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
    _advance(); // opening quote
    while (true) {
      if (_pos >= source.length) _fail('unterminated string', start);
      final c = source.codeUnitAt(_pos);
      if (c == 0x5c) {
        _advance(2);
      } else if (c == 0x22) {
        _advance();
        return;
      } else if ((c == 0x24 || c == 0x25) &&
          _peekChar(1) == c &&
          _peekChar(2) == 0x7b) {
        _advance(3);
      } else if ((c == 0x24 || c == 0x25) && _peekChar(1) == 0x7b) {
        _advance(2);
        _skipInterpolation(start);
      } else {
        _advance();
      }
    }
  }

  void _heredoc() {
    final start = _here();
    _advance(2); // <<
    var flush = false;
    if (_pos < source.length && source.codeUnitAt(_pos) == 0x2d) {
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
    _advance(); // the newline that starts the body
    final bodyStartPos = _here();
    final bodyStart = _pos;
    // Scan line by line for the closing marker.
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
        // Position after the marker (before its newline).
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
      // Consume the line and its newline.
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
      type = TokenType.op; // == != <= >=
      len = 2;
    } else if ((c == 0x26 && n == 0x26) || (c == 0x7c && n == 0x7c)) {
      type = TokenType.op; // && ||
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

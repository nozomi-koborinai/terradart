import 'ast.dart';
import 'diagnostics.dart';
import 'lexer.dart';
import 'source.dart';

/// Parses HCL native syntax into an [HclFile].
///
/// Throws [HclParseException] on the first syntax error. Structure is
/// parsed fully (blocks, one-line blocks, attributes, comments); expression
/// parsing is shallow — see [Expr].
HclFile parseHcl(String source, {String? fileName}) {
  final tokens = Lexer(source, fileName: fileName).tokenize();
  return _Parser(source, tokens, fileName: fileName).parseFile();
}

/// Parses a standalone expression (`var.x`, `"${a}-b"`, `[1, 2]`, ...).
Expr parseHclExpression(String source, {String? fileName}) {
  final tokens = Lexer(source, fileName: fileName).tokenize();
  return _Parser(
    source,
    tokens,
    fileName: fileName,
  ).parseStandaloneExpression();
}

/// Builds the expression for a string whose escapes are already decoded
/// (a `*.tf.json` string value): `${ }` interpolations and `%{ }`
/// directives are parsed, `$${` / `%%{` are the literal escapes, and
/// backslashes are plain characters. Returns a [LiteralExpr] when the text
/// has no template markers.
Expr templateFromDecodedString(String text, {String? fileName}) {
  final parts = _TemplateParser(
    text,
    fileName: fileName,
    escapes: false,
    baseOffset: 0,
    baseLine: 0,
    baseColumn: 0,
    positions: false,
  ).parse();
  if (parts.isEmpty) return const LiteralExpr('', SourceRange.none);
  if (parts.length == 1 && parts.single is TemplateLiteral) {
    return LiteralExpr(
      (parts.single as TemplateLiteral).text,
      SourceRange.none,
    );
  }
  return TemplateExpr(parts, SourceRange.none);
}

/// Removes the common leading whitespace of a `<<-` heredoc body: the
/// smallest number of leading whitespace *characters* over the non-blank
/// lines is dropped from every line (matching hashicorp/hcl).
String stripFlushIndent(String body) {
  final lines = body.split('\n');
  int? min;
  for (final line in lines) {
    if (line.trim().isEmpty) continue;
    final n = Lexer.leadingWhitespace(line);
    if (min == null || n < min) min = n;
  }
  if (min == null || min == 0) return body;
  final out = <String>[];
  for (final line in lines) {
    final runes = line.runes.toList();
    final drop = runes.length < min ? runes.length : min;
    // Only whitespace is dropped, even on shorter blank lines.
    var k = 0;
    while (k < drop &&
        Lexer.leadingWhitespace(String.fromCharCode(runes[k])) == 1) {
      k++;
    }
    out.add(String.fromCharCodes(runes.sublist(k)));
  }
  return out.join('\n');
}

/// Where an expression appears, which decides what ends it.
enum _Ctx {
  /// An attribute value: ends at the newline (or a comment / `}` / EOF).
  attribute,

  /// A tuple element: newlines are insignificant; `,` or `]` ends it.
  tuple,

  /// An object item value: `,`, a newline, a comment or `}` ends it.
  object,
}

final class _Parser {
  _Parser(this.source, this.tokens, {this.fileName, this.offsetBase = 0});

  final String source;
  final List<Token> tokens;
  final String? fileName;

  /// File offset of `source[0]` — non-zero when [source] is an
  /// interpolation fragment whose token ranges are file-relative.
  final int offsetBase;
  int _i = 0;
  final _comments = <Comment>[];

  Token get _t => tokens[_i];

  Never _fail(String message, SourceRange range) {
    throw HclParseException([
      HclDiagnostic(message, range, fileName: fileName),
    ]);
  }

  Never _failAt(String message, Token t) => _fail(message, t.range);

  Comment _comment(Token t) {
    final c = Comment(t.text, t.range, isBlock: t.text.startsWith('/*'));
    _comments.add(c);
    return c;
  }

  // -- structure ------------------------------------------------------------

  HclFile parseFile() {
    final body = _parseBody(blockStart: null);
    if (_t.type != TokenType.eof) _failAt('unexpected "${_t.text}"', _t);
    return HclFile(
      body,
      source: source,
      fileName: fileName,
      comments: List.unmodifiable(_comments),
    );
  }

  Expr parseStandaloneExpression() {
    _skipNewlinesAndComments();
    final expr = _parseExpr(_Ctx.tuple);
    _skipNewlinesAndComments();
    if (_t.type != TokenType.eof) {
      _failAt('unexpected "${_t.text}" after expression', _t);
    }
    return expr;
  }

  /// Parses entries until the closing brace (when [blockStart] is set) or
  /// end of file.
  Body _parseBody({required Token? blockStart}) {
    final start = _t.range.start;
    final entries = <BodyEntry>[];
    var pending = <Comment>[];
    while (true) {
      final t = _t;
      switch (t.type) {
        case TokenType.newline:
          _i++;
        case TokenType.comment:
          pending.add(_comment(t));
          _i++;
        case TokenType.rbrace:
          if (blockStart == null) _failAt('unexpected "}"', t);
          return Body(
            entries,
            SourceRange(start, t.range.start),
            trailingComments: pending,
          );
        case TokenType.eof:
          if (blockStart != null) {
            _fail(
              'unclosed block "${blockStart.text}" (missing "}")',
              blockStart.range,
            );
          }
          return Body(
            entries,
            SourceRange(start, t.range.start),
            trailingComments: pending,
          );
        case TokenType.ident:
          entries.add(_parseEntry(pending));
          pending = <Comment>[];
        default:
          _failAt(
            'expected an argument or block definition, found "${t.text}"',
            t,
          );
      }
    }
  }

  BodyEntry _parseEntry(List<Comment> leading) {
    final nameTok = _t;
    _i++;
    if (_t.type == TokenType.equal) {
      return _parseAttributeRest(nameTok, leading, inOneLineBlock: false);
    }
    return _parseBlockRest(nameTok, leading);
  }

  Attribute _parseAttributeRest(
    Token nameTok,
    List<Comment> leading, {
    required bool inOneLineBlock,
  }) {
    _i++; // '='
    final value = _parseExpr(_Ctx.attribute);
    Comment? trailing;
    if (!inOneLineBlock) {
      if (_t.type == TokenType.comment) {
        trailing = _comment(_t);
        _i++;
      }
      switch (_t.type) {
        case TokenType.newline:
          _i++;
        case TokenType.eof:
          break;
        case TokenType.comma:
          _failAt('each argument must be on its own line', _t);
        default:
          _failAt('missing newline after argument', _t);
      }
    }
    return Attribute(
      nameTok.text,
      value,
      SourceRange(nameTok.range.start, value.range.end),
      nameRange: nameTok.range,
      leadingComments: leading,
      trailingComment: trailing,
    );
  }

  Block _parseBlockRest(Token typeTok, List<Comment> leading) {
    final labels = <BlockLabel>[];
    while (_t.type == TokenType.ident || _t.type == TokenType.string) {
      final t = _t;
      if (t.type == TokenType.string) {
        final expr = _templateFromString(t);
        final text = expr.constantString;
        if (text == null) {
          _failAt('a block label must be a plain string', t);
        }
        labels.add(BlockLabel(text, t.range, quoted: true));
      } else {
        labels.add(BlockLabel(t.text, t.range, quoted: false));
      }
      _i++;
    }
    if (_t.type != TokenType.lbrace) {
      _failAt(
        labels.isEmpty
            ? 'expected "=" or "{" after "${typeTok.text}"'
            : 'expected "{" to open the "${typeTok.text}" block',
        _t,
      );
    }
    _i++; // '{'
    final Body body;
    final bool oneLine;
    if (_t.type == TokenType.newline) {
      _i++;
      body = _parseBody(blockStart: typeTok);
      oneLine = false;
    } else {
      body = _parseOneLineBody();
      oneLine = true;
    }
    final closeTok = _t; // '}' guaranteed by the body parsers
    _i++;
    Comment? trailing;
    if (_t.type == TokenType.comment) {
      trailing = _comment(_t);
      _i++;
    }
    switch (_t.type) {
      case TokenType.newline:
        _i++;
      case TokenType.eof:
        break;
      default:
        _failAt('missing newline after block definition', _t);
    }
    return Block(
      typeTok.text,
      labels,
      body,
      SourceRange(typeTok.range.start, closeTok.range.end),
      typeRange: typeTok.range,
      oneLine: oneLine,
      leadingComments: leading,
      trailingComment: trailing,
    );
  }

  /// `{ }` or `{ name = expr }` on the opening line.
  Body _parseOneLineBody() {
    final start = _t.range.start;
    final entries = <BodyEntry>[];
    if (_t.type == TokenType.ident) {
      final nameTok = _t;
      _i++;
      if (_t.type != TokenType.equal) {
        _fail(
          'a single-line block definition cannot contain another block '
          'definition',
          nameTok.range,
        );
      }
      entries.add(_parseAttributeRest(nameTok, const [], inOneLineBlock: true));
      if (_t.type == TokenType.comma || _t.type == TokenType.ident) {
        _failAt(
          'only one argument is allowed in a single-line block definition',
          _t,
        );
      }
    }
    if (_t.type == TokenType.newline) {
      _failAt(
        'the closing brace for a single-line block definition must be on '
        'the same line',
        _t,
      );
    }
    if (_t.type != TokenType.rbrace) {
      _failAt('expected "}" to close the single-line block', _t);
    }
    return Body(entries, SourceRange(start, _t.range.start));
  }

  // -- expressions ----------------------------------------------------------

  void _skipNewlinesAndComments() {
    while (_t.type == TokenType.newline || _t.type == TokenType.comment) {
      if (_t.type == TokenType.comment) _comment(_t);
      _i++;
    }
  }

  /// Parses one expression in context [ctx].
  Expr _parseExpr(_Ctx ctx) {
    if (ctx == _Ctx.tuple) _skipNewlinesAndComments();
    final startIndex = _i;
    final simple = _tryParseSimple();
    if (simple != null && _atTerminator(ctx)) return simple;
    if (simple != null &&
        ctx == _Ctx.attribute &&
        (_t.type == TokenType.ident ||
            _t.type == TokenType.string ||
            _t.type == TokenType.number)) {
      _failAt('missing newline after argument', _t);
    }
    _i = startIndex;
    return _parseRaw(ctx);
  }

  /// Whether token type [t] ends an expression in [ctx] (at bracket depth
  /// zero).
  static bool _terminates(TokenType t, _Ctx ctx) => switch (ctx) {
    _Ctx.attribute => switch (t) {
      TokenType.newline ||
      TokenType.comment ||
      TokenType.eof ||
      TokenType.rbrace => true,
      _ => false,
    },
    _Ctx.tuple => switch (t) {
      TokenType.comma ||
      TokenType.rbrack ||
      TokenType.rbrace ||
      TokenType.rparen ||
      TokenType.eof => true,
      _ => false,
    },
    _Ctx.object => switch (t) {
      TokenType.comma ||
      TokenType.newline ||
      TokenType.comment ||
      TokenType.rbrace ||
      TokenType.eof => true,
      _ => false,
    },
  };

  bool _atTerminator(_Ctx ctx) {
    var j = _i;
    if (ctx == _Ctx.tuple) {
      // Peek past insignificant newlines / comments without consuming.
      while (tokens[j].type == TokenType.newline ||
          tokens[j].type == TokenType.comment) {
        j++;
      }
    }
    return _terminates(tokens[j].type, ctx);
  }

  /// Literal, template, traversal, tuple or object — or `null` when the
  /// upcoming tokens are not one of those shapes.
  Expr? _tryParseSimple() {
    final t = _t;
    switch (t.type) {
      case TokenType.number:
        _i++;
        return _number(t.text, t.range);
      case TokenType.op:
        if (t.text == '-' && tokens[_i + 1].type == TokenType.number) {
          final n = tokens[_i + 1];
          _i += 2;
          return _number('-${n.text}', SourceRange(t.range.start, n.range.end));
        }
        return null;
      case TokenType.string:
        _i++;
        return _templateFromString(t);
      case TokenType.heredoc:
        _i++;
        return _templateFromHeredoc(t);
      case TokenType.ident:
        return _tryParseTraversal();
      case TokenType.lbrack:
        return _tryParseTuple();
      case TokenType.lbrace:
        return _tryParseObject();
      default:
        return null;
    }
  }

  Expr? _tryParseTraversal() {
    final root = _t;
    switch (root.text) {
      case 'true':
        _i++;
        return LiteralExpr(true, root.range, source: root.text);
      case 'false':
        _i++;
        return LiteralExpr(false, root.range, source: root.text);
      case 'null':
        _i++;
        return LiteralExpr(null, root.range, source: root.text);
    }
    _i++;
    if (_t.type == TokenType.lparen) return null; // function call
    final steps = <TraversalStep>[];
    var end = root.range.end;
    while (true) {
      if (_t.type == TokenType.dot) {
        final next = tokens[_i + 1];
        if (next.type != TokenType.ident) return null; // splat, legacy index
        steps.add(
          AttrStep(next.text, SourceRange(_t.range.start, next.range.end)),
        );
        end = next.range.end;
        _i += 2;
      } else if (_t.type == TokenType.lbrack) {
        final open = _t;
        final idx = tokens[_i + 1];
        final close = tokens[_i + 2];
        if (close.type != TokenType.rbrack) return null;
        final LiteralExpr index;
        if (idx.type == TokenType.number) {
          index = _number(idx.text, idx.range);
        } else if (idx.type == TokenType.string) {
          final e = _templateFromString(idx);
          if (e is! LiteralExpr) return null;
          index = e;
        } else {
          return null;
        }
        steps.add(
          IndexStep(index, SourceRange(open.range.start, close.range.end)),
        );
        end = close.range.end;
        _i += 3;
      } else {
        break;
      }
    }
    return TraversalExpr(root.text, steps, SourceRange(root.range.start, end));
  }

  Expr? _tryParseTuple() {
    final open = _t;
    _i++;
    _skipNewlinesAndComments();
    if (_t.type == TokenType.ident && _t.text == 'for') return null;
    final elements = <Expr>[];
    while (true) {
      _skipNewlinesAndComments();
      if (_t.type == TokenType.rbrack) break;
      if (_t.type == TokenType.eof) {
        _failAt('unterminated tuple (missing "]")', open);
      }
      elements.add(_parseExpr(_Ctx.tuple));
      _skipNewlinesAndComments();
      if (_t.type == TokenType.comma) {
        _i++;
        continue;
      }
      if (_t.type == TokenType.rbrack) break;
      if (_t.type == TokenType.eof) {
        _failAt('unterminated tuple (missing "]")', open);
      }
      _failAt('expected "," or "]" in tuple, found "${_t.text}"', _t);
    }
    final close = _t;
    _i++;
    return TupleExpr(
      elements,
      SourceRange(open.range.start, close.range.end),
      multiLine: close.range.start.line != open.range.start.line,
    );
  }

  Expr? _tryParseObject() {
    final open = _t;
    _i++;
    _skipNewlinesAndComments();
    if (_t.type == TokenType.ident && _t.text == 'for') return null;
    final items = <ObjectItem>[];
    while (true) {
      _skipNewlinesAndComments();
      if (_t.type == TokenType.rbrace) break;
      if (_t.type == TokenType.eof) {
        _failAt('unterminated object (missing "}")', open);
      }
      final keyTok = _t;
      final Expr key;
      switch (keyTok.type) {
        case TokenType.ident:
          key = LiteralExpr(keyTok.text, keyTok.range, source: keyTok.text);
          _i++;
        case TokenType.string:
          final e = _templateFromString(keyTok);
          key = e is LiteralExpr ? e : RawExpr(keyTok.text, keyTok.range);
          _i++;
        case TokenType.lparen:
          key = _parseRaw(_Ctx.tuple, singleBracketed: true);
        default:
          _failAt('expected an object key, found "${keyTok.text}"', keyTok);
      }
      final colon = _t.type == TokenType.colon;
      if (!colon && _t.type != TokenType.equal) {
        _failAt('expected "=" or ":" after object key, found "${_t.text}"', _t);
      }
      _i++;
      final value = _parseExpr(_Ctx.object);
      items.add(
        ObjectItem(
          key,
          value,
          SourceRange(keyTok.range.start, value.range.end),
          colon: colon,
        ),
      );
      var separated = false;
      if (_t.type == TokenType.comma) {
        _i++;
        separated = true;
      }
      while (_t.type == TokenType.newline || _t.type == TokenType.comment) {
        if (_t.type == TokenType.comment) _comment(_t);
        _i++;
        separated = true;
      }
      if (_t.type == TokenType.rbrace) break;
      if (!separated) {
        _failAt(
          'expected "," or newline between object items, found "${_t.text}"',
          _t,
        );
      }
    }
    final close = _t;
    _i++;
    return ObjectExpr(
      items,
      SourceRange(open.range.start, close.range.end),
      multiLine: close.range.start.line != open.range.start.line,
    );
  }

  /// Consumes tokens verbatim until the expression ends in [ctx], keeping
  /// brackets balanced. With [singleBracketed] the raw expression is
  /// exactly one bracketed group starting at the current token (an object
  /// key `(expr)`).
  RawExpr _parseRaw(_Ctx ctx, {bool singleBracketed = false}) {
    final first = _t;
    var depth = 0;
    Token? last;
    while (true) {
      final t = _t;
      if (depth == 0 &&
          last != null &&
          !singleBracketed &&
          _terminates(t.type, ctx)) {
        break;
      }
      switch (t.type) {
        case TokenType.eof:
          if (last == null) _failAt('expected an expression', t);
          _failAt('unbalanced brackets in expression', first);
        case TokenType.lbrace || TokenType.lbrack || TokenType.lparen:
          depth++;
        case TokenType.rbrace || TokenType.rbrack || TokenType.rparen:
          if (depth == 0) {
            if (last == null) _failAt('expected an expression', t);
            _failAt('unbalanced "${t.text}" in expression', t);
          }
          depth--;
        case TokenType.newline:
          if (depth == 0 && last == null) {
            if (ctx == _Ctx.tuple) {
              _i++;
              continue;
            }
            _failAt('expected an expression', t);
          }
        case TokenType.comment:
          _comment(t);
        case TokenType.comma:
          if (depth == 0 && ctx == _Ctx.attribute) {
            _failAt('each argument must be on its own line', t);
          }
        case TokenType.equal:
          if (depth == 0 && ctx == _Ctx.attribute) {
            _failAt('unexpected "=" in expression', t);
          }
        default:
          break;
      }
      last = t;
      _i++;
      if (singleBracketed && depth == 0) break;
    }
    final range = SourceRange(first.range.start, last.range.end);
    return RawExpr(
      source.substring(
        first.range.start.offset - offsetBase,
        last.range.end.offset - offsetBase,
      ),
      range,
    );
  }

  LiteralExpr _number(String text, SourceRange range) {
    final value = num.tryParse(text) ?? double.parse(text);
    return LiteralExpr(value, range, source: text);
  }

  // -- templates ------------------------------------------------------------

  Expr _templateFromString(Token t) {
    final inner = t.inner!;
    final start = t.range.start;
    final parts = _TemplateParser(
      inner,
      fileName: fileName,
      escapes: true,
      baseOffset: start.offset + 1,
      baseLine: start.line,
      baseColumn: start.column + 1,
      positions: true,
    ).parse();
    if (parts.isEmpty) return LiteralExpr('', t.range, source: t.text);
    if (parts.length == 1 && parts.single is TemplateLiteral) {
      return LiteralExpr(
        (parts.single as TemplateLiteral).text,
        t.range,
        source: t.text,
      );
    }
    return TemplateExpr(parts, t.range);
  }

  TemplateExpr _templateFromHeredoc(Token t) {
    final raw = t.body!;
    final body = t.flush ? stripFlushIndent(raw) : raw;
    final bodyStart = t.bodyRange!.start;
    final parts = _TemplateParser(
      body,
      fileName: fileName,
      escapes: false,
      baseOffset: bodyStart.offset,
      baseLine: bodyStart.line,
      baseColumn: bodyStart.column,
      // Flush stripping shifts columns; positions stay approximate then.
      positions: !t.flush,
    ).parse();
    return TemplateExpr(
      parts,
      t.range,
      delimiter: t.delimiter,
      flush: t.flush,
      rawBody: raw,
    );
  }
}

/// Splits template text into literal / interpolation / directive parts.
final class _TemplateParser {
  _TemplateParser(
    this.text, {
    required this.fileName,
    required this.escapes,
    required this.baseOffset,
    required this.baseLine,
    required this.baseColumn,
    required this.positions,
  });

  final String text;
  final String? fileName;

  /// Decode backslash escapes (quoted strings) or not (heredocs, JSON).
  final bool escapes;
  final int baseOffset;
  final int baseLine;
  final int baseColumn;

  /// False when the text does not map onto the file (no ranges).
  final bool positions;

  final _parts = <TemplatePart>[];
  final _buf = StringBuffer();
  int _bufStart = 0;
  int _line = 0;
  int _col = 0;

  SourcePos _pos(int index) {
    if (!positions) return SourcePos.none;
    // Recompute line / column for [index] from the start of the text.
    var line = baseLine;
    var col = baseColumn;
    for (var k = 0; k < index; k++) {
      if (text.codeUnitAt(k) == 0x0a) {
        line++;
        col = 1;
      } else {
        col++;
      }
    }
    _line = line;
    _col = col;
    return SourcePos(baseOffset + index, _line, _col);
  }

  SourceRange _range(int from, int to) =>
      positions ? SourceRange(_pos(from), _pos(to)) : SourceRange.none;

  Never _fail(String message, int at) {
    throw HclParseException([
      HclDiagnostic(message, _range(at, at + 1), fileName: fileName),
    ]);
  }

  List<TemplatePart> parse() {
    var i = 0;
    while (i < text.length) {
      final c = text.codeUnitAt(i);
      if (escapes && c == 0x5c /* \ */ ) {
        i = _escape(i);
        continue;
      }
      if (c == 0x24 /* $ */ || c == 0x25 /* % */ ) {
        if (i + 2 < text.length &&
            text.codeUnitAt(i + 1) == c &&
            text.codeUnitAt(i + 2) == 0x7b) {
          _buf.writeCharCode(c);
          _buf.write('{');
          i += 3;
          continue;
        }
        if (i + 1 < text.length && text.codeUnitAt(i + 1) == 0x7b) {
          _flushLiteral(i);
          final end = _findClose(i + 2);
          var inner = text.substring(i + 2, end);
          var stripLeft = false;
          var stripRight = false;
          if (inner.startsWith('~')) {
            stripLeft = true;
            inner = inner.substring(1);
          }
          if (inner.endsWith('~')) {
            stripRight = true;
            inner = inner.substring(0, inner.length - 1);
          }
          final range = _range(i, end + 1);
          if (c == 0x24) {
            _parts.add(
              TemplateInterpolation(
                _innerExpression(inner, i + 2 + (stripLeft ? 1 : 0)),
                range,
                stripLeft: stripLeft,
                stripRight: stripRight,
              ),
            );
          } else {
            _parts.add(
              TemplateDirective(
                inner.trim(),
                range,
                stripLeft: stripLeft,
                stripRight: stripRight,
              ),
            );
          }
          i = end + 1;
          _bufStart = i;
          continue;
        }
      }
      _buf.writeCharCode(c);
      i++;
    }
    _flushLiteral(text.length);
    return _parts;
  }

  void _flushLiteral(int end) {
    if (_buf.isEmpty) return;
    _parts.add(TemplateLiteral(_buf.toString(), _range(_bufStart, end)));
    _buf.clear();
  }

  Expr _innerExpression(String inner, int innerIndex) {
    final lexer = positions
        ? Lexer(
            inner,
            fileName: fileName,
            baseOffset: baseOffset + innerIndex,
            baseLine: _pos(innerIndex).line,
            baseColumn: _pos(innerIndex).column,
          )
        : Lexer(inner, fileName: fileName);
    final tokens = lexer.tokenize();
    final expr = _Parser(
      inner,
      tokens,
      fileName: fileName,
      offsetBase: positions ? baseOffset + innerIndex : 0,
    ).parseStandaloneExpression();
    return positions ? expr : _withoutPositions(expr);
  }

  /// Interpolations of JSON strings carry no file positions.
  static Expr _withoutPositions(Expr e) => switch (e) {
    LiteralExpr(:final value, :final source) => LiteralExpr(
      value,
      SourceRange.none,
      source: source,
    ),
    TraversalExpr(:final root, :final steps) => TraversalExpr(root, [
      for (final s in steps)
        switch (s) {
          AttrStep(:final name) => AttrStep(name, SourceRange.none),
          IndexStep(:final index) => IndexStep(
            LiteralExpr(index.value, SourceRange.none, source: index.source),
            SourceRange.none,
          ),
        },
    ], SourceRange.none),
    TupleExpr(:final elements, :final multiLine) => TupleExpr(
      [for (final x in elements) _withoutPositions(x)],
      SourceRange.none,
      multiLine: multiLine,
    ),
    ObjectExpr(:final items, :final multiLine) => ObjectExpr(
      [
        for (final it in items)
          ObjectItem(
            _withoutPositions(it.key),
            _withoutPositions(it.value),
            SourceRange.none,
            colon: it.colon,
          ),
      ],
      SourceRange.none,
      multiLine: multiLine,
    ),
    TemplateExpr(
      :final parts,
      :final delimiter,
      :final flush,
      :final rawBody,
    ) =>
      TemplateExpr(
        [
          for (final p in parts)
            switch (p) {
              TemplateLiteral(:final text) => TemplateLiteral(
                text,
                SourceRange.none,
              ),
              TemplateInterpolation(
                :final expr,
                :final stripLeft,
                :final stripRight,
              ) =>
                TemplateInterpolation(
                  _withoutPositions(expr),
                  SourceRange.none,
                  stripLeft: stripLeft,
                  stripRight: stripRight,
                ),
              TemplateDirective(
                :final content,
                :final stripLeft,
                :final stripRight,
              ) =>
                TemplateDirective(
                  content,
                  SourceRange.none,
                  stripLeft: stripLeft,
                  stripRight: stripRight,
                ),
            },
        ],
        SourceRange.none,
        delimiter: delimiter,
        flush: flush,
        rawBody: rawBody,
      ),
    RawExpr(:final source) => RawExpr(source, SourceRange.none),
  };

  /// Index of the `}` closing the interpolation whose content starts at
  /// [from], honouring nested braces and quoted strings.
  int _findClose(int from) {
    var depth = 1;
    var i = from;
    while (i < text.length) {
      final c = text.codeUnitAt(i);
      if (c == 0x22) {
        i = _skipQuoted(i + 1);
        continue;
      }
      if (c == 0x7b) depth++;
      if (c == 0x7d) {
        depth--;
        if (depth == 0) return i;
      }
      i++;
    }
    _fail('unterminated template interpolation', from - 2);
  }

  int _skipQuoted(int i) {
    while (i < text.length) {
      final c = text.codeUnitAt(i);
      if (c == 0x5c) {
        i += 2;
      } else if (c == 0x22) {
        return i + 1;
      } else if ((c == 0x24 || c == 0x25) &&
          i + 1 < text.length &&
          text.codeUnitAt(i + 1) == 0x7b) {
        i = _findClose(i + 2) + 1;
      } else {
        i++;
      }
    }
    _fail('unterminated string in template interpolation', i);
  }

  int _escape(int i) {
    if (i + 1 >= text.length) _fail('dangling backslash in string', i);
    final e = text.codeUnitAt(i + 1);
    switch (e) {
      case 0x6e:
        _buf.write('\n');
      case 0x72:
        _buf.write('\r');
      case 0x74:
        _buf.write('\t');
      case 0x22:
        _buf.write('"');
      case 0x5c:
        _buf.write(r'\');
      case 0x75 || 0x55:
        final len = e == 0x75 ? 4 : 8;
        if (i + 2 + len > text.length) _fail('invalid unicode escape', i);
        final hex = text.substring(i + 2, i + 2 + len);
        final code = int.tryParse(hex, radix: 16);
        if (code == null) {
          _fail('invalid unicode escape "\\${String.fromCharCode(e)}$hex"', i);
        }
        _buf.writeCharCode(code);
        return i + 2 + len;
      default:
        _fail('invalid escape sequence "\\${String.fromCharCode(e)}"', i);
    }
    return i + 2;
  }
}

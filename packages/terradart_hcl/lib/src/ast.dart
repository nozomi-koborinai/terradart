/// Syntax tree for HCL native syntax (and the same shape decoded from
/// Terraform JSON).
///
/// The tree is *structural*: bodies keep their entries in source order,
/// repeated blocks stay repeated, and every node carries a [SourceRange] so
/// callers can copy any construct back out of the original text. Expressions
/// are parsed *shallowly* — see [Expr].
library;

import 'source.dart';

/// Any syntax node.
sealed class HclNode {
  const HclNode();

  SourceRange get range;
}

/// A `#`, `//` or `/* */` comment, kept with its delimiters.
final class Comment {
  const Comment(this.text, this.range, {required this.isBlock});

  /// The comment text including its delimiters (`# foo`, `/* bar */`).
  final String text;
  final SourceRange range;

  /// True for `/* */` comments.
  final bool isBlock;

  @override
  String toString() => text;
}

// ---------------------------------------------------------------------------
// Expressions
// ---------------------------------------------------------------------------

/// An attribute value.
///
/// Only the shapes a migration needs to *classify* are parsed exactly:
/// [LiteralExpr], [TemplateExpr], [TraversalExpr], [TupleExpr] and
/// [ObjectExpr]. Anything else — function calls, operators, conditionals,
/// `for` expressions, splats, parenthesised expressions — is a [RawExpr]
/// holding the verbatim source with balanced brackets. Nothing is evaluated.
sealed class Expr extends HclNode {
  const Expr();

  /// The string this expression denotes when it is a plain string literal
  /// (a quoted string or heredoc without interpolations), else `null`.
  String? get constantString => null;
}

/// A primitive literal: a string (from a quoted string without
/// interpolation), a number, a boolean, or `null`.
final class LiteralExpr extends Expr {
  const LiteralExpr(this.value, this.range, {this.source});

  /// `String`, `num`, `bool` or `null`.
  final Object? value;

  @override
  final SourceRange range;

  /// The literal's original text (`3.14159265358979323846264338327950288`)
  /// so numbers that do not fit a Dart `double` still round-trip. `null`
  /// for literals that did not come from source text.
  final String? source;

  bool get isString => value is String;
  bool get isNumber => value is num;
  bool get isBool => value is bool;
  bool get isNull => value == null;

  @override
  String? get constantString => value is String ? value! as String : null;

  @override
  String toString() => 'Literal($value)';
}

/// One piece of a [TemplateExpr].
sealed class TemplatePart extends HclNode {
  const TemplatePart();
}

/// Literal text between interpolations, with escapes already decoded.
final class TemplateLiteral extends TemplatePart {
  const TemplateLiteral(this.text, this.range);

  final String text;

  @override
  final SourceRange range;

  @override
  String toString() => 'Text(${text.replaceAll('\n', r'\n')})';
}

/// A `${ expr }` interpolation. [stripLeft] / [stripRight] record the `~`
/// whitespace-strip markers (`${~ expr ~}`).
final class TemplateInterpolation extends TemplatePart {
  const TemplateInterpolation(
    this.expr,
    this.range, {
    this.stripLeft = false,
    this.stripRight = false,
  });

  final Expr expr;

  @override
  final SourceRange range;
  final bool stripLeft;
  final bool stripRight;

  @override
  String toString() => 'Interp($expr)';
}

/// A `%{ ... }` template directive (`if`, `else`, `endif`, `for`, `endfor`),
/// kept as its verbatim [content] — a migrator treats a template with
/// directives as opaque.
final class TemplateDirective extends TemplatePart {
  const TemplateDirective(
    this.content,
    this.range, {
    this.stripLeft = false,
    this.stripRight = false,
  });

  /// The text between `%{` and `}`, trimmed (`if var.x`, `endfor`).
  final String content;

  @override
  final SourceRange range;
  final bool stripLeft;
  final bool stripRight;

  @override
  String toString() => 'Directive($content)';
}

/// A quoted string with interpolations or directives, or any heredoc.
final class TemplateExpr extends Expr {
  const TemplateExpr(
    this.parts,
    this.range, {
    this.delimiter,
    this.flush = false,
    this.rawBody,
  });

  final List<TemplatePart> parts;

  @override
  final SourceRange range;

  /// The heredoc marker (`EOT`), or `null` for a quoted string.
  final String? delimiter;

  /// True for a `<<-` heredoc (common leading whitespace removed).
  final bool flush;

  /// The heredoc body exactly as written (before flush stripping), so the
  /// writer can reproduce it; `null` for quoted strings.
  final String? rawBody;

  bool get isHeredoc => delimiter != null;

  /// True when the template has no interpolations or directives.
  bool get isConstant => parts.every((p) => p is TemplateLiteral);

  @override
  String? get constantString =>
      isConstant ? parts.map((p) => (p as TemplateLiteral).text).join() : null;

  @override
  String toString() => 'Template(${parts.join(', ')})';
}

/// One step of a [TraversalExpr].
sealed class TraversalStep extends HclNode {
  const TraversalStep();
}

/// `.name`
final class AttrStep extends TraversalStep {
  const AttrStep(this.name, this.range);

  final String name;

  @override
  final SourceRange range;

  @override
  String toString() => '.$name';
}

/// `[0]` or `["key"]` with a literal index.
final class IndexStep extends TraversalStep {
  const IndexStep(this.index, this.range);

  final LiteralExpr index;

  @override
  final SourceRange range;

  @override
  String toString() => '[${index.value}]';
}

/// A reference: `var.x`, `local.y`, `google_pubsub_topic.t.name`,
/// `data.google_project.p.number`, `module.m.out`, `each.key`,
/// `count.index`, `path.module`, `terraform.workspace`, `self.id`.
///
/// Only `.attr` and literal `[index]` steps are represented; a splat
/// (`.*`, `[*]`) or a computed index turns the whole expression into a
/// [RawExpr].
final class TraversalExpr extends Expr {
  const TraversalExpr(this.root, this.steps, this.range);

  final String root;
  final List<TraversalStep> steps;

  @override
  final SourceRange range;

  /// `root.a.b` rendered without index steps — handy for classification.
  String get dottedPath => [
    root,
    for (final s in steps)
      if (s is AttrStep) s.name,
  ].join('.');

  @override
  String toString() => 'Traversal($root${steps.join()})';
}

/// `[a, b, c]`
final class TupleExpr extends Expr {
  const TupleExpr(this.elements, this.range, {this.multiLine = false});

  final List<Expr> elements;

  @override
  final SourceRange range;

  /// True when the source spread the elements over several lines.
  final bool multiLine;

  @override
  String toString() => 'Tuple(${elements.join(', ')})';
}

/// One `key = value` (or `key: value`) item of an [ObjectExpr].
final class ObjectItem extends HclNode {
  const ObjectItem(this.key, this.value, this.range, {this.colon = false});

  /// A [LiteralExpr] string for identifier and quoted keys, a [RawExpr]
  /// for a parenthesised `(expr)` key.
  final Expr key;
  final Expr value;

  @override
  final SourceRange range;

  /// True when written `key: value`.
  final bool colon;

  /// The key text when it is a plain string.
  String? get keyName => key.constantString;

  @override
  String toString() => '$key = $value';
}

/// `{ k = v, ... }`
final class ObjectExpr extends Expr {
  const ObjectExpr(this.items, this.range, {this.multiLine = false});

  final List<ObjectItem> items;

  @override
  final SourceRange range;

  /// True when the source spread the items over several lines.
  final bool multiLine;

  /// The first item whose key is [name], if any.
  ObjectItem? item(String name) {
    for (final i in items) {
      if (i.keyName == name) return i;
    }
    return null;
  }

  @override
  String toString() => 'Object(${items.join(', ')})';
}

/// Any expression the shallow parser does not model: kept verbatim.
final class RawExpr extends Expr {
  const RawExpr(this.source, this.range);

  /// The exact source text, with balanced brackets.
  final String source;

  @override
  final SourceRange range;

  @override
  String toString() => 'Raw($source)';
}

// ---------------------------------------------------------------------------
// Structure
// ---------------------------------------------------------------------------

/// An entry of a [Body]: an [Attribute] or a [Block].
sealed class BodyEntry extends HclNode {
  const BodyEntry();

  /// Comments on the lines directly before this entry.
  List<Comment> get leadingComments;
}

/// `name = value`
final class Attribute extends BodyEntry {
  const Attribute(
    this.name,
    this.value,
    this.range, {
    required this.nameRange,
    this.leadingComments = const [],
    this.trailingComment,
  });

  final String name;
  final Expr value;

  @override
  final SourceRange range;

  /// The range of [name] alone.
  final SourceRange nameRange;

  @override
  final List<Comment> leadingComments;

  /// A comment on the same line, after the value.
  final Comment? trailingComment;

  @override
  String toString() => '$name = $value';
}

/// One label of a [Block]: `"name"` (quoted) or `name` (identifier).
final class BlockLabel {
  const BlockLabel(this.text, this.range, {required this.quoted});

  final String text;
  final SourceRange range;
  final bool quoted;

  @override
  String toString() => quoted ? '"$text"' : text;
}

/// `type "label" ... { body }`
final class Block extends BodyEntry {
  const Block(
    this.type,
    this.labels,
    this.body,
    this.range, {
    required this.typeRange,
    this.oneLine = false,
    this.leadingComments = const [],
    this.trailingComment,
  });

  final String type;
  final List<BlockLabel> labels;
  final Body body;

  @override
  final SourceRange range;

  /// The range of [type] alone.
  final SourceRange typeRange;

  /// True for `a { b = "c" }` written on a single line.
  final bool oneLine;

  @override
  final List<Comment> leadingComments;

  /// A comment on the same line as the closing brace.
  final Comment? trailingComment;

  /// Label texts, quoted or not.
  List<String> get labelTexts => [for (final l in labels) l.text];

  @override
  String toString() => 'Block($type ${labels.join(' ')})';
}

/// The ordered contents of a file or block.
final class Body extends HclNode {
  const Body(this.entries, this.range, {this.trailingComments = const []});

  final List<BodyEntry> entries;

  @override
  final SourceRange range;

  /// Comments after the last entry (before the closing brace / end of file).
  final List<Comment> trailingComments;

  Iterable<Attribute> get attributes => entries.whereType<Attribute>();
  Iterable<Block> get blocks => entries.whereType<Block>();

  /// The first attribute named [name], if any.
  Attribute? attribute(String name) {
    for (final e in entries) {
      if (e is Attribute && e.name == name) return e;
    }
    return null;
  }

  /// All blocks of [type], in order.
  List<Block> blocksOf(String type) => [
    for (final e in entries)
      if (e is Block && e.type == type) e,
  ];

  /// The first block of [type], if any.
  Block? block(String type) {
    for (final e in entries) {
      if (e is Block && e.type == type) return e;
    }
    return null;
  }

  bool get isEmpty => entries.isEmpty;
}

/// A parsed file (native syntax or JSON syntax).
final class HclFile extends HclNode {
  const HclFile(
    this.body, {
    required this.source,
    this.fileName,
    this.comments = const [],
    this.isJson = false,
  });

  final Body body;

  /// The original text, so [SourceRange.textIn] works for every node.
  final String source;
  final String? fileName;

  /// Every comment in the file, in source order (the same objects the
  /// entries reference as leading / trailing comments).
  final List<Comment> comments;

  /// True when decoded from `*.tf.json` (nodes then have no source ranges).
  final bool isJson;

  @override
  SourceRange get range => body.range;

  /// The source text of [node].
  String textOf(HclNode node) => node.range.textIn(source);
}

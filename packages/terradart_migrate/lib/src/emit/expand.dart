/// Literal `count` / `for_each` unrolling (#663).
///
/// A Stack registers one Terraform resource per `add(...)`, so a block with
/// `count` or `for_each` cannot be translated as written. It can be unrolled:
/// one resource per instance, `google_x.y[0]` becoming `google_x.y_0` and
/// `google_x.y["eu"]` becoming `google_x.y_eu`, with a `moved` entry per
/// instance so the existing state follows the rename and `terraform plan`
/// shows moves, not replacements. Only a *literal* count or for_each can be
/// unrolled — the instance set must be known without evaluating anything.
///
/// Two rewrites make that work:
///
/// - [expandBlock] produces the instance bodies, with `count.index`,
///   `each.key` and `each.value` substituted (in parsed expressions and in
///   the verbatim text of expressions the shallow parser keeps raw) and the
///   meta-argument dropped;
/// - [ReferenceRewriter] points every reference in the module at the new
///   addresses: `google_x.y[0].id` → `google_x.y_0.id`, `google_x.y[*].id`
///   → `[google_x.y_0, google_x.y_1][*].id`, a bare `google_x.y` → the tuple
///   (count) or object (for_each) of its instances — the value Terraform
///   gave the expression before.
library;

import 'package:terradart_hcl/terradart_hcl.dart';

import '../report.dart';
import 'blocker.dart';
import 'tf_expr.dart';

/// A block unrolled into one body per instance.
final class Expansion {
  const Expansion({
    required this.item,
    required this.type,
    required this.name,
    required this.isData,
    required this.bodies,
  });

  /// Addresses and keys, as the report lists them.
  final ExpandedItem item;

  final String type;
  final String name;
  final bool isData;

  /// One substituted body per [ExpandedItem.instances] entry, meta-arguments
  /// removed.
  final List<Body> bodies;

  String get address => item.address;
}

/// Unrolls a resource or data block whose `count` / `for_each` is a literal.
///
/// Returns `null` when the block has neither meta-argument. Throws
/// [MigrateBlocker] when it has one that cannot be unrolled: a value that is
/// not a literal, no instance at all, or an instance name that collides with
/// another block of the same type ([siblingNames]).
Expansion? expandBlock({
  required String type,
  required String name,
  required Body body,
  required bool isData,
  required Set<String> siblingNames,
}) {
  final count = body.attribute('count')?.value;
  final forEach = body.attribute('for_each')?.value;
  if (count == null && forEach == null) return null;
  if (count != null && forEach != null) {
    throw MigrateBlocker('count and for_each are both set');
  }

  final keys = <Object>[];
  final valueOf = <Object, Expr>{};
  if (count != null) {
    final n = _countLiteral(count);
    if (n == null) {
      throw MigrateBlocker(
        'count = ${hclSource(_unwrapInterpolation(count))} is not a literal '
        'number; only a literal '
        'count is unrolled into resources with fixed addresses',
      );
    }
    if (n <= 0) {
      throw MigrateBlocker('count = $n declares no instance; kept as written');
    }
    for (var i = 0; i < n; i++) {
      keys.add(i);
    }
  } else {
    final entries = _forEachLiteral(forEach!);
    if (entries == null) {
      throw MigrateBlocker(
        'for_each = ${hclSource(_unwrapInterpolation(forEach))} is not a '
        'literal map or '
        'toset([...]) of strings; only a literal for_each is unrolled into '
        'resources with fixed addresses',
      );
    }
    if (entries.isEmpty) {
      throw MigrateBlocker('for_each declares no instance; kept as written');
    }
    for (final e in entries) {
      if (valueOf.containsKey(e.key)) {
        throw MigrateBlocker('for_each repeats the key ${_keyText(e.key)}');
      }
      keys.add(e.key);
      valueOf[e.key] = e.value;
    }
  }

  final address = isData ? 'data.$type.$name' : '$type.$name';
  final instances = <ExpandedInstanceItem>[];
  final bodies = <Body>[];
  final used = <String>{};
  for (final key in keys) {
    final instanceName = '${name}_${_suffixFor(key)}';
    if (siblingNames.contains(instanceName) || !used.add(instanceName)) {
      throw MigrateBlocker(
        'instance ${_keyText(key)} would be named "$instanceName", which '
        'collides with another ${isData ? 'data source' : 'resource'} of '
        'type "$type"',
      );
    }
    final substitution = key is int
        ? _Substitution.count(key)
        : _Substitution.forEach(key as String, valueOf[key]!);
    instances.add(
      ExpandedInstanceItem(
        key: key,
        from: '$address[${_keyText(key)}]',
        to: isData ? 'data.$type.$instanceName' : '$type.$instanceName',
      ),
    );
    bodies.add(substitution.body(body, topLevel: true));
  }
  return Expansion(
    item: ExpandedItem(
      address: address,
      isForEach: forEach != null,
      instances: instances,
    ),
    type: type,
    name: name,
    isData: isData,
    bodies: bodies,
  );
}

/// JSON syntax writes expressions as strings — `"for_each": "${toset([...])}"`
/// — which decode to a template holding one interpolation; this is that
/// interpolation's expression. Any other expression is returned unchanged.
Expr _unwrapInterpolation(Expr e) {
  if (e is TemplateExpr && e.parts.length == 1) {
    final part = e.parts.single;
    if (part is TemplateInterpolation) return part.expr;
  }
  return e;
}

/// The instance count a literal `count` declares, or `null`. A whole-number
/// string counts too: Terraform converts `"2"` to a number.
int? _countLiteral(Expr count) {
  final e = _unwrapInterpolation(count);
  final value = e is LiteralExpr ? e.value : e.constantString;
  switch (value) {
    case final int i:
      return i;
    case final double d:
      return d == d.truncateToDouble() ? d.toInt() : null;
    case final String s:
      return int.tryParse(s.trim());
    default:
      return null;
  }
}

final _toset = RegExp(r'^toset\((.*)\)$', dotAll: true);

/// The `(key, value)` pairs a literal `for_each` declares: an object literal
/// with plain keys, or `toset([...])` over string literals (each string is
/// its own value, as `each.value` is for a set). `null` for anything else.
List<({String key, Expr value})>? _forEachLiteral(Expr forEach) {
  final e = _unwrapInterpolation(forEach);
  switch (e) {
    case ObjectExpr(:final items):
      final out = <({String key, Expr value})>[];
      for (final item in items) {
        final key = item.keyName;
        if (key == null) return null;
        out.add((key: key, value: item.value));
      }
      return out;
    case RawExpr(:final source):
      final m = _toset.firstMatch(source.trim());
      if (m == null) return null;
      final Expr inner;
      try {
        inner = parseHclExpression(m.group(1)!);
      } on HclParseException {
        return null;
      }
      if (inner is! TupleExpr) return null;
      final out = <({String key, Expr value})>[];
      for (final element in inner.elements) {
        final key = element.constantString;
        if (key == null) return null;
        out.add((key: key, value: LiteralExpr(key, SourceRange.none)));
      }
      return out;
    default:
      return null;
  }
}

/// `0` or `"eu"` — the key as Terraform writes it inside `[...]`.
String _keyText(Object key) => key is String ? _quote(key) : key.toString();

String _quote(String s) =>
    '"${s.replaceAll(r'\', r'\\').replaceAll('"', r'\"')}"';

/// The name suffix for an instance key: the index, or the key with every
/// character Terraform does not allow in a name replaced by `_`.
String _suffixFor(Object key) {
  if (key is! String) return key.toString();
  final cleaned = key.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '_');
  return cleaned.isEmpty ? '_' : cleaned;
}

// ---------------------------------------------------------------------------
// count.index / each.key / each.value substitution
// ---------------------------------------------------------------------------

/// Substitutes the per-instance symbols of one instance into a body.
final class _Substitution {
  _Substitution.count(int index) : _index = index, _key = null, _value = null;

  _Substitution.forEach(String key, Expr value)
    : _index = null,
      _key = key,
      _value = value;

  final int? _index;
  final String? _key;
  final Expr? _value;

  static final _countIndex = RegExp(r'(?<![\w.])count\.index(?![\w])');
  static final _eachKey = RegExp(r'(?<![\w.])each\.key(?![\w])');
  static final _eachValue = RegExp(r'(?<![\w.])each\.value(?![\w])');

  /// `each.value.attr`, `each.value["key"]`, `each.value[0]` — one step into
  /// the value, substituted directly when the value is a literal object or
  /// tuple holding that item.
  static final _eachValueStep = RegExp(
    r'(?<![\w.])each\.value(?:\.([A-Za-z_][\w-]*)|\["((?:[^"\\]|\\.)*)"\]|\[(\d+)\])',
  );

  /// [body] with every expression substituted; [topLevel] drops the
  /// `count` / `for_each` attribute itself (a nested block may legitimately
  /// hold an argument of that name).
  Body body(Body body, {required bool topLevel}) => Body(
    [
      for (final entry in body.entries)
        if (!(topLevel &&
            entry is Attribute &&
            (entry.name == 'count' || entry.name == 'for_each')))
          _entry(entry),
    ],
    body.range,
    trailingComments: body.trailingComments,
  );

  BodyEntry _entry(BodyEntry entry) => switch (entry) {
    Attribute() => Attribute(
      entry.name,
      expr(entry.value),
      entry.range,
      nameRange: entry.nameRange,
      leadingComments: entry.leadingComments,
      trailingComment: entry.trailingComment,
    ),
    Block() => Block(
      entry.type,
      entry.labels,
      body(entry.body, topLevel: false),
      entry.range,
      typeRange: entry.typeRange,
      oneLine: entry.oneLine,
      leadingComments: entry.leadingComments,
      trailingComment: entry.trailingComment,
    ),
  };

  Expr expr(Expr e) => switch (e) {
    LiteralExpr() => e,
    TemplateExpr() => _template(e),
    TraversalExpr() => _traversal(e),
    TupleExpr(:final elements, :final range, :final multiLine) => TupleExpr(
      [for (final x in elements) expr(x)],
      range,
      multiLine: multiLine,
    ),
    ObjectExpr(:final items, :final range, :final multiLine) => ObjectExpr(
      [
        for (final i in items)
          ObjectItem(expr(i.key), expr(i.value), i.range, colon: i.colon),
      ],
      range,
      multiLine: multiLine,
    ),
    RawExpr(:final source, :final range) => reparse(_text(source), range, e),
  };

  Expr _template(TemplateExpr t) {
    var changed = false;
    final parts = <TemplatePart>[];
    for (final part in t.parts) {
      switch (part) {
        case TemplateLiteral():
          parts.add(part);
        case TemplateInterpolation(:final expr, :final range):
          final rewritten = this.expr(expr);
          if (identical(rewritten, expr)) {
            parts.add(part);
            continue;
          }
          changed = true;
          final folded = _foldedText(rewritten);
          parts.add(
            folded != null
                ? TemplateLiteral(folded, range)
                : TemplateInterpolation(
                    rewritten,
                    range,
                    stripLeft: part.stripLeft,
                    stripRight: part.stripRight,
                  ),
          );
        case TemplateDirective(:final content, :final range):
          final text = _text(content);
          if (text == content) {
            parts.add(part);
            continue;
          }
          changed = true;
          parts.add(
            TemplateDirective(
              text,
              range,
              stripLeft: part.stripLeft,
              stripRight: part.stripRight,
            ),
          );
      }
    }
    if (!changed) return t;
    // The parts changed, so the heredoc body must be re-rendered from them.
    return TemplateExpr(parts, t.range, delimiter: t.delimiter, flush: t.flush);
  }

  /// The text an interpolation of a substituted literal folds into, or
  /// `null` when the substituted expression is not a primitive literal.
  static String? _foldedText(Expr e) {
    if (e is! LiteralExpr) return null;
    return switch (e.value) {
      final String s => s,
      final int i => i.toString(),
      final double d =>
        d == d.truncateToDouble() ? d.toInt().toString() : d.toString(),
      final bool b => b.toString(),
      _ => null,
    };
  }

  Expr _traversal(TraversalExpr t) {
    final steps = t.steps;
    final first = steps.isNotEmpty && steps.first is AttrStep
        ? (steps.first as AttrStep).name
        : null;
    if (t.root == 'count' && first == 'index' && _index != null) {
      return _applySteps(LiteralExpr(_index, t.range), steps.sublist(1), t);
    }
    if (t.root == 'each' && _key != null) {
      if (first == 'key') {
        return _applySteps(LiteralExpr(_key, t.range), steps.sublist(1), t);
      }
      if (first == 'value') {
        return _applySteps(_value!, steps.sublist(1), t);
      }
    }
    return t;
  }

  /// [base] with the remaining traversal [rest] applied: a literal object or
  /// tuple is indexed directly, anything else becomes the parenthesised
  /// source text with the steps appended.
  Expr _applySteps(Expr base, List<TraversalStep> rest, TraversalExpr origin) {
    if (rest.isEmpty) return base;
    final step = rest.first;
    switch (base) {
      case ObjectExpr():
        final name = switch (step) {
          AttrStep(:final name) => name,
          IndexStep(:final index) => index.constantString,
        };
        final item = name == null ? null : base.item(name);
        if (item != null) {
          return _applySteps(item.value, rest.sublist(1), origin);
        }
      case TupleExpr(:final elements):
        if (step is IndexStep && step.index.value is num) {
          final i = (step.index.value! as num).toInt();
          if (i >= 0 && i < elements.length) {
            return _applySteps(elements[i], rest.sublist(1), origin);
          }
        }
      default:
        break;
    }
    final text = '(${hclSource(base)})${_stepsText(rest)}';
    return reparse(text, origin.range, origin);
  }

  /// The raw source text with the instance symbols substituted.
  String _text(String source) {
    var out = source;
    if (_index != null) {
      out = out.replaceAll(_countIndex, _index.toString());
    }
    if (_key != null) {
      out = out.replaceAll(_eachKey, _quote(_key));
      final value = _compact(_value!);
      out = out.replaceAllMapped(_eachValueStep, (m) {
        final attr = m[1] ?? m[2]?.replaceAll(r'\"', '"');
        Expr? item;
        if (attr != null && value is ObjectExpr) item = value.item(attr)?.value;
        if (m[3] != null && value is TupleExpr) {
          final i = int.parse(m[3]!);
          if (i < value.elements.length) item = value.elements[i];
        }
        if (item == null) return m[0]!;
        return item is LiteralExpr ? hclSource(item) : '(${hclSource(item)})';
      });
      final valueText = value is LiteralExpr
          ? hclSource(value)
          : '(${hclSource(value)})';
      out = out.replaceAll(_eachValue, valueText);
    }
    return out;
  }

  /// [e] with every tuple and object rendered on one line, so a substituted
  /// value reads as one expression inside the text it lands in.
  static Expr _compact(Expr e) => switch (e) {
    TupleExpr(:final elements, :final range) => TupleExpr([
      for (final x in elements) _compact(x),
    ], range),
    ObjectExpr(:final items, :final range) => ObjectExpr([
      for (final i in items)
        ObjectItem(i.key, _compact(i.value), i.range, colon: i.colon),
    ], range),
    _ => e,
  };
}

/// `.name` / `[0]` / `["key"]` steps as source text.
String _stepsText(List<TraversalStep> steps) => [
  for (final s in steps)
    switch (s) {
      AttrStep(:final name) => '.$name',
      IndexStep(:final index) => '[${hclSource(index)}]',
    },
].join();

/// [source] parsed again after a textual rewrite — so a raw expression that
/// became a plain reference (`google_x.y[0].id` after `count.index` → `0`)
/// is classified as one — or a [RawExpr] of it. [unchanged] is returned when
/// the text did not change.
Expr reparse(String source, SourceRange range, Expr unchanged) {
  if (unchanged is RawExpr && unchanged.source == source) return unchanged;
  try {
    final parsed = parseHclExpression(source);
    if (parsed is RawExpr) return RawExpr(source, range);
    return parsed;
  } on HclParseException {
    return RawExpr(source, range);
  }
}

// ---------------------------------------------------------------------------
// References to unrolled instances
// ---------------------------------------------------------------------------

/// Rewrites references to unrolled blocks — in parsed expressions and in the
/// verbatim text of raw ones or of blocks that stay in Terraform.
final class ReferenceRewriter {
  ReferenceRewriter(Iterable<ExpandedItem> expansions)
    : _expansions = {for (final e in expansions) e.address: e};

  final Map<String, ExpandedItem> _expansions;

  static const _reservedRoots = {
    'var',
    'local',
    'module',
    'each',
    'count',
    'path',
    'terraform',
    'self',
  };

  bool get isEmpty => _expansions.isEmpty;

  /// [body] with every reference rewritten. At the top level `depends_on`
  /// and `lifecycle.replace_triggered_by` are address lists, where a bare
  /// reference to an unrolled block spreads into its instances.
  Body body(Body body, {required bool topLevel}) => Body(
    [for (final entry in body.entries) _entry(entry, topLevel: topLevel)],
    body.range,
    trailingComments: body.trailingComments,
  );

  BodyEntry _entry(BodyEntry entry, {required bool topLevel}) {
    switch (entry) {
      case Attribute(:final name, :final value):
        final Expr rewritten;
        if (topLevel && name == 'depends_on') {
          rewritten = _addressList(value);
        } else if (topLevel && name == 'lifecycle' && value is ObjectExpr) {
          rewritten = _lifecycleObject(value);
        } else {
          rewritten = expr(value);
        }
        return Attribute(
          name,
          rewritten,
          entry.range,
          nameRange: entry.nameRange,
          leadingComments: entry.leadingComments,
          trailingComment: entry.trailingComment,
        );
      case Block(:final type):
        final inner = topLevel && type == 'lifecycle'
            ? _lifecycleBody(entry.body)
            : body(entry.body, topLevel: false);
        return Block(
          type,
          entry.labels,
          inner,
          entry.range,
          typeRange: entry.typeRange,
          oneLine: entry.oneLine,
          leadingComments: entry.leadingComments,
          trailingComment: entry.trailingComment,
        );
    }
  }

  Body _lifecycleBody(Body body) => Body(
    [
      for (final entry in body.entries)
        if (entry is Attribute && entry.name == 'replace_triggered_by')
          Attribute(
            entry.name,
            _addressList(entry.value),
            entry.range,
            nameRange: entry.nameRange,
            leadingComments: entry.leadingComments,
            trailingComment: entry.trailingComment,
          )
        else
          _entry(entry, topLevel: false),
    ],
    body.range,
    trailingComments: body.trailingComments,
  );

  ObjectExpr _lifecycleObject(ObjectExpr object) => ObjectExpr(
    [
      for (final item in object.items)
        ObjectItem(
          item.key,
          item.keyName == 'replace_triggered_by'
              ? _addressList(item.value)
              : expr(item.value),
          item.range,
          colon: item.colon,
        ),
    ],
    object.range,
    multiLine: object.multiLine,
  );

  /// A `depends_on`-style list: references and, in tf.json, address strings.
  /// A bare reference to an unrolled block becomes one entry per instance.
  Expr _addressList(Expr list) {
    if (list is! TupleExpr) return expr(list);
    final out = <Expr>[];
    for (final element in list.elements) {
      final text = element.constantString;
      if (text != null) {
        final t = _traversalOf(text);
        if (t == null) {
          out.add(element);
          continue;
        }
        for (final r in _spread(_traversal(t))) {
          out.add(LiteralExpr(hclSource(r), element.range));
        }
        continue;
      }
      if (element is TraversalExpr) {
        out.addAll(_spread(_traversal(element)));
        continue;
      }
      out.add(expr(element));
    }
    return TupleExpr(out, list.range, multiLine: list.multiLine);
  }

  static Iterable<Expr> _spread(Expr e) => switch (e) {
    TupleExpr(:final elements) => elements,
    ObjectExpr(:final items) => [for (final i in items) i.value],
    _ => [e],
  };

  Expr expr(Expr e) {
    if (isEmpty) return e;
    return switch (e) {
      LiteralExpr() => e,
      TemplateExpr() => _template(e),
      TraversalExpr() => _traversal(e),
      TupleExpr(:final elements, :final range, :final multiLine) => TupleExpr(
        [for (final x in elements) expr(x)],
        range,
        multiLine: multiLine,
      ),
      ObjectExpr(:final items, :final range, :final multiLine) => ObjectExpr(
        [
          for (final i in items)
            ObjectItem(expr(i.key), expr(i.value), i.range, colon: i.colon),
        ],
        range,
        multiLine: multiLine,
      ),
      RawExpr(:final source, :final range) => reparse(
        text(source, strict: true),
        range,
        e,
      ),
    };
  }

  Expr _template(TemplateExpr t) {
    var changed = false;
    final parts = <TemplatePart>[];
    for (final part in t.parts) {
      switch (part) {
        case TemplateLiteral():
          parts.add(part);
        case TemplateInterpolation(:final expr, :final range):
          final rewritten = this.expr(expr);
          if (identical(rewritten, expr)) {
            parts.add(part);
            continue;
          }
          changed = true;
          parts.add(
            TemplateInterpolation(
              rewritten,
              range,
              stripLeft: part.stripLeft,
              stripRight: part.stripRight,
            ),
          );
        case TemplateDirective(:final content, :final range):
          final rewritten = text(content, strict: true);
          if (rewritten == content) {
            parts.add(part);
            continue;
          }
          changed = true;
          parts.add(
            TemplateDirective(
              rewritten,
              range,
              stripLeft: part.stripLeft,
              stripRight: part.stripRight,
            ),
          );
      }
    }
    if (!changed) return t;
    return TemplateExpr(parts, t.range, delimiter: t.delimiter, flush: t.flush);
  }

  /// The block address [t] starts with and the number of steps it spans,
  /// or `null` when [t] is not a resource / data-source reference.
  ({String address, int steps})? _base(TraversalExpr t) {
    final steps = t.steps;
    String? attr(int i) => i < steps.length && steps[i] is AttrStep
        ? (steps[i] as AttrStep).name
        : null;
    if (t.root == 'data') {
      final type = attr(0);
      final name = attr(1);
      if (type == null || name == null) return null;
      return (address: 'data.$type.$name', steps: 2);
    }
    if (_reservedRoots.contains(t.root)) return null;
    final name = attr(0);
    if (name == null) return null;
    return (address: '${t.root}.$name', steps: 1);
  }

  Expr _traversal(TraversalExpr t) {
    final base = _base(t);
    final expansion = base == null ? null : _expansions[base.address];
    if (base == null || expansion == null) return t;
    final rest = t.steps.sublist(base.steps);
    if (rest.isEmpty) return _collection(expansion, t.range);
    final step = rest.first;
    if (step is IndexStep) {
      final instance = _instance(expansion, step.index.value);
      if (instance == null) {
        throw MigrateBlocker(
          '${hclSource(t)} refers to an instance "${base.address}" does not '
          'declare (its ${expansion.isForEach ? 'for_each' : 'count'} was '
          'unrolled into ${expansion.instances.length})',
        );
      }
      return _instanceTraversal(instance, rest.sublist(1), t.range);
    }
    throw MigrateBlocker(
      '${hclSource(t)} refers to "${base.address}" as a single resource, but '
      'it has ${expansion.isForEach ? 'for_each' : 'count'}; index it or use '
      '[*]',
    );
  }

  static ExpandedInstanceItem? _instance(ExpandedItem expansion, Object? key) {
    for (final i in expansion.instances) {
      final k = i.key;
      if (k is int && key is num && key == k) return i;
      if (k is String && key is String && key == k) return i;
    }
    return null;
  }

  /// `google_x.y_0.id` / `data.google_x.y_0.id`.
  static TraversalExpr _instanceTraversal(
    ExpandedInstanceItem instance,
    List<TraversalStep> rest,
    SourceRange range,
  ) {
    final parts = instance.to.split('.');
    final isData = parts.first == 'data';
    return TraversalExpr(isData ? 'data' : parts[0], [
      if (isData) AttrStep(parts[1], SourceRange.none),
      AttrStep(parts[isData ? 2 : 1], SourceRange.none),
      ...rest,
    ], range);
  }

  /// The value a bare reference to the block had: the tuple of its
  /// instances for `count`, the key → instance object for `for_each`.
  static Expr _collection(ExpandedItem expansion, SourceRange range) {
    if (!expansion.isForEach) {
      return TupleExpr([
        for (final i in expansion.instances)
          _instanceTraversal(i, const [], SourceRange.none),
      ], range);
    }
    return ObjectExpr([
      for (final i in expansion.instances)
        ObjectItem(
          LiteralExpr(i.key, SourceRange.none),
          _instanceTraversal(i, const [], SourceRange.none),
          SourceRange.none,
        ),
    ], range);
  }

  /// [source] with every reference to an unrolled block rewritten as text:
  /// `google_x.y[0]` and `google_x.y["eu"]` become the instance address,
  /// `google_x.y[*]` / `google_x.y.*` splat the instance tuple (the values
  /// of the instance object for `for_each`), and a bare `google_x.y` becomes
  /// that tuple or object. With [strict], a reference to an instance the
  /// block does not declare throws [MigrateBlocker]; otherwise it is left as
  /// written.
  String text(String source, {required bool strict}) {
    if (isEmpty) return source;
    var out = source;
    final addresses = _expansions.keys.toList()
      ..sort((a, b) => b.length.compareTo(a.length));
    for (final address in addresses) {
      final expansion = _expansions[address]!;
      final pattern = RegExp(
        '(?<![\\w.-])${RegExp.escape(address)}'
        r'(?:\[(\d+)\]|\["((?:[^"\\]|\\.)*)"\]|(\[\*\])|(\.\*))?'
        r'(?![\w-])',
      );
      out = out.replaceAllMapped(pattern, (m) {
        final index = m[1];
        final quoted = m[2];
        if (index != null || quoted != null) {
          final key = index != null
              ? int.parse(index)
              : quoted!.replaceAll(r'\"', '"').replaceAll(r'\\', r'\');
          final instance = _instance(expansion, key);
          if (instance != null) return instance.to;
          if (!strict) return m[0]!;
          throw MigrateBlocker(
            '${m[0]} refers to an instance "$address" does not declare (its '
            '${expansion.isForEach ? 'for_each' : 'count'} was unrolled into '
            '${expansion.instances.length})',
          );
        }
        final collection = hclSource(_collection(expansion, SourceRange.none));
        final splat = m[3] ?? m[4];
        if (splat == null) return collection;
        return expansion.isForEach
            ? 'values($collection)$splat'
            : '$collection$splat';
      });
    }
    return out;
  }
}

/// [source] parsed as a reference, or `null` when it is not one.
TraversalExpr? _traversalOf(String source) {
  try {
    final e = parseHclExpression(source);
    return e is TraversalExpr ? e : null;
  } on HclParseException {
    return null;
  }
}

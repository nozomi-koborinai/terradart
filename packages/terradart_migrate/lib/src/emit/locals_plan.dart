/// Which `locals` entries `--inline-locals` turns into Dart `final`s, and
/// why the rest stay in Terraform.
///
/// A `locals` block is a Terraform-side convenience: the migrator keeps it
/// in the sidecar by default, and the Stack's arguments go on reading it as
/// `${local.prefix}` templates that Terraform resolves at plan time — which
/// is exactly right for a local whose value is computed. A local whose value
/// is a plain literal, though, has a Dart value, and reading it from a
/// sidecar file is a worse Stack than declaring it. This is the pass that
/// tells the two apart.
library;

import 'package:terradart_core/terradart_core.dart' show hasTemplateSequence;
import 'package:terradart_hcl/terradart_hcl.dart';

import 'dart_literal.dart';
import 'dart_template.dart';
import 'naming.dart';
import 'tf_expr.dart';

/// A local declared as a `final` in the Stack's constructor.
final class InlinedLocal {
  const InlinedLocal({
    required this.name,
    required this.dartName,
    required this.dartType,
    required this.source,
    this.reads = const {},
  });

  /// The Terraform name (`prefix`), as `local.prefix` spells it.
  final String name;

  /// The Dart identifier holding it.
  final String dartName;

  /// `String`, `int`, `double` or `bool` — the type of [source], so an
  /// argument only reads the `final` where its own slot takes that type.
  final String dartType;

  /// The Dart expression: `r'acme'`, `60`, or a string interpolating the
  /// `final`s of the locals this one reads.
  final String source;

  /// The names of the locals [source] interpolates: they are declared
  /// ahead of this one, and reading this one reads them too.
  final Set<String> reads;

  /// `final prefix = r'acme';`
  String get declaration => 'final $dartName = $source;';
}

/// What `--inline-locals` made of one module's `locals`.
final class LocalsPlan {
  LocalsPlan({required this.inlined, required this.refused})
    : byName = {for (final l in inlined) l.name: l};

  /// In declaration order: a local reading another comes after it.
  final List<InlinedLocal> inlined;

  /// Terraform name → why the local has no Dart value, for the report.
  final Map<String, String> refused;

  final Map<String, InlinedLocal> byName;

  /// The plan of a run without `--inline-locals`: every local stays.
  static LocalsPlan get none =>
      LocalsPlan(inlined: const [], refused: const {});

  bool get isEmpty => inlined.isEmpty;
}

/// Decides which of [module]'s locals become Dart `final`s.
///
/// A local is inlined when its value is a scalar literal, or a template made
/// only of literal text and locals already inlined — so the value the Stack
/// writes is the one Terraform resolved before. Everything else (a list, an
/// object, a reference to a variable or a resource, a `%{ ... }` directive)
/// keeps its `${local.x}` template and stays in the sidecar.
///
/// [names] is the Stack's allocator with the block locals already taken, so
/// an inlined local never renames a resource's Dart local — it takes the
/// suffix on a clash instead.
LocalsPlan planLocals(TfModule module, {required NameAllocator names}) {
  final values = <String, LocalValue>{};
  final refused = <String, String>{};
  for (final l in module.locals) {
    // Terraform rejects a name two `locals` blocks both declare; the parser
    // does not, and guessing which one wins is not the migrator's job.
    if (values.containsKey(l.name)) {
      refused[l.name] = 'more than one `locals` block declares it';
    }
    values[l.name] = l;
  }

  final inlined = <InlinedLocal>[];
  final byName = <String, InlinedLocal>{};
  final pending = {
    for (final e in values.entries)
      if (!refused.containsKey(e.key)) e.key: e.value,
  };

  // A local reading another is inlinable once that one is: repeat until a
  // pass adds nothing, which also leaves a reference cycle behind.
  while (pending.isNotEmpty) {
    var progress = false;
    for (final name in pending.keys.toList()) {
      final typed = _dartValue(pending[name]!.value, byName);
      if (typed == null) continue;
      final local = InlinedLocal(
        name: name,
        dartName: names.allocate(name, suffix: 'Local'),
        dartType: typed.type,
        source: typed.source,
        reads: typed.reads,
      );
      inlined.add(local);
      byName[name] = local;
      pending.remove(name);
      progress = true;
    }
    if (!progress) break;
  }

  for (final e in pending.entries) {
    refused[e.key] = _why(e.value.value, byName);
  }
  return LocalsPlan(inlined: inlined, refused: refused);
}

/// `local.<name>` and nothing else.
final RegExp _localReference = RegExp(r'^local\.([A-Za-z_][\w-]*)$');

/// The Dart type, source and local dependencies of [value], or `null` when
/// it has no Dart value.
({String type, String source, Set<String> reads})? _dartValue(
  Expr value,
  Map<String, InlinedLocal> known,
) {
  switch (jsonValue(value)) {
    case final bool b:
      return (type: 'bool', source: b.toString(), reads: const {});
    case final int i:
      return (type: 'int', source: dartValue(i), reads: const {});
    case final double d:
      return (type: 'double', source: dartValue(d), reads: const {});
    case final String s:
      if (!hasTemplateSequence(s)) {
        return (type: 'String', source: dartString(s), reads: const {});
      }
      final reads = <String>{};
      final dart = dartTemplate(s, (reference) {
        final local = inlinedLocal(reference, known);
        if (local == null) return null;
        reads.add(local.name);
        return local.dartName;
      });
      return dart == null ? null : (type: 'String', source: dart, reads: reads);
    case _:
      return null;
  }
}

/// The inlined local [reference] names, when it names one. Shared with the
/// value emitter, so a template in an argument substitutes exactly what a
/// template in a local does.
InlinedLocal? inlinedLocal(
  String reference,
  Map<String, InlinedLocal> inlined,
) {
  final m = _localReference.firstMatch(reference);
  return m == null ? null : inlined[m.group(1)!];
}

/// Why [value] has no Dart value, naming what stopped it.
String _why(Expr value, Map<String, InlinedLocal> known) {
  final json = jsonValue(value);
  final kind = switch (json) {
    null => 'null',
    List() => 'a list',
    Map() => 'an object',
    _ => null,
  };
  if (kind != null) {
    return '--inline-locals inlines scalars, and its value is $kind';
  }
  final blocker = _firstUnresolved(value, known);
  if (blocker != null) {
    return 'its value reads `$blocker`, which has no Dart value here';
  }
  return 'its value is not a literal';
}

/// The source of the first reference in [value] that is not an inlined
/// local, or `null` when every one of them is.
String? _firstUnresolved(Expr value, Map<String, InlinedLocal> known) {
  if (value is TraversalExpr) {
    final source = hclSource(value);
    return inlinedLocal(source, known) == null ? source : null;
  }
  if (value is! TemplateExpr) return null;
  for (final part in value.parts) {
    switch (part) {
      case TemplateInterpolation(:final expr):
        final source = hclSource(expr);
        if (inlinedLocal(source, known) == null) return source;
      // A directive is control flow, not a value: nothing to inline.
      case TemplateDirective():
        return '%{ ... }';
      case TemplateLiteral():
        break;
    }
  }
  return null;
}

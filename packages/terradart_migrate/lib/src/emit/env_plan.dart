/// What two (or more) environment roots disagree on, and which of those
/// differences become constants on the generated `Env` enum.
///
/// `--merge-envs` folds sibling roots — `envs/dev`, `envs/prod` — into one
/// Stack taking the environment as a parameter. That only works where the
/// roots differ in *values*: a bucket name, a machine size, a backend
/// prefix. This is the pass that decides which values those are; the merged
/// emitter refuses everything it did not manage to lift.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart' show hasTemplateSequence;
import 'package:terradart_hcl/terradart_hcl.dart';

import 'body_map.dart';
import 'naming.dart';
import 'tf_expr.dart';

/// One environment of a merged Stack.
final class EnvBinding {
  const EnvBinding({
    required this.member,
    required this.path,
    required this.module,
  });

  /// The `Env` enum member (`dev`).
  final String member;

  /// The root's path relative to the scanned tree (`envs/dev`); the Stack
  /// synthesizes into `tf-out/<path>`.
  final String path;

  /// The environment's Terraform, as scanned.
  final TfModule module;
}

/// One value the environments disagree on, lifted to a constant on `Env`.
final class EnvField {
  const EnvField({
    required this.dartName,
    required this.inferredType,
    required this.values,
    required this.origin,
  });

  /// `assetsName` — the field on the generated enum.
  final String dartName;

  /// The type read off the values (`String`, `int`, `double`, `bool`); the
  /// merged emitter replaces it with the type the argument it fills expects,
  /// when it reports one.
  final String inferredType;

  /// Enum member → the value that environment writes.
  final Map<String, Object?> values;

  /// Where it came from: `google_storage_bucket.assets.name`.
  final String origin;

  /// The Dart expression the emitter writes in place of the literal.
  String get expression => 'env.$dartName';
}

/// Names an `Env` enum member cannot take: what `enum` already declares,
/// plus the fields the merged emitter always writes.
const Set<String> envMemberNames = {
  'index',
  'name',
  'values',
  'path',
  'hashCode',
  'runtimeType',
  'toString',
  'noSuchMethod',
  'compareTo',
};

/// The lifting plan for one environment group.
final class EnvPlan {
  const EnvPlan({
    required this.envs,
    required this.fields,
    required this.overrides,
    required this.notes,
  });

  final List<EnvBinding> envs;

  /// The constants, in declaration order.
  final List<EnvField> fields;

  /// Enum member → block address → top-level argument → `env.<field>`.
  final Map<String, Map<String, Map<String, String>>> overrides;

  /// Block address → why the environments still differ there, for a merge
  /// that has to refuse. Empty when everything about the address lifted.
  final Map<String, List<String>> notes;

  /// Names taken on the enum: [envMemberNames] and every field.
  Set<String> get takenNames => {
    ...envMemberNames,
    for (final f in fields) f.dartName,
  };
}

/// Compares [envs] argument by argument and lifts the differing literals.
///
/// Only *top-level* arguments of a block are compared, and only a scalar
/// (a plain string, number or boolean) is lifted: a nested block, a list, a
/// reference or an interpolated string that differs leaves a note and the
/// merged emitter refuses the whole group. A `sensitive` variable's default
/// is never lifted — a secret does not belong in generated Dart.
EnvPlan planEnvironments(List<EnvBinding> envs) {
  final fields = <EnvField>[];
  final overrides = <String, Map<String, Map<String, String>>>{
    for (final e in envs) e.member: {},
  };
  final notes = <String, List<String>>{};
  final used = <String>{...envMemberNames};

  void note(String address, String reason) =>
      notes.putIfAbsent(address, () => []).add(reason);

  // address -> member -> (arguments, a base name for the constants)
  final blocks = <String, Map<String, _Block>>{};
  for (final env in envs) {
    for (final b in _blocksOf(env.module)) {
      blocks.putIfAbsent(b.address, () => {})[env.member] = b;
    }
  }

  for (final entry in blocks.entries) {
    final address = entry.key;
    final byEnv = entry.value;
    // A block only some environments declare is guarded by the merged
    // emitter (`if (env.isProd)`), never lifted.
    if (byEnv.length != envs.length) continue;
    final keys = <String>{for (final b in byEnv.values) ...b.args.keys};
    for (final key in keys) {
      final values = <String, Object?>{};
      var everywhere = true;
      for (final env in envs) {
        final expr = byEnv[env.member]!.args[key];
        if (expr == null) {
          everywhere = false;
          break;
        }
        values[env.member] = jsonValue(expr);
      }
      if (!everywhere) {
        note(address, '"$key" is not set in every environment');
        continue;
      }
      if (values.values.map(jsonEncode).toSet().length == 1) continue;
      final first = byEnv.values.first;
      final why = _notLiftable(first, key, values);
      if (why != null) {
        note(address, why);
        continue;
      }
      final dartName = _fieldName(first, key, used);
      used.add(dartName);
      final field = EnvField(
        dartName: dartName,
        inferredType: _typeOf(values.values),
        values: values,
        origin: '$address.$key',
      );
      fields.add(field);
      for (final env in envs) {
        overrides[env.member]!.putIfAbsent(address, () => {})[key] =
            field.expression;
      }
    }
  }
  return EnvPlan(
    envs: envs,
    fields: fields,
    overrides: overrides,
    notes: notes,
  );
}

/// Why [key] cannot become an `Env` constant, or `null` when it can.
String? _notLiftable(_Block block, String key, Map<String, Object?> values) {
  if (block.sensitive) {
    return '"$key" belongs to a sensitive variable: its value is never '
        'copied into Dart';
  }
  if (!block.liftable.contains(key)) {
    return '"$key" differs, and it is not an argument the merged Stack can '
        'take from the environment';
  }
  final kinds = <String>{};
  for (final v in values.values) {
    switch (v) {
      case final String s:
        if (hasTemplateSequence(s)) {
          return '"$key" differs and is an expression, not a literal';
        }
        kinds.add('String');
      case bool():
        kinds.add('bool');
      case num():
        kinds.add('num');
      default:
        return '"$key" differs and is ${v == null ? 'null' : 'not a scalar'}';
    }
  }
  if (kinds.length != 1) {
    return '"$key" differs in type between the environments';
  }
  return null;
}

/// `String` / `int` / `double` / `bool` for the values of one constant.
String _typeOf(Iterable<Object?> values) {
  if (values.every((v) => v is bool)) return 'bool';
  if (values.every((v) => v is int)) return 'int';
  if (values.every((v) => v is num)) return 'double';
  return 'String';
}

/// A unique field name for [key] of [block]: `assetsName`, then the block's
/// type in front on a clash, then a counter.
String _fieldName(_Block block, String key, Set<String> used) {
  final candidates = [
    lowerCamel('${block.base}_$key'),
    lowerCamel('${block.qualifier}_${block.base}_$key'),
  ];
  for (final c in candidates) {
    if (!used.contains(c)) return c;
  }
  for (var n = 2; ; n++) {
    final c = '${candidates.first}$n';
    if (!used.contains(c)) return c;
  }
}

/// One comparable block of a module.
final class _Block {
  const _Block({
    required this.address,
    required this.base,
    required this.qualifier,
    required this.args,
    required this.liftable,
    this.sensitive = false,
  });

  final String address;

  /// The name the constants are derived from (`assets`).
  final String base;

  /// Prepended on a name clash (`google_storage_bucket`).
  final String qualifier;
  final Map<String, Expr> args;

  /// Arguments that may become constants; the rest keep their literal.
  final Set<String> liftable;

  /// A `variable` block declaring `sensitive = true`.
  final bool sensitive;
}

/// Everything of [m] the environments are compared over.
List<_Block> _blocksOf(TfModule m) {
  Map<String, Expr> args(Body body) => objectMap(bodyAsObject(body)) ?? {};
  // A resource's own arguments are all liftable; its meta-arguments are
  // structure, not values, and the merge refuses when they differ.
  const meta = {
    'provider',
    'depends_on',
    'lifecycle',
    'count',
    'for_each',
    'dynamic',
    'provisioner',
    'connection',
    'source',
    'version',
    'providers',
  };
  Set<String> own(Map<String, Expr> a) =>
      a.keys.where((k) => !meta.contains(k)).toSet();

  final out = <_Block>[];
  for (final r in m.resources) {
    final a = args(r.body);
    out.add(
      _Block(
        address: r.address,
        base: r.name,
        qualifier: r.type,
        args: a,
        liftable: own(a),
      ),
    );
  }
  for (final d in m.dataSources) {
    final a = args(d.body);
    out.add(
      _Block(
        address: d.address,
        base: d.name,
        qualifier: d.type,
        args: a,
        liftable: own(a),
      ),
    );
  }
  for (final c in m.moduleCalls) {
    final a = args(c.body);
    out.add(
      _Block(
        address: 'module.${c.name}',
        base: c.name,
        qualifier: 'module',
        args: a,
        liftable: own(a),
      ),
    );
  }
  for (final v in m.variables) {
    final a = args(v.body);
    final flag = a['sensitive'];
    final sensitive = flag is LiteralExpr && flag.value == true;
    out.add(
      _Block(
        address: 'variable.${v.name}',
        base: v.name,
        qualifier: 'variable',
        args: a,
        // `type`, `sensitive` and `nullable` shape the variable; only its
        // default and description are values an environment picks.
        liftable: const {'default', 'description'},
        sensitive: sensitive,
      ),
    );
  }
  for (final p in m.providers) {
    final a = args(p.body);
    final alias = p.alias;
    out.add(
      _Block(
        address: 'provider.${p.name}${alias == null ? '' : '.$alias'}',
        base: alias == null ? p.name : '${p.name}_$alias',
        qualifier: 'provider',
        args: a,
        liftable: a.keys.where((k) => k != 'alias').toSet(),
      ),
    );
  }
  final backend = m.backend;
  if (backend != null) {
    final a = args(backend.body);
    out.add(
      _Block(
        address: 'terraform.backend',
        base: 'backend',
        qualifier: backend.labels.isEmpty
            ? 'backend'
            : backend.labels.first.text,
        args: a,
        liftable: a.keys.toSet(),
      ),
    );
  }
  return out;
}

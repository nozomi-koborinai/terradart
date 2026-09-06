/// Turns the arguments of one Terraform block into Dart constructor
/// arguments, slot by slot, following a [MigrateManifest].
library;

import 'package:terradart_hcl/terradart_hcl.dart';

import '../migrate_manifest.dart';
import 'blocker.dart';
import 'body_map.dart';
import 'context.dart';
import 'dart_literal.dart';
import 'tf_expr.dart';

/// One nesting level of a block body: the values under it and which of them
/// a slot has claimed. Unclaimed values are what the migrator has no Dart
/// parameter for.
final class BodyLevel {
  BodyLevel(this.values, {required this.path});

  final Map<String, Expr> values;

  /// Dotted path from the block root: `''` at the top, `push_config.` one
  /// level down. Sensitive-field paths and messages use it.
  final String path;

  final Set<String> claimed = {};
  final Map<String, BodyLevel> _nested = {};

  bool get isTop => path.isEmpty;

  /// The object under [key] as a level; a blocker when it is not an object.
  BodyLevel descend(String key) => _nested.putIfAbsent(key, () {
    final v = values[key];
    final m = v == null ? null : objectMap(v);
    if (m == null) throw MigrateBlocker('argument "$path$key" is not a block');
    return BodyLevel(m, path: '$path$key.');
  });

  BodyLevel descendPath(List<String> parts) {
    var level = this;
    for (final p in parts) {
      level = level.descend(p);
    }
    return level;
  }

  /// The value at a dotted path, or `null` when any step is absent.
  Expr? valueAt(List<String> parts) {
    var level = this;
    for (var i = 0; i < parts.length - 1; i++) {
      final v = level.values[parts[i]];
      if (v == null || objectMap(v) == null) return null;
      level = level.descend(parts[i]);
    }
    return level.values[parts.last];
  }

  void claim(List<String> parts) {
    var level = this;
    for (var i = 0; i < parts.length - 1; i++) {
      level = level.descend(parts[i]);
    }
    level.claimed.add(parts.last);
  }

  /// Dotted keys (from this level) that no slot claimed.
  List<String> unclaimed() {
    final out = <String>[];
    for (final key in values.keys) {
      if (claimed.contains(key)) continue;
      final nested = _nested[key];
      if (nested != null) {
        out.addAll(nested.unclaimed().map((k) => '$key.$k'));
      } else {
        out.add(key);
      }
    }
    return out;
  }

  /// Fails when anything at this level was not claimed.
  void checkClaimed() {
    final rest = unclaimed();
    if (rest.isNotEmpty) {
      throw MigrateBlocker(
        'no Dart parameter for argument${rest.length == 1 ? '' : 's'} '
        '${rest.map((k) => '"$path$k"').join(', ')}',
      );
    }
  }
}

/// Emits Dart for the arguments of one resource / data source (and its
/// nested helper blocks). Every reference it resolves to a migrated block is
/// recorded in [usedTargets] so the caller can decide whether the target
/// needs a Dart local; variables it references land in [usedVariables].
final class ValueEmitter {
  ValueEmitter(this.ctx, this.manifest, {required this.sensitivePaths});

  final EmitContext ctx;
  final MigrateManifest manifest;

  /// Dotted sensitive paths of the block being emitted (from the catalog).
  final Set<String> sensitivePaths;

  final Set<String> usedTargets = {};
  final Set<String> usedVariables = {};

  // ---------------------------------------------------------------------
  // Slots
  // ---------------------------------------------------------------------

  /// Constructor arguments for [slots] read from [level]: positional
  /// arguments first, then `name: value`. Claims what it consumes.
  List<String> emitArgs(List<MigrateSlot> slots, BodyLevel level) {
    final positional = <String>[];
    final named = <String>[];
    MigrateSlot? mergedPassthrough;
    for (final slot in slots) {
      if (slot.merged && slot.kind == MigrateSlotKind.passthrough) {
        mergedPassthrough = slot;
        continue;
      }
      final expr = _emitSlot(slot, level);
      if (expr == null) continue;
      if (slot.positional) {
        positional.add(expr);
      } else {
        named.add('${slot.dartName}: $expr');
      }
    }
    if (mergedPassthrough != null) {
      final rest = <String, Object?>{};
      for (final key in level.values.keys) {
        if (level.claimed.contains(key)) continue;
        rest[key] = jsonValue(level.values[key]!);
        level.claimed.add(key);
      }
      if (rest.isNotEmpty) {
        _checkSensitiveJson(rest, level.path);
        named.add(
          '${mergedPassthrough.dartName}: TfArg.literal(${dartValue(rest)})',
        );
      } else if (mergedPassthrough.required) {
        named.add(
          '${mergedPassthrough.dartName}: TfArg.literal(<String, dynamic>{})',
        );
      }
    }
    return [...positional, ...named];
  }

  String? _emitSlot(MigrateSlot slot, BodyLevel level) {
    final path = '${level.path}${slot.tfName}';
    if (slot.merged) {
      switch (slot.kind) {
        case MigrateSlotKind.helper:
          return _mergedHelper(slot, level);
        case MigrateSlotKind.sealed:
          return _sealed(slot, level, path: level.path);
        case MigrateSlotKind.manual:
          throw MigrateBlocker(
            'argument "${level.path}${slot.dartName}": '
            '${slot.reason ?? 'not derivable'}',
          );
        case MigrateSlotKind.scalar ||
            MigrateSlotKind.enumValue ||
            MigrateSlotKind.passthrough:
          throw MigrateBlocker(
            'argument "${level.path}${slot.dartName}": merged '
            '${slot.kind.name} slot is not supported',
          );
      }
    }
    final parts = slot.tfName.split('.');
    final value = level.valueAt(parts);
    if (value == null) {
      if (slot.required) {
        throw MigrateBlocker('required argument "$path" is not set');
      }
      return null;
    }
    if (slot.kind == MigrateSlotKind.manual) {
      throw MigrateBlocker(
        'argument "$path": ${slot.reason ?? 'not derivable'}',
      );
    }
    if (slot.kind == MigrateSlotKind.sealed) {
      if (slot.repeated) {
        final elements = value is TupleExpr ? value.elements : [value];
        final out = <String>[];
        for (final e in elements) {
          final m = objectMap(e);
          if (m == null) {
            throw MigrateBlocker('argument "$path" is not a block');
          }
          final candidate = BodyLevel(m, path: '$path.');
          final choice = _sealed(slot, candidate, path: '$path.');
          candidate.checkClaimed();
          if (choice != null) out.add(choice);
        }
        level.claim(parts);
        return '[${out.join(', ')}]';
      }
      final candidate = level.descendPath(parts);
      final out = _sealed(slot, candidate, path: '$path.');
      candidate.checkClaimed();
      level.claim(parts);
      return out;
    }
    level.claim(parts);
    return switch (slot.kind) {
      MigrateSlotKind.scalar => _scalar(
        slot,
        value,
        path: path,
        topLevel: level.isTop,
      ),
      MigrateSlotKind.enumValue => _enum(slot, value, path: path),
      MigrateSlotKind.helper =>
        slot.repeated
            ? _helperList(slot.helper!, value, path: path)
            : _helper(
                slot.helper!,
                objectMap(value) ??
                    (throw MigrateBlocker('argument "$path" is not a block')),
                path: '$path.',
              ),
      MigrateSlotKind.passthrough => _passthrough(value, path: path),
      MigrateSlotKind.sealed ||
      MigrateSlotKind.manual => throw StateError('handled above'),
    };
  }

  // ---------------------------------------------------------------------
  // Scalars
  // ---------------------------------------------------------------------

  String _scalar(
    MigrateSlot slot,
    Expr value, {
    required String path,
    required bool topLevel,
  }) {
    final type = slot.dartType ?? 'Object?';
    final sensitive = sensitivePaths.contains(path);
    if (slot.repeated) {
      // `List<T>` (bare) or `List<TfArg<T>>`: one element per list item.
      if (value is! TupleExpr) {
        throw MigrateBlocker(
          'argument "$path" expects a list of $type but is '
          '${_describe(value)}',
        );
      }
      if (sensitive) {
        throw MigrateBlocker(
          'argument "$path" is sensitive: its value is not copied into Dart '
          '(pass it as a variable)',
        );
      }
      final items = <String>[];
      for (final e in value.elements) {
        final item = slot.wrapped
            ? _scalar(
                MigrateSlot(
                  tfName: slot.tfName,
                  dartName: slot.dartName,
                  kind: slot.kind,
                  required: slot.required,
                  wrapped: true,
                  dartType: type,
                ),
                e,
                path: path,
                topLevel: false,
              )
            : _element(type, e, path: path);
        items.add(item);
      }
      return '[${items.join(', ')}]';
    }
    final ref = singleReference(value);
    if (ref != null) {
      final r = _refArg(ref, type: type);
      if (r != null) {
        if (!slot.wrapped) {
          throw MigrateBlocker(
            'argument "$path" takes a bare Dart value, not a reference',
          );
        }
        return r;
      }
    }
    final constant = _constant(value, type, path: path);
    if (constant != null) {
      if (sensitive) {
        throw MigrateBlocker(
          'argument "$path" is sensitive: its value is not copied into Dart '
          '(pass it as a variable)',
        );
      }
      return slot.wrapped ? 'TfArg.literal($constant)' : constant;
    }
    if (!slot.wrapped) {
      throw MigrateBlocker(
        'argument "$path" takes a bare Dart value, not an expression',
      );
    }
    if (type != 'String') {
      throw MigrateBlocker(
        'argument "$path" is a Terraform expression on a $type argument '
        '(needs TfArg.expression, #662)',
      );
    }
    if (sensitive && topLevel) {
      throw MigrateBlocker(
        'argument "$path" is sensitive: an expression literal is rejected '
        'by synth (needs TfArg.expression, #662)',
      );
    }
    return 'TfArg.literal(${dartString(jsonValue(value)! as String)})';
  }

  /// Dart source of a constant payload of [type], `null` when [value] is not
  /// a constant (a reference, template or other expression). A constant of
  /// the wrong shape is a blocker.
  String? _constant(Expr value, String type, {required String path}) {
    Never mismatch(String what) =>
        throw MigrateBlocker('argument "$path" expects $type but is $what');
    switch (type) {
      case 'String':
        final s = constantText(value);
        if (s != null) return dartString(s);
        if (value is LiteralExpr) mismatch('a ${_describe(value)}');
        if (value is TupleExpr) mismatch('a list');
        if (value is ObjectExpr) mismatch('an object');
        return null;
      case 'int' || 'num' || 'double':
        if (value is LiteralExpr) {
          final v = value.value;
          if (v is num) {
            if (type == 'int' && v is! int) mismatch('a fraction');
            if (type == 'double' && v is int) return '$v.0';
            return v.toString();
          }
          mismatch('a ${_describe(value)}');
        }
        if (value.constantString != null) mismatch('a string');
        if (value is TupleExpr) mismatch('a list');
        if (value is ObjectExpr) mismatch('an object');
        return null;
      case 'bool':
        if (value is LiteralExpr) {
          final v = value.value;
          if (v is bool) return v.toString();
          mismatch('a ${_describe(value)}');
        }
        if (value.constantString != null) mismatch('a string');
        if (value is TupleExpr) mismatch('a list');
        if (value is ObjectExpr) mismatch('an object');
        return null;
      default:
        if (type.startsWith('List<') && type.endsWith('>')) {
          final elementType = type.substring(5, type.length - 1);
          if (value is TupleExpr) {
            return '[${value.elements.map((e) => _element(elementType, e, path: path)).join(', ')}]';
          }
          if (value is LiteralExpr || value.constantString != null) {
            mismatch('a ${_describe(value)}');
          }
          if (value is ObjectExpr) mismatch('an object');
          return null;
        }
        if (type.startsWith('Map<String, ') && type.endsWith('>')) {
          final valueType = type.substring(12, type.length - 1);
          if (value is ObjectExpr) {
            final m = objectMap(value);
            if (m == null) mismatch('an object with a computed key');
            return '{${m.entries.map((e) => '${dartString(e.key)}: ${_element(valueType, e.value, path: path)}').join(', ')}}';
          }
          if (value is LiteralExpr || value.constantString != null) {
            mismatch('a ${_describe(value)}');
          }
          if (value is TupleExpr) mismatch('a list');
          return null;
        }
        // dynamic / Object? — anything goes, references stay `${...}` text.
        return dartValue(jsonValue(value));
    }
  }

  /// One element of a list or map payload.
  String _element(String type, Expr value, {required String path}) {
    final ref = singleReference(value);
    if (ref != null) {
      final interp = _refInterpolation(ref);
      if (interp != null) return interp;
    }
    if (type == 'String') {
      final s = constantText(value);
      if (s != null) return dartString(s);
      if (value is LiteralExpr || value is TupleExpr || value is ObjectExpr) {
        throw MigrateBlocker(
          'argument "$path" expects strings but holds a ${_describe(value)}',
        );
      }
      return dartString(jsonValue(value)! as String);
    }
    final c = _constant(value, type, path: path);
    if (c != null) return c;
    throw MigrateBlocker(
      'argument "$path" holds a Terraform expression inside a $type '
      'collection (needs TfArg.expression, #662)',
    );
  }

  static String _describe(Expr value) => switch (value) {
    LiteralExpr(:final value) => switch (value) {
      null => 'null',
      bool() => 'boolean',
      num() => 'number',
      _ => 'string',
    },
    TupleExpr() => 'list',
    ObjectExpr() => 'object',
    _ => 'expression',
  };

  // ---------------------------------------------------------------------
  // References
  // ---------------------------------------------------------------------

  /// `TfArg.ref(...)` / `TfArg.variable(...)` for a reference the Stack can
  /// express, or `null` when the target is not migrated (the caller falls
  /// back to the verbatim expression).
  String? _refArg(TraversalExpr t, {required String type}) {
    switch (classifyTraversal(t)) {
      case VariableReference(:final name):
        usedVariables.add(name);
        return 'TfArg.variable(${dartString(name)})';
      case BlockReference(:final address, :final attribute):
        final target = ctx.targets[address];
        if (target == null || attribute.isEmpty) return null;
        usedTargets.add(address);
        final getter = target.getter(attribute);
        if (getter != null && getter.dartType == type) {
          return 'TfArg.ref(${target.dartName}.${getter.dartName})';
        }
        return 'TfArg.ref(TfRef.attribute<$type>('
            '${target.dartName}, ${dartString(attribute)}))';
      case OtherReference():
        return null;
    }
  }

  /// The `${...}` string of a reference inside a collection: the wrapper's
  /// getter when the target is migrated, else `null`.
  String? _refInterpolation(TraversalExpr t) {
    final c = classifyTraversal(t);
    if (c is VariableReference) {
      usedVariables.add(c.name);
      return null;
    }
    if (c is! BlockReference || c.attribute.isEmpty) return null;
    final target = ctx.targets[c.address];
    if (target == null) return null;
    usedTargets.add(c.address);
    final getter = target.getter(c.attribute);
    if (getter != null) {
      return '${target.dartName}.${getter.dartName}.interpolation';
    }
    return 'TfRef.attribute<String>(${target.dartName}, '
        '${dartString(c.attribute)}).interpolation';
  }

  // ---------------------------------------------------------------------
  // Enums, helpers, sealed choices, passthrough
  // ---------------------------------------------------------------------

  String _enum(MigrateSlot slot, Expr value, {required String path}) {
    final enumName = slot.dartType!;
    final members = manifest.enums[enumName]?.members;
    if (members == null) {
      throw MigrateBlocker('enum $enumName is missing from the manifest');
    }
    String member(Expr e) {
      final raw = e.constantString;
      if (raw == null) {
        throw MigrateBlocker(
          'argument "$path" is a Terraform expression on an enum argument '
          '(needs TfArg.expression, #662)',
        );
      }
      final m = members[raw];
      if (m == null) {
        throw MigrateBlocker(
          'argument "$path": "$raw" is not a member of $enumName',
        );
      }
      return '$enumName.$m';
    }

    if (slot.repeated) {
      final ref = singleReference(value);
      if (ref != null) {
        final r = _refArg(ref, type: 'List<$enumName>');
        if (r != null) return r;
      }
      if (value is! TupleExpr) {
        throw MigrateBlocker('argument "$path" expects a list of $enumName');
      }
      // `List<TfArg<E>>` when wrapped, `List<E>` when bare.
      return '[${value.elements.map((e) => slot.wrapped ? 'TfArg.literal(${member(e)})' : member(e)).join(', ')}]';
    }
    final ref = singleReference(value);
    if (ref != null) {
      final r = _refArg(ref, type: enumName);
      if (r != null) {
        if (!slot.wrapped) {
          throw MigrateBlocker(
            'argument "$path" takes a bare enum value, not a reference',
          );
        }
        return r;
      }
    }
    final m = member(value);
    return slot.wrapped ? 'TfArg.literal($m)' : m;
  }

  String _helper(
    String name,
    Map<String, Expr> values, {
    required String path,
  }) {
    final helper = _helperNamed(name, path: path);
    final level = BodyLevel(values, path: path);
    final args = emitArgs(helper.slots, level);
    level.checkClaimed();
    return '${helper.className}(${args.join(', ')})';
  }

  String _helperList(String name, Expr value, {required String path}) {
    final elements = value is TupleExpr ? value.elements : [value];
    final out = <String>[];
    for (final e in elements) {
      final m = objectMap(e);
      if (m == null) throw MigrateBlocker('argument "$path" is not a block');
      out.add(_helper(name, m, path: '$path.'));
    }
    return '[${out.join(', ')}]';
  }

  /// A helper whose fields are spread into the enclosing block.
  String? _mergedHelper(MigrateSlot slot, BodyLevel level) {
    final helper = _helperNamed(slot.helper!, path: level.path);
    final present = helper.slots.any(
      (s) => s.merged || level.values.containsKey(s.tfName.split('.').first),
    );
    if (!present) {
      if (slot.required) {
        throw MigrateBlocker(
          'required argument "${level.path}${slot.dartName}" is not set',
        );
      }
      return null;
    }
    final args = emitArgs(helper.slots, level);
    return '${helper.className}(${args.join(', ')})';
  }

  MigrateHelper _helperNamed(String name, {required String path}) {
    final helper = manifest.helpers[name];
    if (helper == null) {
      throw MigrateBlocker('helper class $name is missing from the manifest');
    }
    if (helper.reason != null) {
      throw MigrateBlocker('argument "$path" ($name): ${helper.reason}');
    }
    return helper;
  }

  /// An exactly-one-of choice: exactly one variant key must be present at
  /// [candidate]; the chosen helper reads its fields from there when its own
  /// `encode()` wrote the key, else from the block under the key.
  String? _sealed(
    MigrateSlot slot,
    BodyLevel candidate, {
    required String path,
  }) {
    final variants = slot.variants ?? const {};
    final present = [
      for (final k in variants.keys)
        if (candidate.values.containsKey(k)) k,
    ];
    if (present.isEmpty) {
      if (slot.required) {
        throw MigrateBlocker(
          'argument "$path${slot.dartName}": none of '
          '${variants.keys.map((k) => '"$k"').join(', ')} is set',
        );
      }
      return null;
    }
    if (present.length > 1) {
      throw MigrateBlocker(
        'argument "$path${slot.dartName}": more than one of '
        '${present.map((k) => '"$k"').join(', ')} is set',
      );
    }
    final key = present.single;
    final className = variants[key]!;
    final helper = _helperNamed(className, path: '$path$key');
    // The variant wrote the key itself (`{ 'weekly_schedule': {...} }`) when
    // every field path starts with it; a field that merely shares the key's
    // name (`query.query`) lives under the key like the rest.
    final own = helper.slots.where((s) => !s.merged).toList();
    final under = objectMap(candidate.values[key]!);
    var selfWrote =
        own.isNotEmpty &&
        own.every((s) => s.tfName == key || s.tfName.startsWith('$key.'));
    if (selfWrote && under != null && own.every((s) => s.tfName == key)) {
      if (under.containsKey(key)) selfWrote = false;
    }
    // A scalar under the key (`user_by_email = "x"`) can only be a field the
    // variant wrote at this level, whatever its other fields are called.
    if (under == null && own.any((s) => s.tfName == key)) selfWrote = true;
    final String args;
    if (selfWrote) {
      args = emitArgs(helper.slots, candidate).join(', ');
    } else {
      final sub = candidate.descend(key);
      args = emitArgs(helper.slots, sub).join(', ');
      sub.checkClaimed();
      candidate.claimed.add(key);
    }
    return '$className($args)';
  }

  String _passthrough(Expr value, {required String path}) {
    final json = jsonValue(value);
    _checkSensitiveJson(json, '$path.');
    return 'TfArg.literal(${dartValue(json)})';
  }

  /// Synth rejects a plain literal on a sensitive nested path; only `${...}`
  /// text passes. Mirror that before emitting a passthrough map.
  void _checkSensitiveJson(Object? json, String prefix) {
    for (final p in sensitivePaths) {
      if (!p.startsWith(prefix)) continue;
      final rest = p.substring(prefix.length).split('.');
      if (_hasPlainLeaf(json, rest)) {
        throw MigrateBlocker(
          'argument "$p" is sensitive: its value is not copied into Dart '
          '(pass it as a variable)',
        );
      }
    }
  }

  static bool _hasPlainLeaf(Object? json, List<String> path) {
    if (json is List) return json.any((e) => _hasPlainLeaf(e, path));
    if (json is! Map) return false;
    if (!json.containsKey(path.first)) return false;
    final v = json[path.first];
    if (path.length == 1) {
      return !(v is String && v.startsWith(r'${'));
    }
    return _hasPlainLeaf(v, path.sublist(1));
  }
}

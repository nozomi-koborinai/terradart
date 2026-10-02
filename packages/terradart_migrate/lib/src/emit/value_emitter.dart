/// Turns the arguments of one Terraform block into Dart constructor
/// arguments, slot by slot, following a [MigrateManifest].
library;

import 'package:terradart_core/internal.dart'
    show hasTemplateSequence, templateVariableNames;
import 'package:terradart_hcl/terradart_hcl.dart';

import '../migrate_manifest.dart';
import 'blocker.dart';
import 'body_map.dart';
import 'context.dart';
import 'dart_literal.dart';
import 'dart_template.dart';
import 'tf_expr.dart';

/// A helper built with no arguments: a variant whose optional positional
/// parameter defaults to it takes none (`.avroFormat()`).
final RegExp _emptyHelper = RegExp(r'^(?:const )?(?:\.new|\w+)\(\)$');

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
  ValueEmitter(
    this.ctx,
    this.manifest, {
    required this.sensitivePaths,
    this.envValues = const {},
    this.liftWorkspace = false,
  });

  final EmitContext ctx;
  final MigrateManifest manifest;

  /// Dotted sensitive paths of the block being emitted (from the catalog).
  final Set<String> sensitivePaths;

  /// Top-level argument → the Dart expression to emit in place of its
  /// literal (`env.assetsName`), for an argument `--merge-envs` lifted into
  /// an [Env] constant because it differs between the merged environments.
  final Map<String, String> envValues;

  /// Environment expression → the Dart type the slot it filled expects, so
  /// the merger declares the constant with a type the call site accepts.
  final Map<String, String> envSlotTypes = {};

  /// Environment expression → the Dart source of *this* environment's value,
  /// where the literal is not what [dartValue] would write: an enum member
  /// (`.postgres15`, an `Env` field typed as the enum), not the wire string
  /// it came from.
  final Map<String, String> envValueSources = {};

  /// `--lift-workspace`: `terraform.workspace` becomes the Stack's
  /// `workspace` parameter instead of the `${terraform.workspace}` template
  /// Terraform resolves at plan time.
  final bool liftWorkspace;

  /// True once something read the `workspace` parameter.
  bool usedWorkspace = false;

  final Set<String> usedTargets = {};
  final Set<String> usedVariables = {};

  /// Declared variables whose handle local a value read.
  final Set<String> usedHandles = {};

  /// Whether the slot being emitted fills a parameter whose static type
  /// Dart can resolve a dot shorthand against (`.literal(...)`, `.variable(...)`,
  /// an enum's `.member`). A module call's `inputs` map is `Object?`-valued,
  /// so [emitSlot] spells the class out.
  var _typed = true;

  /// `TfArg.<call>`, or the `.<call>` shorthand in a typed position.
  String _arg(String call) => _typed ? '.$call' : 'TfArg.$call';

  /// `RefTo.<call>`, or the `.<call>` shorthand in a typed position.
  String _refTo(String call) => _typed ? '.$call' : 'RefTo.$call';

  /// `$enumName.$member`, or the `.$member` shorthand in a typed position.
  String _enumMember(String enumName, String member) =>
      _typed ? '.$member' : '$enumName.$member';

  /// How many helpers or sealed variants enclose the slot being emitted.
  /// Inside one, a helper whose class is the parameter's type is written
  /// `.new(...)`; a resource's own arguments keep the class name.
  var _nesting = 0;

  /// The arguments of a helper or variant, emitted one level deeper.
  List<String> _nestedArgs(List<MigrateSlot> slots, BodyLevel level) {
    _nesting++;
    try {
      return emitArgs(slots, level);
    } finally {
      _nesting--;
    }
  }

  /// `Helper(args)`, or `.new(args)` inside another helper or a variant.
  String _helperCall(MigrateHelper helper, List<String> args) {
    final ctor = _typed && _nesting > 0 ? '.new' : helper.className;
    return '$ctor(${args.join(', ')})';
  }

  T _inPosition<T>(bool typed, T Function() emit) {
    final outer = _typed;
    _typed = typed;
    try {
      return emit();
    } finally {
      _typed = outer;
    }
  }

  // ---------------------------------------------------------------------
  // Slots
  // ---------------------------------------------------------------------

  /// Constructor arguments for [slots] read from [level]: positional
  /// arguments first, then `name: value`. Claims what it consumes.
  List<String> emitArgs(List<MigrateSlot> slots, BodyLevel level) =>
      _inPosition(true, () => _emitArgs(slots, level));

  List<String> _emitArgs(List<MigrateSlot> slots, BodyLevel level) {
    final positional = <String>[];
    final named = <String>[];
    MigrateSlot? mergedPassthrough;
    for (final slot in slots) {
      if (slot.merged && slot.kind == MigrateSlotKind.passthrough) {
        mergedPassthrough = slot;
        continue;
      }
      if (_filledByParent(slot, slots, level)) {
        level.claim([slot.tfName]);
        continue;
      }
      final expr = _emitSlot(slot, level);
      if (expr == null) continue;
      if (slot.positional &&
          !slot.required &&
          slot.kind == MigrateSlotKind.helper &&
          _emptyHelper.hasMatch(expr)) {
        continue;
      }
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
          '${mergedPassthrough.dartName}: '
          '${_passthroughValue(mergedPassthrough, rest)}',
        );
      } else if (mergedPassthrough.required) {
        named.add(
          '${mergedPassthrough.dartName}: '
          '${_passthroughValue(mergedPassthrough, const <String, Object?>{})}',
        );
      }
    }
    return [...positional, ...named];
  }

  /// Whether [slot] is a key the reference slot it [MigrateSlot.defaultsFrom]
  /// fills, and the source reads that key off the very block the reference
  /// names (`location = google_cloud_run_v2_service.api.location` beside
  /// `name = google_cloud_run_v2_service.api.name`): the reference's `ref`
  /// fills it, so the argument is left out.
  bool _filledByParent(
    MigrateSlot slot,
    List<MigrateSlot> slots,
    BodyLevel level,
  ) {
    final from = slot.defaultsFrom;
    if (from == null) return false;
    final parent = slots.where((s) => s.dartName == from).firstOrNull;
    if (parent == null || parent.kind != MigrateSlotKind.reference) {
      return false;
    }
    final named = switch (level.valueAt([parent.tfName])) {
      final value? => switch (singleReference(value)) {
        final ref? => classifyTraversal(ref),
        null => null,
      },
      null => null,
    };
    if (named is! BlockReference || named.attribute.isEmpty) return false;
    final target = ctx.targets[named.address];
    if (target == null || !_reads(target, parent.dartType!)) return false;
    final value = level.valueAt([slot.tfName]);
    final ref = value == null ? null : singleReference(value);
    if (ref == null) return false;
    return switch (classifyTraversal(ref)) {
      BlockReference(:final address, :final attribute) =>
        address == named.address && attribute == slot.tfName,
      _ => false,
    };
  }

  /// The Dart expression for one [slot] read from [level], claiming what it
  /// consumes; `null` when the value is absent and the slot is optional.
  /// For a caller that assembles its own argument list — a module call's
  /// `inputs` map, whose keys are the module's variables and whose values
  /// have no static type to resolve a dot shorthand against.
  String? emitSlot(MigrateSlot slot, BodyLevel level) =>
      _inPosition(false, () => _emitSlot(slot, level));

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
            MigrateSlotKind.reference ||
            MigrateSlotKind.principal ||
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
      MigrateSlotKind.scalar => _scalar(slot, value, path: path),
      MigrateSlotKind.enumValue => _enum(slot, value, path: path),
      MigrateSlotKind.reference => _reference(slot, value, path: path),
      MigrateSlotKind.principal => _principal(slot, value, path: path),
      MigrateSlotKind.helper =>
        slot.repeated
            ? _helperList(slot.helper!, value, path: path)
            : slot.keyed
            ? _helperMap(slot.helper!, value, path: path)
            : _helper(
                slot.helper!,
                objectMap(value) ??
                    (throw MigrateBlocker('argument "$path" is not a block')),
                path: '$path.',
              ),
      MigrateSlotKind.passthrough => _passthrough(slot, value, path: path),
      MigrateSlotKind.sealed ||
      MigrateSlotKind.manual => throw StateError('handled above'),
    };
  }

  // ---------------------------------------------------------------------
  // Scalars
  // ---------------------------------------------------------------------

  String _scalar(MigrateSlot slot, Expr value, {required String path}) {
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
      // `--merge-envs` lifted this argument into an `Env` constant: the
      // environments disagree on its literal, and nothing else about the
      // block. The literal is still typed first, so the constant's type is
      // the one the argument takes.
      final envExpr = envValues[path];
      if (envExpr != null) {
        envSlotTypes[envExpr] = type;
        return slot.wrapped ? _arg('literal($envExpr)') : envExpr;
      }
      return slot.wrapped ? _arg('literal($constant)') : constant;
    }
    if (!slot.wrapped) {
      throw MigrateBlocker(
        'argument "$path" takes a bare Dart value, not an expression',
      );
    }
    // Any other expression — a template, a function call, a conditional, a
    // reference the Stack cannot type — is emitted verbatim. Synth accepts
    // an expression on a sensitive argument (no value is stored in it).
    return _expression(value);
  }

  /// `TfArg.expression(...)` holding the tf.json template of [value]; the
  /// `var.<name>` references inside it are recorded so the Stack declares
  /// them (synth checks every one).
  String _expression(Expr value) {
    final template = jsonValue(value)! as String;
    // A template that is nothing but one reference carries that reference's
    // own type — `"${local.port}"` is the number Terraform resolved, not its
    // digits — so the whole-value case is left to [_refArg], which knows the
    // slot it fills. Here only a template with text around it is rewritten.
    if (liftWorkspace && !_isBareReference(value)) {
      var read = false;
      final lifted = dartTemplate(template, (r) {
        if (r != _workspaceRead) return null;
        read = true;
        return 'workspace';
      });
      if (lifted != null) {
        if (read) usedWorkspace = true;
        return _arg('literal($lifted)');
      }
      if (template.contains(_workspace)) {
        ctx.warnings.add(
          'the template "$template" mixes `terraform.workspace` with other '
          'references; it stays a Terraform expression (--lift-workspace)',
        );
      }
    }
    usedVariables.addAll(templateVariableNames(template));
    return _arg('expression(${dartString(template)})');
  }

  static const _workspace = r'${terraform.workspace}';

  /// What `${terraform.workspace}` reads, as [dartTemplate] hands it over.
  static const _workspaceRead = 'terraform.workspace';

  /// True when [value] is one reference and nothing else, in either of the
  /// two forms tf.json and HCL write it.
  static bool _isBareReference(Expr value) => singleReference(value) != null;

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
      'collection; a typed Dart list cannot hold one',
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

  /// An attribute getter (`topic.name`), a variable handle or
  /// `TfArg.variable(...)` for a reference the Stack can express, or `null`
  /// when the target is not migrated (the caller falls back to the verbatim
  /// expression).
  String? _refArg(TraversalExpr t, {required String type}) {
    switch (classifyTraversal(t)) {
      case VariableReference(:final name):
        usedVariables.add(name);
        final handle = ctx.variableHandles[name];
        if (handle != null && handle.dartType == type) {
          usedHandles.add(name);
          return handle.dartName;
        }
        return _arg('variable(${dartString(name)})');
      case BlockReference(:final address, :final attribute):
        final target = ctx.targets[address];
        if (target == null || attribute.isEmpty) return null;
        usedTargets.add(address);
        final getter = target.getter(attribute);
        if (getter != null && getter.dartType == type) {
          return '${target.dartName}.${getter.dartName}';
        }
        return 'TfRef.attribute<$type>('
            '${target.dartName}, ${dartString(attribute)})';
      case ModuleReference(:final address, :final attribute):
        final target = ctx.moduleTargets[address];
        if (target == null || attribute.isEmpty) return null;
        usedTargets.add(address);
        final getter = target.getter(attribute);
        // A module output carries no declared type, so the wrapper's getter
        // is always `TfRef<String>`; anything else spells the ref out.
        if (getter != null && type == 'String') {
          return '${target.dartName}.${getter.dartName}';
        }
        return 'TfRef.attribute<$type>('
            '${target.dartName}, ${dartString(attribute)})';
      case OtherReference():
        // `terraform.workspace` has a name of its own; everything else the
        // migrator does not resolve stays a verbatim expression.
        if (t.root == 'terraform' &&
            t.steps.length == 1 &&
            t.steps.single is AttrStep &&
            (t.steps.single as AttrStep).name == 'workspace') {
          // `--lift-workspace`: the selected workspace is a Dart parameter,
          // so the synthesized JSON carries its name instead of the
          // template. Only where the argument is a string, of course.
          if (liftWorkspace && (type == 'String' || type == 'Object?')) {
            usedWorkspace = true;
            return _arg('literal(workspace)');
          }
          return _typed ? '.workspace()' : 'TfArg.workspace<$type>()';
        }
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
    // `--lift-workspace`: a workspace reference inside a list or map is the
    // parameter's value, like one on an argument of its own.
    if (liftWorkspace &&
        t.root == 'terraform' &&
        t.steps.length == 1 &&
        t.steps.single is AttrStep &&
        (t.steps.single as AttrStep).name == 'workspace') {
      usedWorkspace = true;
      return 'workspace';
    }
    if (c is ModuleReference) {
      if (c.attribute.isEmpty) return null;
      final module = ctx.moduleTargets[c.address];
      if (module == null) return null;
      usedTargets.add(c.address);
      final getter = module.getter(c.attribute);
      if (getter != null) {
        return '${module.dartName}.${getter.dartName}.interpolation';
      }
      return 'TfRef.attribute<String>(${module.dartName}, '
          '${dartString(c.attribute)}).interpolation';
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
  // Typed references
  // ---------------------------------------------------------------------

  /// A `RefTo<C>` argument, or a `TfArg<List<RefTo<C>>>` when [slot] is
  /// repeated: a literal list holds one reference per element, anything
  /// else is the whole list (`var.subnet_ids`, a splat).
  String _reference(MigrateSlot slot, Expr value, {required String path}) {
    if (!slot.repeated) return _referenceValue(slot, value, path: path);
    if (value is TupleExpr) {
      final items = [
        for (final e in value.elements) _referenceValue(slot, e, path: path),
      ];
      return _arg('literal([${items.join(', ')}])');
    }
    if (value is LiteralExpr || value.constantString != null) {
      throw MigrateBlocker(
        'argument "$path" expects a list of references but is a '
        '${_describe(value)}',
      );
    }
    if (value is ObjectExpr) {
      throw MigrateBlocker(
        'argument "$path" expects a list of references but is an object',
      );
    }
    if (singleReference(value) case final ref?) {
      if (classifyTraversal(ref) case VariableReference(:final name)) {
        usedVariables.add(name);
        return _arg('variable(${dartString(name)})');
      }
    }
    return _expression(value);
  }

  /// One `RefTo<C>`: the block's `ref` when [value] reads a migrated block
  /// of `C` (pinned when it reads another attribute than the argument
  /// emits), else the value wrapped as it is — the migrated Stack
  /// synthesizes what the source said either way.
  String _referenceValue(MigrateSlot slot, Expr value, {required String path}) {
    final className = slot.dartType!;
    final ref = singleReference(value);
    if (ref != null) {
      final c = classifyTraversal(ref);
      if (c is BlockReference && c.attribute.isNotEmpty) {
        final target = ctx.targets[c.address];
        if (target != null && _reads(target, className)) {
          usedTargets.add(c.address);
          final attribute = c.attribute;
          return attribute == slot.attribute
              ? '${target.dartName}.ref'
              : '${target.dartName}.ref.pinned(${dartString(attribute)})';
        }
        if (target != null) {
          ctx.warnings.add(
            'argument "$path" names a $className but reads ${c.address}, '
            'a ${target.entry.className}; it stays an unchecked RefTo.arg',
          );
        }
      }
      final arg = _refArg(ref, type: 'String');
      if (arg != null) {
        return _asRefTo(arg, 'variable(');
      }
    }
    final text = constantText(value);
    if (text != null) {
      if (sensitivePaths.contains(path)) {
        throw MigrateBlocker(
          'argument "$path" is sensitive: its value is not copied into Dart '
          '(pass it as a variable)',
        );
      }
      final envExpr = envValues[path];
      if (envExpr != null) {
        envSlotTypes[envExpr] = 'String';
        return _refTo('literal($envExpr)');
      }
      return _refTo('literal(${dartString(text)})');
    }
    if (value is LiteralExpr || value is TupleExpr || value is ObjectExpr) {
      throw MigrateBlocker(
        'argument "$path" expects a reference to a $className but is a '
        '${_describe(value)}',
      );
    }
    return _asRefTo(_expression(value), 'expression(');
  }

  /// [arg] (a `TfArg<String>` this emitter wrote) as a `RefTo`: the `RefTo`
  /// factory of the same name when [arg] is a [call] of [TfArg] — a
  /// variable or an expression — else `RefTo.arg(...)` around it.
  String _asRefTo(String arg, String call) {
    final prefix = _arg(call);
    return arg.startsWith(prefix)
        ? _refTo('$call${arg.substring(prefix.length)}')
        : _refTo('arg($arg)');
  }

  // ---------------------------------------------------------------------
  // IAM principals
  // ---------------------------------------------------------------------

  /// An `IamPrincipal` argument, or a `TfArg<List<IamPrincipal>>` when
  /// [slot] is repeated: a literal list holds one principal per element,
  /// anything else is the whole list (`var.members`, a splat).
  String _principal(MigrateSlot slot, Expr value, {required String path}) {
    final appwrite = slot.dartType == 'AppwritePermission';
    String one(Expr e) => appwrite
        ? _permissionValue(e, path: path)
        : _principalValue(e, path: path);
    if (!slot.repeated) return one(value);
    if (value is TupleExpr) {
      final items = [for (final e in value.elements) one(e)];
      return _arg('literal([${items.join(', ')}])');
    }
    if (value is LiteralExpr ||
        value is ObjectExpr ||
        value.constantString != null) {
      throw MigrateBlocker(
        'argument "$path" expects a list of IAM principals but is a '
        '${_describe(value)}',
      );
    }
    if (singleReference(value) case final ref?) {
      if (classifyTraversal(ref) case VariableReference(:final name)) {
        usedVariables.add(name);
        return _arg('variable(${dartString(name)})');
      }
    }
    return _expression(value);
  }

  /// One `IamPrincipal`: the block's `principal` getter when [value] reads
  /// the `member` of a migrated block that has one, a named constructor
  /// (`.user('a@example.com')`, `.allUsers`) for a literal, else the value
  /// wrapped as it is.
  String _principalValue(Expr value, {required String path}) {
    final ref = singleReference(value);
    if (ref != null) {
      if (classifyTraversal(ref) case BlockReference(
        :final address,
        attribute: 'member',
      )) {
        final target = ctx.targets[address];
        if (target != null && target.entry.principal) {
          usedTargets.add(address);
          return '${target.dartName}.principal';
        }
      }
      final arg = _refArg(ref, type: 'String');
      if (arg != null) return _principalCall('arg($arg)');
    }
    final text = constantText(value);
    if (text != null) {
      if (sensitivePaths.contains(path)) {
        throw MigrateBlocker(
          'argument "$path" is sensitive: its value is not copied into Dart '
          '(pass it as a variable)',
        );
      }
      final envExpr = envValues[path];
      if (envExpr != null) {
        envSlotTypes[envExpr] = 'String';
        return _principalCall('literal($envExpr)');
      }
      return _principalLiteral(text);
    }
    if (value is LiteralExpr || value is TupleExpr || value is ObjectExpr) {
      throw MigrateBlocker(
        'argument "$path" expects an IAM principal but is a '
        '${_describe(value)}',
      );
    }
    return _principalCall('arg(${_expression(value)})');
  }

  static const _principalKinds = {
    'user:': 'user',
    'group:': 'group',
    'serviceAccount:': 'serviceAccount',
    'domain:': 'domain',
  };

  String _principalLiteral(String text) {
    if (text == 'allUsers' || text == 'allAuthenticatedUsers') {
      return _principalCall(text);
    }
    for (final MapEntry(key: prefix, value: kind) in _principalKinds.entries) {
      if (text.startsWith(prefix) && text.length > prefix.length) {
        final rest = text.substring(prefix.length);
        if (hasTemplateSequence(rest)) break;
        return _principalCall('$kind(${dartString(rest)})');
      }
    }
    return _principalCall('literal(${dartString(text)})');
  }

  /// `IamPrincipal.<call>`, or the `.<call>` shorthand in a typed position.
  String _principalCall(String call) {
    if (_typed) return '.$call';
    ctx.import('terradart_google', 'iam');
    return 'IamPrincipal.$call';
  }

  // ---------------------------------------------------------------------
  // Appwrite permissions
  // ---------------------------------------------------------------------

  /// One `AppwritePermission`: a named constructor of its action and role
  /// (`.read(.any)`, `.write(.team(.literal('t'), role: 'owner'))`) for a
  /// literal, else the value wrapped as it is.
  String _permissionValue(Expr value, {required String path}) {
    final text = constantText(value);
    if (text != null) {
      if (sensitivePaths.contains(path)) {
        throw MigrateBlocker(
          'argument "$path" is sensitive: its value is not copied into Dart '
          '(pass it as a variable)',
        );
      }
      final envExpr = envValues[path];
      if (envExpr != null) {
        envSlotTypes[envExpr] = 'String';
        return _permissionCall('literal($envExpr)');
      }
      return _permissionLiteral(text);
    }
    if (value is LiteralExpr || value is TupleExpr || value is ObjectExpr) {
      throw MigrateBlocker(
        'argument "$path" expects an Appwrite permission but is a '
        '${_describe(value)}',
      );
    }
    if (singleReference(value) case final ref?) {
      final arg = _refArg(ref, type: 'String');
      if (arg != null) return _permissionCall('arg($arg)');
    }
    return _permissionCall('arg(${_expression(value)})');
  }

  static final _permission = RegExp(
    r'^(read|create|update|delete|write)\("([^"]*)"\)$',
  );

  String _permissionLiteral(String text) {
    final match = _permission.firstMatch(text);
    final role = match == null || hasTemplateSequence(text)
        ? null
        : _role(match[2]!);
    if (role == null) return _permissionCall('literal(${dartString(text)})');
    return _permissionCall('${match![1]}($role)');
  }

  /// The `AppwriteRole` shorthand for [text], or null for one it does not
  /// spell (left to `AppwritePermission.literal`).
  static String? _role(String text) {
    String status(String? s) => switch (s) {
      null => '',
      'verified' => 'verified: true',
      _ => 'verified: false',
    };
    String call(String name, List<String> args) =>
        '.$name(${args.where((a) => a.isNotEmpty).join(', ')})';
    switch (text) {
      case 'any' || 'guests':
        return '.$text';
      case 'users':
        return '.users()';
      case 'users/verified' || 'users/unverified':
        return call('users', [status(text.substring(6))]);
    }
    final colon = text.indexOf(':');
    if (colon <= 0 || colon == text.length - 1) return null;
    final kind = text.substring(0, colon);
    final rest = text.substring(colon + 1);
    final slash = rest.indexOf('/');
    final id = slash < 0 ? rest : rest.substring(0, slash);
    final suffix = slash < 0 ? null : rest.substring(slash + 1);
    if (id.isEmpty || (suffix != null && suffix.isEmpty)) return null;
    switch (kind) {
      case 'user'
          when suffix == null || suffix == 'verified' || suffix == 'unverified':
        return call('user', ['.literal(${dartString(id)})', status(suffix)]);
      case 'team':
        return call('team', [
          '.literal(${dartString(id)})',
          if (suffix != null) 'role: ${dartString(suffix)}',
        ]);
      case 'member' when suffix == null:
        return '.member(${dartString(id)})';
      case 'label' when suffix == null:
        return '.label(${dartString(id)})';
    }
    return null;
  }

  /// `AppwritePermission.<call>`, or the `.<call>` shorthand in a typed
  /// position.
  String _permissionCall(String call) {
    if (_typed) return '.$call';
    ctx.import('terradart_appwrite', 'auth');
    return 'AppwritePermission.$call';
  }

  /// Whether [target]'s `ref` is a `RefTo<className>`: the resource itself,
  /// or a data source reading that resource type.
  static bool _reads(EmitTarget target, String className) {
    if (!target.isData) return target.entry.className == className;
    final resource = target.manifest.entryFor(
      target.entry.tfType,
      CatalogKind.resource,
    );
    return resource?.className == className;
  }

  // ---------------------------------------------------------------------
  // Enums, helpers, sealed choices, passthrough
  // ---------------------------------------------------------------------

  /// The member whose raw value equals [raw] ignoring case, when the
  /// manifest's provider matches enum values that way and exactly one does.
  MapEntry<String, String>? _caseInsensitiveMember(
    Map<String, String> members,
    String raw,
  ) {
    if (!manifest.caseInsensitiveEnums) return null;
    final lower = raw.toLowerCase();
    final hits = [
      for (final e in members.entries)
        if (e.key.toLowerCase() == lower) e,
    ];
    return hits.length == 1 ? hits.single : null;
  }

  String _enum(MigrateSlot slot, Expr value, {required String path}) {
    final enumName = slot.dartType!;
    final members = manifest.enums[enumName]?.members;
    if (members == null) {
      throw MigrateBlocker('enum $enumName is missing from the manifest');
    }
    bool isExpression(Expr e) =>
        e.constantString == null &&
        e is! LiteralExpr &&
        e is! TupleExpr &&
        e is! ObjectExpr;
    String member(Expr e) {
      final raw = e.constantString;
      if (raw == null) {
        throw MigrateBlocker(
          'argument "$path" expects a member of $enumName but is '
          '${isExpression(e) ? 'a Terraform expression' : 'a ${_describe(e)}'}',
        );
      }
      final exact = members[raw];
      if (exact != null) return _enumMember(enumName, exact);
      final folded = _caseInsensitiveMember(members, raw);
      if (folded == null) {
        throw MigrateBlocker(
          'argument "$path": "$raw" is not a member of $enumName',
        );
      }
      ctx.warnings.add(
        'argument "$path": "$raw" becomes $enumName.${folded.value}, which '
        'synthesizes as "${folded.key}" (the provider matches enum values '
        'case-insensitively)',
      );
      return _enumMember(enumName, folded.value);
    }

    // An enum is a `TfArg<String>`: a member, `.variable(...)` /
    // `.expression(...)` (constructors every enum declares), or any other
    // `TfArg<String>` — a reference, a lifted workspace — through `.arg(...)`.
    String enumCall(String typedArg) {
      final own =
          typedArg.startsWith('.variable(') ||
          typedArg.startsWith('.expression(');
      final call = own ? typedArg : '.arg($typedArg)';
      return _typed ? call : '$enumName$call';
    }

    String element(Expr e) {
      if (!isExpression(e)) return member(e);
      final ref = singleReference(e);
      if (ref != null) {
        final r = _inPosition(true, () => _refArg(ref, type: 'String'));
        if (r != null) return enumCall(r);
      }
      return enumCall(_inPosition(true, () => _expression(e)));
    }

    if (slot.repeated) {
      // The parameter is a Dart list (`List<E>`), so a reference to a whole
      // list has no slot to go in.
      if (value is! TupleExpr && isExpression(value)) {
        throw MigrateBlocker(
          'argument "$path" takes a list of $enumName values, not a '
          'reference to a whole list',
        );
      }
      if (value is! TupleExpr) {
        throw MigrateBlocker('argument "$path" expects a list of $enumName');
      }
      return '[${value.elements.map(element).join(', ')}]';
    }
    // Lifted by `--merge-envs`: the environments name different members of
    // the same enum, so the constant is typed as the enum, not as its wire
    // string.
    final envExpr = envValues[path];
    if (envExpr != null) {
      envSlotTypes[envExpr] = enumName;
      envValueSources[envExpr] = member(value);
      return envExpr;
    }
    return element(value);
  }

  String _helper(
    String name,
    Map<String, Expr> values, {
    required String path,
  }) {
    final helper = _helperNamed(name, path: path);
    final level = BodyLevel(values, path: path);
    final args = _nestedArgs(helper.slots, level);
    level.checkClaimed();
    return _helperCall(helper, args);
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

  /// A `nesting_mode: map` block: an object whose every value is one block
  /// of [name], keyed by an arbitrary name. The blocks read under `path.*.`,
  /// the `*` sensitive paths use for the entry names.
  String _helperMap(String name, Expr value, {required String path}) {
    if (value is! ObjectExpr) {
      throw MigrateBlocker(
        'argument "$path" expects a map of blocks but is ${_describe(value)}',
      );
    }
    final entries = objectMap(value);
    if (entries == null) {
      throw MigrateBlocker('argument "$path" has a computed key');
    }
    final out = <String>[];
    for (final e in entries.entries) {
      final m = objectMap(e.value);
      if (m == null) {
        throw MigrateBlocker('argument "$path.${e.key}" is not a block');
      }
      out.add('${dartString(e.key)}: ${_helper(name, m, path: '$path.*.')}');
    }
    return '{${out.join(', ')}}';
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
    final args = _nestedArgs(helper.slots, level);
    return _helperCall(helper, args);
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
    // A variant holding the whole block as one helper (`query: BigqueryJobQuery`)
    // wrote the key itself even when that block has a scalar of the same
    // name: only a block under the key can fill the helper.
    if (selfWrote && under != null && own.every((s) => s.tfName == key)) {
      final inner = under[key];
      final helperOnly = own.every((s) => s.kind == MigrateSlotKind.helper);
      if (inner != null && !(helperOnly && objectMap(inner) == null)) {
        selfWrote = false;
      }
    }
    // A scalar under the key (`user_by_email = "x"`) can only be a field the
    // variant wrote at this level, whatever its other fields are called.
    if (under == null && own.any((s) => s.tfName == key)) selfWrote = true;
    final String args;
    if (selfWrote) {
      args = _nestedArgs(helper.slots, candidate).join(', ');
    } else {
      final sub = candidate.descend(key);
      args = _nestedArgs(helper.slots, sub).join(', ');
      sub.checkClaimed();
      candidate.claimed.add(key);
    }
    final shorthand = helper.shorthand;
    return shorthand == null ? '$className($args)' : '.$shorthand($args)';
  }

  String _passthrough(MigrateSlot slot, Expr value, {required String path}) {
    final json = jsonValue(value);
    _checkSensitiveJson(json, '$path.');
    return _passthroughValue(slot, json);
  }

  /// The Dart for a passthrough payload. The manifest's `wrapped` flag says
  /// whether the parameter is `TfArg<Map<...>>` (an IAM `condition`, the
  /// norm) or a bare `Map` / `List` spread into the block (`advancedExtra`
  /// on a hand-written helper): only the former takes `TfArg.literal`.
  /// Wrapping the latter produced a `TfArg<Map<...>>` where a `Map` was
  /// expected, so a migrated Stack that used it did not compile.
  ///
  /// The payload is shaped to the parameter as well: a block written once
  /// reads as one object, so a `List<...>` parameter gets it as a
  /// one-element list, and a `Map<...>` parameter takes the single element
  /// of a one-object list (the tf.json block form). An empty payload is
  /// typed from the manifest, since [dartValue]'s `<Object?>[]` fits
  /// neither a `List<Map<String, dynamic>>` nor strict inference.
  String _passthroughValue(MigrateSlot slot, Object? json) {
    final type = slot.dartType ?? '';
    var payload = json;
    if (type.startsWith('List<') && payload is Map) {
      payload = [payload];
    } else if (type.startsWith('Map<') &&
        payload is List &&
        payload.length == 1 &&
        payload.single is Map) {
      payload = payload.single;
    }
    final literal = _isEmptyCollection(payload)
        ? _typedEmpty(type, payload)
        : dartValue(payload);
    return slot.wrapped ? _arg('literal($literal)') : literal;
  }

  static bool _isEmptyCollection(Object? json) =>
      (json is Map && json.isEmpty) || (json is List && json.isEmpty);

  /// `<K, V>{}` / `<E>[]` for the manifest's payload type; [dartValue]'s
  /// `Object?`-typed empties when the type is not a plain `Map<...>` /
  /// `List<...>` spelling.
  static String _typedEmpty(String type, Object? json) {
    if (json is Map && type.startsWith('Map<') && type.endsWith('>')) {
      return '<${type.substring(4, type.length - 1)}>{}';
    }
    if (json is List && type.startsWith('List<') && type.endsWith('>')) {
      return '<${type.substring(5, type.length - 1)}>[]';
    }
    return dartValue(json);
  }

  /// Synth rejects a plain literal on a sensitive nested path; only a
  /// Terraform template (a `${ ... }` or `%{ ... }` sequence anywhere in
  /// the string) passes. Mirror that before emitting a passthrough map.
  void _checkSensitiveJson(Object? json, String prefix) {
    for (final p in sensitivePaths) {
      if (!p.startsWith(prefix)) continue;
      final rest = p.substring(prefix.length).split('.');
      if (hasPlainSensitiveLeaf(json, rest)) {
        throw MigrateBlocker(
          'argument "$p" is sensitive: its value is not copied into Dart '
          '(pass it as a variable)',
        );
      }
    }
  }

  /// True when the leaf at [path] inside the tf.json value [json] is a plain
  /// value rather than a Terraform template — the same test synth applies to
  /// a sensitive nested path (`hasTemplateSequence`). Lists are searched
  /// element by element, and a `*` segment matches every key of a map.
  /// Exposed for tests.
  static bool hasPlainSensitiveLeaf(Object? json, List<String> path) {
    if (json is List) {
      return json.any((e) => hasPlainSensitiveLeaf(e, path));
    }
    if (json is! Map) return false;
    if (path.first == '*') {
      return json.values.any(
        (v) => path.length == 1
            ? !(v is String && hasTemplateSequence(v))
            : hasPlainSensitiveLeaf(v, path.sublist(1)),
      );
    }
    if (!json.containsKey(path.first)) return false;
    final v = json[path.first];
    if (path.length == 1) {
      return !(v is String && hasTemplateSequence(v));
    }
    return hasPlainSensitiveLeaf(v, path.sublist(1));
  }
}

import 'package:meta/meta.dart';

import '../app_constant.dart';
import '../lifecycle.dart';
import '../resource.dart';
import '../stack.dart';
import '../tf_arg.dart';
import '../tf_template.dart';
import 'app_exports_emitter.dart';
import 'json_encoder.dart';
import 'synth_issue.dart';

@internal
abstract final class StackValidator {
  static List<SynthIssue> validate(Stack stack) => [
    ..._providers(stack),
    ..._variables(stack),
    ..._references(stack),
    ..._sensitiveLiterals(stack),
    ..._sensitiveOutputs(stack),
    ..._timeouts(stack),
    ..._moved(stack),
    ..._constants(stack),
    ..._dartDefineOutputs(stack),
    ..._lifecycles(stack),
  ];

  static final RegExp _alias = RegExp(r'^[A-Za-z_][A-Za-z0-9_-]*$');

  static Iterable<SynthIssue> _providers(Stack stack) sync* {
    final modulesOnly =
        stack.modules.isNotEmpty &&
        stack.resources.isEmpty &&
        stack.dataSources.isEmpty;
    if (stack.providers.isEmpty && !modulesOnly) {
      yield const NoProviders();
    }

    final seen = <String>{};
    final firstOfName = <String, StackProvider>{};
    for (final p in stack.providers) {
      final alias = p.alias;
      final ref = TfJsonEncoder.providerReference(p);
      if (alias != null && !_alias.hasMatch(alias)) {
        yield ProviderConflict(
          provider: ref,
          reason:
              'the alias "$alias" is not a Terraform identifier (letters, '
              'digits, "_" and "-", not starting with a digit).',
        );
      }
      if (!seen.add(ref)) {
        yield ProviderConflict(
          provider: ref,
          reason: alias == null
              ? 'registered twice without an alias. Give every configuration '
                    'after the default one an `alias:` and pass that '
                    'instance as `provider:` on the resource.'
              : 'the alias "$ref" is registered twice.',
        );
      }
      final first = firstOfName.putIfAbsent(p.providerName, () => p);
      if (!identical(first, p) &&
          (first.source != p.source ||
              first.versionConstraint != p.versionConstraint)) {
        yield ProviderConflict(
          provider: ref,
          reason:
              'registered with different source / version constraints '
              '(${first.source} ${first.versionConstraint} vs ${p.source} '
              '${p.versionConstraint}); every configuration of one name '
              'shares its required_providers entry.',
        );
      }
    }

    if (stack.providers.isEmpty && !modulesOnly) return;
    final registered = {
      for (final p in stack.providers) TfJsonEncoder.providerReference(p),
    };
    for (final r in [...stack.resources, ...stack.dataSources]) {
      final explicit = r.provider;
      if (explicit != null) {
        if (!stack.providers.any((p) => identical(p, explicit))) {
          yield MissingProvider(
            address: r.tfAddress,
            provider: TfJsonEncoder.providerReference(explicit),
            unregisteredInstance: true,
          );
        }
        continue;
      }
      final needed = r.defaultProvider;
      if (!registered.contains(needed)) {
        yield MissingProvider(address: r.tfAddress, provider: needed);
      }
    }
    for (final m in stack.modules) {
      for (final p in m.providers.values) {
        if (!stack.providers.any((q) => identical(q, p))) {
          yield MissingProvider(
            address: m.tfAddress,
            provider: TfJsonEncoder.providerReference(p),
            unregisteredInstance: true,
          );
        }
      }
    }
  }

  static Iterable<SynthIssue> _variables(Stack stack) sync* {
    final declared = {...stack.variables.keys, ...stack.externalVariables};
    for (final (address, args) in _argumentsByBlock(stack)) {
      final names = <String>{
        for (final arg in args)
          if (arg != null)
            for (final s in _strings(TfJsonEncoder.encodeArg(arg)))
              ...templateVariableNames(s),
      };
      for (final name in names) {
        if (!declared.contains(name)) {
          yield UndeclaredVariable(address: address, name: name);
        }
      }
    }
  }

  static Iterable<(String, Iterable<TfArg<dynamic>?>)> _argumentsByBlock(
    Stack stack,
  ) sync* {
    for (final r in stack.dataSources) {
      yield (r.tfAddress, r.argMap.values);
    }
    for (final r in stack.resources) {
      yield (
        r.tfAddress,
        [
          ...r.argMap.values,
          ...?r.lifecycle?.conditions?.map((c) => c.condition),
        ],
      );
    }
    for (final m in stack.modules) {
      yield (m.tfAddress, [...m.inputs.values, m.count, m.forEach]);
    }
    for (final MapEntry(key: name, value: o) in stack.outputs.entries) {
      yield ('output.$name', [o.value]);
    }
  }

  static Iterable<SynthIssue> _references(Stack stack) sync* {
    final registered = {
      for (final r in stack.resources) r.tfAddress,
      for (final d in stack.dataSources) d.tfAddress,
      for (final m in stack.modules) m.tfAddress,
      ...stack.externalBlocks,
    };
    final prefixes = {
      for (final p in stack.providers) p.providerName,
      for (final r in [...stack.resources, ...stack.dataSources])
        r.terraformType.split('_').first,
    };

    Iterable<SynthIssue> check(String address, Iterable<String> targets) sync* {
      final reported = <String>{};
      for (final target in targets) {
        if (!registered.contains(target) && reported.add(target)) {
          yield UnregisteredReference(address: address, target: target);
        }
      }
    }

    Iterable<String> templated(Object? encoded) sync* {
      for (final s in _strings(encoded)) {
        final bodies = templateSequenceBodies(s);
        final iterators = {
          for (final body in bodies)
            for (final m in _forIterators.allMatches(body)) ...[
              m.group(1)!,
              ?m.group(2),
            ],
        };
        for (final body in bodies) {
          yield* _referencedBlocks(body, prefixes, iterators);
        }
      }
    }

    Iterable<String> read(Iterable<TfArg<dynamic>?> args) => [
      for (final arg in args)
        if (arg != null) ...[
          ..._owners(arg),
          ...templated(TfJsonEncoder.encodeArg(arg)),
        ],
    ];

    for (final r in stack.resources) {
      yield* check(r.tfAddress, [
        ...read([
          ...r.argMap.values,
          ...?r.lifecycle?.conditions?.map((c) => c.condition),
        ]),
        ...?r.dependsOn?.map((d) => _root(d.tfAddress)),
        ...?r.lifecycle?.replaceTriggeredBy?.map(
          (t) => _root(TfJsonEncoder.replaceTriggerAddress(t)),
        ),
      ]);
    }
    for (final d in stack.dataSources) {
      yield* check(d.tfAddress, [
        ...read(d.argMap.values),
        ...?d.dependsOn?.map((t) => _root(t.tfAddress)),
      ]);
    }
    for (final m in stack.modules) {
      yield* check(m.tfAddress, [
        ...read([...m.inputs.values, m.count, m.forEach]),
        ...?m.dependsOn?.map((d) => _root(d.tfAddress)),
      ]);
    }
    for (final MapEntry(key: name, value: o) in stack.outputs.entries) {
      yield* check('output.$name', read([o.value]));
    }
  }

  static Iterable<String> _owners(Object? v) sync* {
    switch (v) {
      case AttributeRef(:final owner) || ResourceRef(:final owner):
        yield _root(owner.tfAddress);
      case TfArgLiteral(:final value):
        yield* _owners(value);
      case List():
        for (final e in v) {
          yield* _owners(e);
        }
      case Map():
        for (final e in v.values) {
          yield* _owners(e);
        }
      default:
        break;
    }
  }

  static final RegExp _blockReference = RegExp(
    r'(?<![\w.\-])(?:(data)\.)?([A-Za-z][A-Za-z0-9]*)((?:_[A-Za-z0-9_]*)?)\.'
    r'([A-Za-z_][A-Za-z0-9_\-]*)',
  );
  static final RegExp _moduleReference = RegExp(
    r'(?<![\w.\-])module\.([A-Za-z_][A-Za-z0-9_\-]*)',
  );
  static final RegExp _forIterators = RegExp(
    r'\bfor\s+([A-Za-z_][\w\-]*)(?:\s*,\s*([A-Za-z_][\w\-]*))?\s+in\b',
  );

  static const _terraformBuiltinRoots = {
    'count',
    'data',
    'each',
    'local',
    'module',
    'path',
    'self',
    'terraform',
    'var',
  };

  static Iterable<String> _referencedBlocks(
    String body,
    Set<String> prefixes,
    Set<String> iterators,
  ) sync* {
    for (final m in _blockReference.allMatches(body)) {
      final prefix = m.group(2)!;
      if (!prefixes.contains(prefix)) continue;
      final type = '$prefix${m.group(3)}';
      if (iterators.contains(type)) continue;
      if (type == prefix && _terraformBuiltinRoots.contains(type)) continue;
      yield m.group(1) == null
          ? '$type.${m.group(4)}'
          : 'data.$type.${m.group(4)}';
    }
    if (iterators.contains('module')) return;
    for (final m in _moduleReference.allMatches(body)) {
      yield 'module.${m.group(1)}';
    }
  }

  static String _root(String bare) {
    final parts = bare.replaceAll(RegExp(r'\[[^\]]*\]'), '').split('.');
    final take = switch (parts.first) {
      'data' => 3,
      _ => 2,
    };
    return parts.take(take).join('.');
  }

  static Iterable<String> _strings(Object? v) sync* {
    switch (v) {
      case String():
        yield v;
      case List():
        for (final e in v) {
          yield* _strings(e);
        }
      case Map():
        for (final MapEntry(:key, :value) in v.entries) {
          if (key is String) yield key;
          yield* _strings(value);
        }
      default:
        break;
    }
  }

  static Iterable<SynthIssue> _sensitiveLiterals(Stack stack) sync* {
    for (final r in [...stack.resources, ...stack.dataSources]) {
      // ignore: invalid_use_of_protected_member
      final sensitive = r.sensitiveFields;
      if (sensitive.isEmpty) continue;
      for (final field in sensitiveLiteralFields(r.argMap, sensitive)) {
        yield SensitiveLiteral(address: r.tfAddress, field: field);
      }
    }
  }

  static Iterable<SynthIssue> _sensitiveOutputs(Stack stack) sync* {
    final blocks = {
      for (final b in [...stack.resources, ...stack.dataSources])
        b.tfAddress: b,
    };
    for (final MapEntry(key: name, value: o) in stack.outputs.entries) {
      if (o.sensitive) continue;
      final reads = _sensitiveRead(stack, blocks, o.value);
      if (reads != null) yield SensitiveOutput(name: name, reads: reads);
    }
  }

  static String? _sensitiveRead(
    Stack stack,
    Map<String, Resource> blocks,
    TfArg<Object?> value,
  ) {
    switch (value) {
      case AttributeRef(:final Resource owner, :final attr)
          when _isSensitive(owner, attr):
        return '${owner.tfAddress}.$attr';
      case ResourceRef(:final Resource owner)
          // ignore: invalid_use_of_protected_member
          when owner.sensitiveFields.isNotEmpty:
        return owner.tfAddress;
      default:
        break;
    }
    for (final s in _strings(TfJsonEncoder.encodeArg(value))) {
      for (final name in templateVariableNames(s)) {
        if (stack.variables[name]?.sensitive ?? false) return 'var.$name';
      }
      for (final body in templateSequenceBodies(s)) {
        for (final m in _attributeReference.allMatches(body)) {
          final block = blocks[m.group(1)];
          if (block != null && _isSensitive(block, m.group(2)!)) {
            return '${m.group(1)}.${m.group(2)}';
          }
        }
      }
    }
    return null;
  }

  static final RegExp _attributeReference = RegExp(
    r'(?<![\w.\-])((?:data\.)?[A-Za-z][\w-]*\.[A-Za-z_][\w-]*)'
    r'(?:\[[^\]]*\])*\.([A-Za-z_][\w-]*)',
  );

  static bool _isSensitive(Resource block, String attr) =>
      // ignore: invalid_use_of_protected_member
      block.sensitiveFields.any((f) => f == attr || f.startsWith('$attr.'));

  static List<String> sensitiveLiteralFields(
    Map<String, TfArg<dynamic>?> argMap,
    Set<String> sensitiveFields,
  ) {
    final topLevel = <String>{};
    final nested = <String, List<List<String>>>{};
    for (final path in sensitiveFields) {
      final parts = path.split('.');
      if (parts.length == 1) {
        topLevel.add(parts.first);
      } else {
        nested.putIfAbsent(parts.first, () => []).add(parts.sublist(1));
      }
    }
    final out = <String>[];
    for (final MapEntry(key: k, value: v) in argMap.entries) {
      if (v == null) continue;
      if (topLevel.contains(k) && v is TfArgLiteral) {
        out.add(k);
        continue;
      }
      final paths = nested[k];
      if (paths != null) {
        _nestedLiterals(TfJsonEncoder.encodeArg(v), paths, k, out);
      }
    }
    return out;
  }

  static void _nestedLiterals(
    Object? value,
    List<List<String>> paths,
    String parentKey,
    List<String> out,
  ) {
    if (value is List) {
      for (final e in value) {
        _nestedLiterals(e, paths, parentKey, out);
      }
      return;
    }
    if (value is! Map) return;
    final leaves = <String>{};
    final byHead = <String, List<List<String>>>{};
    for (final path in paths) {
      if (path.isEmpty) continue;
      if (path.length == 1) {
        leaves.add(path.first);
      } else {
        byHead.putIfAbsent(path.first, () => []).add(path.sublist(1));
      }
    }
    final keys = [
      for (final leaf in leaves)
        if (leaf == '*') ...value.keys.cast<String>() else leaf,
    ];
    for (final leaf in keys) {
      if (!value.containsKey(leaf)) continue;
      final leafValue = value[leaf];
      if (leafValue == null) continue;
      if (leafValue is String && hasTemplateSequence(leafValue)) continue;
      final path = '$parentKey.$leaf';
      if (!out.contains(path)) out.add(path);
    }
    final any = byHead.remove('*');
    if (any != null) {
      for (final key in value.keys.cast<String>()) {
        _nestedLiterals(value[key], any, '$parentKey.$key', out);
      }
    }
    byHead.forEach((head, remaining) {
      if (value.containsKey(head)) {
        _nestedLiterals(value[head], remaining, '$parentKey.$head', out);
      }
    });
  }

  static Iterable<SynthIssue> _timeouts(Stack stack) sync* {
    for (final r in [...stack.resources, ...stack.dataSources]) {
      final timeouts = r.timeouts;
      if (timeouts == null) continue;
      for (final (operation, value) in timeouts.invalidOperations) {
        yield InvalidTimeout(
          address: r.tfAddress,
          operation: operation,
          value: value,
        );
      }
    }
  }

  static Iterable<SynthIssue> _lifecycles(Stack stack) sync* {
    for (final r in stack.resources) {
      final lc = r.lifecycle;
      if (lc == null) continue;
      for (final t in lc.replaceTriggeredBy ?? const <ReplaceTrigger>[]) {
        final trigger = TfJsonEncoder.replaceTriggerAddress(t);
        final kind = trigger.startsWith('data.')
            ? 'data source'
            : trigger.startsWith('module.')
            ? 'module output'
            : null;
        if (kind != null) {
          yield InvalidLifecycle(
            address: r.tfAddress,
            reason:
                'replaceTriggeredBy lists the $kind "$trigger"; Terraform '
                'only replaces on a change to a managed resource.',
          );
        }
      }
      if (lc.ignoreChanges case IgnoreAttributes(
        :final attributes,
      ) when attributes.contains('all')) {
        yield InvalidLifecycle(
          address: r.tfAddress,
          reason:
              "ignoreChanges: .of([... 'all' ...]) names an attribute "
              '"all"; ignore every attribute with `ignoreChanges: .all`.',
        );
      }
      for (final c in lc.conditions ?? const <LifecycleCondition>[]) {
        if (c.errorMessage.trim().isEmpty) {
          yield InvalidLifecycle(
            address: r.tfAddress,
            reason:
                'a ${c.post ? 'postcondition' : 'precondition'} has an empty '
                'error message; Terraform requires one.',
          );
        }
      }
    }
  }

  static Iterable<SynthIssue> _moved(Stack stack) sync* {
    final addresses = {for (final r in stack.resources) r.tfAddress};
    for (final m in stack.moved) {
      if (m.to.startsWith('module.') || addresses.contains(m.to)) continue;
      yield InvalidMoveTarget(from: m.from, to: m.to);
    }
  }

  static Iterable<SynthIssue> _dartDefineOutputs(Stack stack) sync* {
    for (final MapEntry(key: name, value: d)
        in stack.dartDefineOutputs.entries) {
      final entries = AppExportsEmitter.dartDefines(stack, d);
      if (entries.isEmpty) {
        yield InvalidDartDefineOutput(
          name: name,
          reason:
              'it carries no output. Register the outputs the client reads '
              "with addOutput, e.g. addOutput('api_url', service.uri).",
        );
      }
      final seen = <String>{};
      for (final e in entries) {
        if (e.problem case final problem?) {
          yield InvalidDartDefineOutput(name: name, reason: problem);
        } else if (!seen.add(e.name)) {
          yield InvalidDartDefineOutput(
            name: name,
            reason:
                'it carries the variable ${e.name} twice; list each output '
                'once and rename outputs that differ only in "-" / "_" or '
                'case.',
          );
        }
      }
    }
  }

  static Iterable<SynthIssue> _constants(Stack stack) sync* {
    for (final MapEntry(key: name, value: c) in stack.constants.entries) {
      if (c is! RefConstant<Object?>) continue;
      final problem = AppExportsEmitter.constantProblem(stack, c);
      if (problem != null) {
        yield UnresolvableConstant(name: name, reason: problem);
      }
    }
  }
}

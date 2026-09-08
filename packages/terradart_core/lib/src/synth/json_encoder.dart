import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/module_call.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/output_emitter.dart';
import 'package:terradart_core/src/synth/sensitive_literal_error.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:terradart_core/src/tf_template.dart';

/// Synth-time JSON encoder: builds the JSON structure for `main.tf.json`.
///
/// Each public static returns a JSON-serialisable Dart value (no
/// `TfArg` / `TfRef` instances escape — they're collapsed to strings or
/// scalars). The orchestrator in `stack_synth.dart` glues these together
/// into the top-level map.
class TfJsonEncoder {
  /// `>= 1.11.0` is the default required Terraform version because
  /// curated factories (notably Secret Manager's `secret_data_wo`) depend
  /// on Terraform 1.11+ write-only arguments. Override via
  /// `Stack.setRequiredVersion(...)` if your stack does not need them.
  static const String defaultRequiredVersion = '>= 1.11.0';

  /// The top-level `terraform { ... }` block: `required_version`,
  /// `required_providers`, optional `backend`.
  ///
  /// Validates provider coverage: every registered resource / data source
  /// must have a [StackProvider] whose `providerName` equals the resource
  /// type's provider prefix (the segment before the first `_`, e.g.
  /// `google_redis_instance` → `google`, `time_sleep` → `time`). An explicit
  /// [Resource.provider] meta-argument (e.g. `'google-beta'`), and every
  /// value of a [ModuleCall.providers] map, must also match a registered
  /// provider. Without this, Terraform silently falls back to an unpinned
  /// implied `hashicorp/<prefix>` provider, bypassing the version pin the
  /// concrete provider class promises.
  static Map<String, dynamic> terraformBlock(Stack stack) {
    // A root that only calls modules declares no provider of its own — the
    // child modules pin what they use — so there is nothing to require and
    // nothing for Terraform to imply. Any resource or data source of its own
    // brings the guard back.
    final modulesOnly = stack.modules.isNotEmpty &&
        stack.resources.isEmpty &&
        stack.dataSources.isEmpty;
    if (stack.providers.isEmpty && !modulesOnly) {
      throw StateError(
        'Stack has no providers registered. '
        'Pass at least one StackProvider in `Stack(providers: [...])` '
        'before calling synth().',
      );
    }

    validateProviders(stack);
    final registered = <String>{
      for (final p in stack.providers) providerReference(p),
    };
    final missingByPrefix = <String, List<String>>{};
    for (final r in [...stack.resources, ...stack.dataSources]) {
      // An explicit provider meta-argument REPLACES the implied prefix
      // provider (Terraform semantics) — google-beta wrappers share the
      // GA google_* type prefix, so requiring both would force beta-only
      // stacks to register a google provider they never use. `google.eu`
      // selects the registered provider carrying that alias.
      final explicit = r.provider;
      final needed = explicit ?? r.terraformType.split('_').first;
      if (!registered.contains(needed)) {
        missingByPrefix.putIfAbsent(needed, () => []).add(r.tfAddress);
      }
    }
    // `providers = { google = google.eu }` passes one of this Stack's
    // configurations into the child module; the value names it.
    for (final m in stack.modules) {
      for (final e in m.providers.entries) {
        if (registered.contains(e.value)) continue;
        missingByPrefix
            .putIfAbsent(e.value, () => [])
            .add('${m.tfAddress} (providers.${e.key})');
      }
    }
    if (missingByPrefix.isNotEmpty) {
      final detail = missingByPrefix.entries
          .map((e) => '"${e.key}" (required by ${e.value.join(', ')})')
          .join('; ');
      throw StateError(
        'Stack.providers declares no provider named $detail. Terraform '
        'would fall back to an unpinned implied provider for these '
        'resources. Add the matching StackProvider to '
        '`Stack(providers: [...])` — for a `name.alias` reference, one '
        "registered with `alias: '<alias>'`.",
      );
    }

    final requiredProviders = <String, dynamic>{
      for (final p in stack.providers)
        p.providerName: {
          'source': p.source,
          'version': p.versionConstraint,
        },
    };

    final out = <String, dynamic>{
      'required_version': stack.requiredVersion,
      if (requiredProviders.isNotEmpty) 'required_providers': requiredProviders,
    };

    final backend = stack.backend;
    if (backend != null) {
      out['backend'] = _encodeBackend(backend);
    }

    return out;
  }

  static Map<String, dynamic> _encodeBackend(StackBackend backend) {
    if (backend is GcsBackend) {
      return {
        'gcs': {
          'bucket': backend.bucket,
          if (backend.prefix != null) 'prefix': backend.prefix,
        },
      };
    }
    // Generic fallback: every StackBackend exposes `backendType` and
    // `toTfJson()`. This works for user-supplied backends from
    // provider-specific packages.
    return {backend.backendType: backend.toTfJson()};
  }

  /// The top-level `provider { ... }` value, or `null` when no block is
  /// needed.
  ///
  /// A provider name registered once, without an alias, keeps the map form
  /// (`"google": {"project": ...}`), omitted when it has no config args. A
  /// name with aliases takes the list form Terraform JSON uses for repeated
  /// provider blocks — one entry per registered configuration in
  /// registration order, the aliased ones carrying `"alias"`; a default
  /// configuration with no args is left out (Terraform supplies it).
  static Map<String, dynamic>? providerBlock(Stack stack) {
    validateProviders(stack);
    final byName = <String, List<StackProvider>>{};
    for (final p in stack.providers) {
      byName.putIfAbsent(p.providerName, () => []).add(p);
    }
    final entries = <String, dynamic>{};
    for (final e in byName.entries) {
      final configs = e.value;
      if (configs.every((p) => p.alias == null)) {
        // Validated above: exactly one default configuration.
        final args = configs.single.configArgs;
        if (args.isEmpty) continue;
        entries[e.key] = Map<String, dynamic>.from(args);
        continue;
      }
      entries[e.key] = [
        for (final p in configs)
          if (p.alias != null || p.configArgs.isNotEmpty)
            <String, dynamic>{
              ...p.configArgs,
              if (p.alias != null) 'alias': p.alias,
            },
      ];
    }
    if (entries.isEmpty) return null;
    return entries;
  }

  /// `google` or `google.eu`: the value a resource's `provider`
  /// meta-argument uses to select [p].
  static String providerReference(StackProvider p) =>
      p.alias == null ? p.providerName : '${p.providerName}.${p.alias}';

  static final RegExp _aliasPattern = RegExp(r'^[A-Za-z_][A-Za-z0-9_-]*$');

  /// Rejects a provider registration Terraform would: two default
  /// configurations of one name, a repeated alias, an alias that is not an
  /// identifier, or aliases of one name that disagree on `source` /
  /// `versionConstraint` (they share the `required_providers` entry).
  static void validateProviders(Stack stack) {
    final seen = <String>{};
    final firstOfName = <String, StackProvider>{};
    for (final p in stack.providers) {
      final alias = p.alias;
      if (alias != null && !_aliasPattern.hasMatch(alias)) {
        throw StateError(
          'Provider "${p.providerName}" has the alias "$alias", which is not '
          'a Terraform identifier (letters, digits, "_" and "-", not '
          'starting with a digit).',
        );
      }
      final ref = providerReference(p);
      if (!seen.add(ref)) {
        throw StateError(
          alias == null
              ? 'Provider "${p.providerName}" is registered twice without an '
                  'alias. Give every configuration after the default one an '
                  "`alias:` and select it with `provider: '${p.providerName}"
                  ".<alias>'` on the resource."
              : 'Provider alias "$ref" is registered twice.',
        );
      }
      final first = firstOfName.putIfAbsent(p.providerName, () => p);
      if (!identical(first, p) &&
          (first.source != p.source ||
              first.versionConstraint != p.versionConstraint)) {
        throw StateError(
          'Provider "${p.providerName}" is registered with different '
          'source / version constraints (${first.source} '
          '${first.versionConstraint} vs ${p.source} '
          '${p.versionConstraint}); every configuration of one name shares '
          'its required_providers entry.',
        );
      }
    }
  }

  /// The top-level `variable { ... }` value, or `null` when the stack
  /// declares none (Terraform rejects an empty `variable` block).
  ///
  /// Also validates that every `TfArg.variable` reference in the stack
  /// has a matching declaration — the counterpart to the provider
  /// coverage check in [terraformBlock]. Without it, a typo synthesises
  /// cleanly and then fails at `terraform plan` with "Reference to
  /// undeclared input variable", typically in CI rather than locally.
  static Map<String, dynamic>? variableBlock(Stack stack) {
    _validateVariableReferences(stack);
    if (stack.variables.isEmpty) return null;
    return {
      for (final e in stack.variables.entries) e.key: e.value.toTfJson(),
    };
  }

  static void _validateVariableReferences(Stack stack) {
    final declared = {
      ...stack.variables.keys,
      ...stack.externalVariables,
    };
    // name -> addresses that reference it, insertion-ordered so the
    // error message is stable across runs.
    final undeclared = <String, Set<String>>{};
    void scan(String address, Iterable<TfArg<dynamic>?> args) {
      for (final arg in args) {
        for (final name in _referencedVariableNames(arg)) {
          if (declared.contains(name)) continue;
          undeclared.putIfAbsent(name, () => <String>{}).add(address);
        }
      }
    }

    for (final r in [...stack.resources, ...stack.dataSources]) {
      scan(r.tfAddress, r.argMap.values);
    }
    for (final m in stack.modules) {
      scan(m.tfAddress, [...m.inputs.values, m.count, m.forEach]);
    }
    if (undeclared.isEmpty) return;

    final detail = undeclared.entries
        .map((e) => '"${e.key}" (referenced by ${e.value.join(', ')})')
        .join('; ');
    throw StateError(
      'Stack references undeclared Terraform variable(s): $detail. '
      "Declare each one with `addVariable('<name>', TfVariable(...))` "
      'in your Stack constructor, or drop the TfArg.variable reference. '
      'Terraform rejects a config that interpolates \${var.<name>} with '
      'no matching variable block.\n\n'
      'If the block lives in a hand-written file beside the generated '
      "main.tf.json, register it with `addExternalVariable('<name>')` "
      'instead — synth then accepts the reference and emits no block.',
    );
  }

  /// Every variable name reachable from [v], including references nested
  /// inside literal Maps and Lists (mirrors [_encodeLiteralValue]).
  static Iterable<String> _referencedVariableNames(Object? v) sync* {
    switch (v) {
      case TfArgVariable(:final name):
        yield name;
      case TfArgExpression(:final referencedVariables):
        yield* referencedVariables;
      case TfArgLiteral(:final value):
        yield* _referencedVariableNames(value);
      case List():
        for (final e in v) {
          yield* _referencedVariableNames(e);
        }
      case Map():
        for (final e in v.values) {
          yield* _referencedVariableNames(e);
        }
      default:
        break;
    }
  }

  /// Encode a single `TfArg` into a JSON-serialisable value.
  ///
  /// - `TfArgLiteral<T>` → the raw `T` value (recursively walked in
  ///   case the literal is a Map/List that itself contains `TfArg`s).
  /// - `TfArgRef<T>` → the `${...}` interpolation string.
  /// - `TfArgVariable<T>` → the `${var.<name>}` interpolation string.
  /// - `TfArgExpression<T>` → its template string, verbatim.
  static Object? encodeArg(TfArg<dynamic> arg) {
    final raw = arg.toTfJson();
    // Refs, variables and expressions produce final string forms (Terraform
    // templates). Only literals may still hold nested `TfArg` instances
    // inside Maps/Lists that need recursion.
    if (arg is TfArgRef || arg is TfArgVariable || arg is TfArgExpression) {
      return raw;
    }
    return _encodeLiteralValue(raw);
  }

  /// Walk a literal value, recursively encoding nested `TfArg` instances
  /// (so users can build mixed maps/lists of literals + refs).
  static dynamic _encodeLiteralValue(Object? v) {
    if (v == null) return null;
    if (v is TfArg<dynamic>) return encodeArg(v);
    if (v is List) return v.map(_encodeLiteralValue).toList();
    if (v is Map) {
      return {
        for (final e in v.entries)
          e.key.toString(): _encodeLiteralValue(e.value),
      };
    }
    return v; // primitive
  }

  /// Encode a full argMap; drops keys whose value is `null` (optional
  /// unset fields) or whose literal payload encodes to `null`.
  static Map<String, Object?> encodeArgMap(
    Map<String, TfArg<dynamic>?> argMap,
  ) {
    final out = <String, Object?>{};
    argMap.forEach((k, v) {
      if (v == null) return;
      final encoded = encodeArg(v);
      if (encoded == null) return; // skip optional unset fields
      out[k] = encoded;
    });
    return out;
  }

  /// For positions where Terraform expects a bare resource address (no
  /// `${...}` interpolation): `replace_triggered_by`, `depends_on`.
  /// Delegates to `TfRef.bareAddress`.
  static String encodeBareAddress(TfRef<dynamic> ref) => ref.bareAddress;

  /// Like [encodeArgMap] but masks literal values for sensitive fields.
  /// Refs in sensitive fields are passed through (Terraform sees only
  /// the interpolation, never a plaintext literal).
  ///
  /// Supports both top-level keys (`'secret_data'`) and dotted nested
  /// paths (`'customer_encryption.encryption_key'`) — the latter walks
  /// through `List<Map>` nested-block wrappings to reach the leaf.
  static Map<String, Object?> encodeArgMapWithSensitive({
    required Map<String, TfArg<dynamic>?> argMap,
    required Set<String> sensitiveFields,
    required String resourceAddress,
  }) {
    // Partition sensitive paths by top-level key.
    final topLevel = <String>{};
    final nested = <String, List<List<String>>>{};
    for (final path in sensitiveFields) {
      final parts = path.split('.');
      if (parts.length == 1) {
        topLevel.add(parts.first);
      } else {
        nested
            .putIfAbsent(parts.first, () => <List<String>>[])
            .add(parts.sublist(1));
      }
    }

    final out = <String, Object?>{};
    argMap.forEach((k, v) {
      if (v == null) return;
      if (topLevel.contains(k) && v is TfArgLiteral) {
        throw SensitiveLiteralError(
          resourceAddress: resourceAddress,
          fieldPath: k,
        );
      }
      final encoded = encodeArg(v);
      if (encoded == null) return;
      if (nested.containsKey(k)) {
        out[k] = _checkNestedPaths(
          encoded,
          nested[k]!,
          resourceAddress: resourceAddress,
          parentKey: k,
        );
      } else {
        out[k] = encoded;
      }
    });
    return out;
  }

  /// Walks the encoded structure checking the leaf of every path in
  /// [paths]. Each path is the remaining segment list (the top-level
  /// key has already been consumed by the caller).
  ///
  /// - `List`: applied to every element (handles `[{...}]` single-block
  ///   wrappings and unbounded `[...]` block lists alike).
  /// - `Map`: descends one segment per path; **throws** at literal leaves.
  /// - Other (primitive, or `${...}` ref string): returned unchanged.
  ///
  /// Leaves whose value is a Terraform template — it holds an unescaped
  /// `${ ... }` or `%{ ... }` sequence — are passed through: refs,
  /// variables and expressions are safe in sensitive positions, since the
  /// value is computed by Terraform rather than stored in the config. Plain
  /// string / int / bool literals at a sensitive leaf throw
  /// [SensitiveLiteralError] with the dotted `<parentKey>.<leaf>` path as
  /// `fieldPath`.
  static dynamic _checkNestedPaths(
    dynamic value,
    List<List<String>> paths, {
    required String resourceAddress,
    required String parentKey,
  }) {
    if (value is List) {
      return value
          .map(
            (e) => _checkNestedPaths(
              e,
              paths,
              resourceAddress: resourceAddress,
              parentKey: parentKey,
            ),
          )
          .toList();
    }
    if (value is Map) {
      final leavesToCheck = <String>{};
      final byHead = <String, List<List<String>>>{};
      for (final path in paths) {
        if (path.isEmpty) continue;
        if (path.length == 1) {
          leavesToCheck.add(path.first);
        } else {
          byHead
              .putIfAbsent(path.first, () => <List<String>>[])
              .add(path.sublist(1));
        }
      }

      for (final leaf in leavesToCheck) {
        if (!value.containsKey(leaf)) continue;
        final leafValue = value[leaf];
        if (leafValue is String && hasTemplateSequence(leafValue)) {
          // A template (ref, variable or expression) — safe, pass through.
          continue;
        }
        // Primitive literal at a sensitive leaf — throw.
        throw SensitiveLiteralError(
          resourceAddress: resourceAddress,
          fieldPath: '$parentKey.$leaf',
        );
      }
      final out = Map<String, dynamic>.from(value);
      byHead.forEach((head, remaining) {
        if (out.containsKey(head)) {
          out[head] = _checkNestedPaths(
            out[head],
            remaining,
            resourceAddress: resourceAddress,
            parentKey: '$parentKey.$head',
          );
        }
      });
      return out;
    }
    return value;
  }

  /// `lifecycle { ... }` nested block, or `null` when no fields are set.
  static Map<String, dynamic>? lifecycleBlock(LifecycleOptions opts) {
    final out = <String, dynamic>{};
    if (opts.createBeforeDestroy ?? false) out['create_before_destroy'] = true;
    if (opts.preventDestroy ?? false) out['prevent_destroy'] = true;
    final ignore = opts.ignoreChanges;
    if (ignore != null && ignore.isNotEmpty) {
      out['ignore_changes'] = List<String>.from(ignore);
    }
    final replace = opts.replaceTriggeredBy;
    if (replace != null && replace.isNotEmpty) {
      out['replace_triggered_by'] = replace.map(encodeBareAddress).toList();
    }
    return out.isEmpty ? null : out;
  }

  /// `depends_on = [...]` list of bare addresses, or `null` when empty.
  static List<String>? dependsOn(List<DependencyTarget> deps) {
    if (deps.isEmpty) return null;
    return deps.map((d) => d.bareAddress).toList();
  }

  /// JSON for one resource block: `argMap` + optional `depends_on` +
  /// optional `lifecycle`. Sensitive fields are masked per
  /// `Resource.sensitiveFields`.
  ///
  /// When [devModeInjectDeletionProtection] is `true` and the resource
  /// exposes `supportsDeletionProtection == true` and its `argMap` does
  /// not already contain `deletion_protection`, `false` is injected so
  /// dev stacks can be torn down without manual overrides.
  static Map<String, dynamic> resourceBlock(
    Resource r, {
    bool devModeInjectDeletionProtection = false,
  }) {
    // `@protected` on the Resource getters expresses subclass-only contract
    // intent; the synth pipeline is the privileged in-library consumer that
    // reads them. `ignore` is the standard escape hatch for this case.
    final argMap = devModeInjectDeletionProtection &&
            // ignore: invalid_use_of_protected_member
            r.supportsDeletionProtection &&
            !r.argMap.containsKey('deletion_protection')
        ? <String, TfArg<dynamic>?>{
            ...r.argMap,
            'deletion_protection': const TfArgLiteral<bool>(false),
          }
        : r.argMap;
    final out = encodeArgMapWithSensitive(
      argMap: argMap,
      // ignore: invalid_use_of_protected_member
      sensitiveFields: r.sensitiveFields,
      resourceAddress: r.tfAddress,
    );
    if (r.provider != null) {
      out['provider'] = r.provider;
    }
    final deps = r.dependsOn;
    if (deps != null) {
      final dep = dependsOn(deps);
      if (dep != null) out['depends_on'] = dep;
    }
    final lc = r.lifecycle;
    if (lc != null) {
      final life = lifecycleBlock(lc);
      if (life != null) out['lifecycle'] = life;
    }
    return out;
  }

  /// Top-level `resource { ... }` group, keyed by terraform type then
  /// local name. Returns `null` when the stack has no resources.
  static Map<String, dynamic>? resourcesGroup(Stack stack) {
    if (stack.resources.isEmpty) return null;
    final out = <String, Map<String, dynamic>>{};
    for (final r in stack.resources) {
      out.putIfAbsent(r.terraformType, () => {})[r.localName] = resourceBlock(
        r,
        devModeInjectDeletionProtection: stack.devMode,
      );
    }
    return out;
  }

  /// Top-level `data { ... }` group. A data source carries its `provider`
  /// meta-argument like a resource; it has no `lifecycle` / `depends_on` /
  /// sensitive masking at v0.0.x — Terraform rejects `lifecycle` on data
  /// blocks anyway.
  static Map<String, dynamic>? dataGroup(Stack stack) {
    if (stack.dataSources.isEmpty) return null;
    final out = <String, Map<String, dynamic>>{};
    for (final d in stack.dataSources) {
      final block = encodeArgMap(d.argMap);
      if (d.provider != null) {
        block['provider'] = d.provider;
      }
      out.putIfAbsent(d.terraformType, () => {})[d.localName] = block;
    }
    return out;
  }

  /// Top-level `module { ... }` group, keyed by the call's local name:
  /// `source` (and `version`) first, then the module's inputs, then the
  /// meta-arguments. Returns `null` when the stack registers no call.
  ///
  /// The module's own body is never read — a `module` block is a reference,
  /// and Terraform resolves [ModuleCall.source] relative to the directory
  /// the Stack synthesizes into.
  static Map<String, dynamic>? moduleGroup(Stack stack) {
    if (stack.modules.isEmpty) return null;
    final out = <String, dynamic>{};
    for (final m in stack.modules) {
      final block = <String, dynamic>{'source': m.source};
      if (m.version != null) block['version'] = m.version;
      block.addAll(encodeArgMap(m.inputs));
      if (m.providers.isNotEmpty) {
        block['providers'] = Map<String, String>.from(m.providers);
      }
      final count = m.count;
      if (count != null) block['count'] = encodeArg(count);
      final forEach = m.forEach;
      if (forEach != null) block['for_each'] = encodeArg(forEach);
      final deps = m.dependsOn;
      if (deps != null) {
        final dep = dependsOn(deps);
        if (dep != null) block['depends_on'] = dep;
      }
      out[m.localName] = block;
    }
    return out;
  }

  /// Top-level `moved` list — one `{"from": ..., "to": ...}` object per
  /// [Stack.addMoved] entry, in registration order — or `null` when the
  /// stack recorded none.
  ///
  /// Every `to` must name a resource registered on the stack (Terraform
  /// rejects a move whose target is not in the configuration) or an
  /// address inside a `module.` call, which the stack cannot see.
  static List<Map<String, String>>? movedBlock(Stack stack) {
    final moved = stack.moved;
    if (moved.isEmpty) return null;
    final addresses = {for (final r in stack.resources) r.tfAddress};
    for (final m in moved) {
      final to = m.to;
      if (to.startsWith('module.') || addresses.contains(to)) continue;
      throw StateError(
        'moved block "${m.from}" -> "$to": no resource "$to" is registered '
        'on this Stack. Terraform only moves state onto a resource the '
        'configuration declares — add the resource, or point the block at '
        'its address (`<type>.<localName>`).',
      );
    }
    return [for (final m in moved) m.toTfJson()];
  }

  /// Top-level `output { ... }` block built from Pass-2's
  /// [TerraformOutputSpec] list. Returns `null` for an empty list.
  static Map<String, dynamic>? outputBlock(List<TerraformOutputSpec> outs) {
    if (outs.isEmpty) return null;
    final out = <String, dynamic>{};
    for (final o in outs) {
      out[o.name] = {
        'value': o.value,
        if (o.sensitive) 'sensitive': true,
        if (o.description != null) 'description': o.description,
      };
    }
    return out;
  }
}

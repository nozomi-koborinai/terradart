import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/module_call.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/synth_issue.dart';
import 'package:terradart_core/src/tf_arg.dart';

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
  /// `Stack(requiredVersion: ...)` if your stack does not need them.
  static const String defaultRequiredVersion = '>= 1.11.0';

  /// The top-level `terraform { ... }` block: `required_version`,
  /// `required_providers`, optional `backend`.
  ///
  /// Assumes [Stack.validate] found no issue: provider coverage (every
  /// resource, data source and module call has its [StackProvider]) is a
  /// [MissingProvider] there, not a throw here.
  static Map<String, dynamic> terraformBlock(Stack stack) {
    final requiredProviders = <String, dynamic>{};
    for (final p in stack.providers) {
      final entry =
          requiredProviders.putIfAbsent(
                p.providerName,
                () => <String, dynamic>{
                  'source': p.source,
                  'version': p.versionConstraint,
                },
              )
              as Map<String, dynamic>;
      if (!stack.isConfigurationAlias(p)) continue;
      final aliases =
          entry.putIfAbsent('configuration_aliases', () => <String>[])
              as List<String>;
      aliases.add(providerReference(p));
    }

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
          if (backend.bucket != null) 'bucket': backend.bucket,
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
    final byName = <String, List<StackProvider>>{};
    for (final p in stack.providers) {
      // A configuration alias is declared on required_providers, not as a
      // provider block: the calling module passes the configuration. An
      // external configuration lives in a file beside main.tf.json.
      if (stack.isConfigurationAlias(p) || stack.isExternalProvider(p)) {
        continue;
      }
      byName.putIfAbsent(p.providerName, () => []).add(p);
    }
    final entries = <String, dynamic>{};
    for (final e in byName.entries) {
      final configs = e.value;
      if (configs.every((p) => p.alias == null)) {
        // Stack.validate: exactly one default configuration.
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

  /// The block's `provider` meta-argument: its [Resource.provider], else its
  /// [Resource.defaultProvider] when that is not the type's implied prefix
  /// provider, else `null`.
  static String? blockProvider(Resource r) {
    final explicit = r.provider;
    if (explicit != null) return providerReference(explicit);
    final fallback = r.defaultProvider;
    return fallback == r.terraformType.split('_').first ? null : fallback;
  }

  /// The top-level `variable { ... }` value, or `null` when the stack
  /// declares none (Terraform rejects an empty `variable` block).
  static Map<String, dynamic>? variableBlock(Stack stack) {
    if (stack.variables.isEmpty) return null;
    return {for (final e in stack.variables.entries) e.key: e.value.toTfJson()};
  }

  /// Encode a single `TfArg` into a JSON-serialisable value.
  ///
  /// - `TfArgLiteral<T>` → the raw `T` value (recursively walked in
  ///   case the literal is a Map/List that itself contains `TfArg`s).
  /// - `TfRef<T>` → the `${...}` interpolation string.
  /// - `TfArgVariable<T>` → the `${var.<name>}` interpolation string.
  /// - `TfArgExpression<T>` → its template string, verbatim.
  static Object? encodeArg(TfArg<dynamic> arg) {
    final raw = arg.toTfJson();
    // Refs, variables and expressions produce final string forms (Terraform
    // templates). Only literals may still hold nested `TfArg` instances
    // inside Maps/Lists that need recursion.
    if (arg is TfRef || arg is TfArgVariable || arg is TfArgExpression) {
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

  /// The bare address `replace_triggered_by` lists for [trigger]: a
  /// resource's address or an attribute reference's.
  static String replaceTriggerAddress(ReplaceTrigger trigger) =>
      switch (trigger) {
        TfRef(:final bareAddress) => bareAddress,
        TfAddressed(:final tfAddress) => tfAddress,
        _ => throw ArgumentError.value(
          trigger,
          'trigger',
          'is neither a resource nor an attribute reference',
        ),
      };

  /// `lifecycle { ... }` nested block, or `null` when no fields are set.
  static Map<String, dynamic>? lifecycleBlock(LifecycleOptions opts) {
    final out = <String, dynamic>{};
    if (opts.createBeforeDestroy case final v?) {
      out['create_before_destroy'] = v;
    }
    if (opts.preventDestroy case final v?) out['prevent_destroy'] = v;
    switch (opts.ignoreChanges) {
      case IgnoreAllChanges():
        out['ignore_changes'] = 'all';
      case IgnoreAttributes(:final attributes) when attributes.isNotEmpty:
        out['ignore_changes'] = List<String>.from(attributes);
      case IgnoreAttributes() || null:
        break;
    }
    final replace = opts.replaceTriggeredBy;
    if (replace != null && replace.isNotEmpty) {
      out['replace_triggered_by'] = replace.map(replaceTriggerAddress).toList();
    }
    for (final post in [false, true]) {
      final blocks = [
        for (final c in opts.conditions ?? const <LifecycleCondition>[])
          if (c.post == post)
            {
              'condition': c.condition.toTfJson(),
              'error_message': c.errorMessage,
            },
      ];
      if (blocks.isNotEmpty) {
        out[post ? 'postcondition' : 'precondition'] = blocks;
      }
    }
    return out.isEmpty ? null : out;
  }

  /// `depends_on = [...]` list of bare addresses, or `null` when empty.
  static List<String>? dependsOn(List<TfAddressed> deps) {
    if (deps.isEmpty) return null;
    return deps.map((d) => d.tfAddress).toList();
  }

  /// JSON for one resource block: `argMap` + optional `depends_on` +
  /// optional `lifecycle` + optional `timeouts`.
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
    final argMap =
        devModeInjectDeletionProtection &&
            // ignore: invalid_use_of_protected_member
            r.supportsDeletionProtection &&
            !r.argMap.containsKey('deletion_protection')
        ? <String, TfArg<dynamic>?>{
            ...r.argMap,
            'deletion_protection': const TfArgLiteral<bool>(false),
          }
        : r.argMap;
    final out = encodeArgMap(argMap);
    final provider = blockProvider(r);
    if (provider != null) out['provider'] = provider;
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
    final timeouts = r.timeouts?.toTfJson();
    if (timeouts != null) out['timeouts'] = timeouts;
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
  /// and `timeouts` meta-arguments like a resource; it has no `lifecycle` /
  /// `depends_on` / sensitive masking at v0.0.x — Terraform rejects
  /// `lifecycle` on data blocks anyway.
  static Map<String, dynamic>? dataGroup(Stack stack) {
    if (stack.dataSources.isEmpty) return null;
    final out = <String, Map<String, dynamic>>{};
    for (final d in stack.dataSources) {
      final block = encodeArgMap(d.argMap);
      final provider = blockProvider(d);
      if (provider != null) block['provider'] = provider;
      final timeouts = d.timeouts?.toTfJson();
      if (timeouts != null) block['timeouts'] = timeouts;
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
        block['providers'] = {
          for (final MapEntry(:key, :value) in m.providers.entries)
            key: providerReference(value),
        };
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
  static List<Map<String, String>>? movedBlock(Stack stack) {
    final moved = stack.moved;
    if (moved.isEmpty) return null;
    return [for (final m in moved) m.toTfJson()];
  }
}

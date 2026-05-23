import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/output_emitter.dart';
import 'package:terradart_core/src/synth/sensitive_literal_error.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';

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
  static Map<String, dynamic> terraformBlock(Stack stack) {
    if (stack.providers.isEmpty) {
      throw StateError(
        'Stack has no providers registered. '
        'Pass at least one StackProvider in `Stack(providers: [...])` '
        'before calling synth().',
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
      'required_providers': requiredProviders,
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

  /// The top-level `provider { ... }` value, or `null` when none of the
  /// registered providers carry config args (no block needed).
  static Map<String, dynamic>? providerBlock(Stack stack) {
    final entries = <String, dynamic>{};
    for (final p in stack.providers) {
      if (p.configArgs.isEmpty) continue;
      entries[p.providerName] = Map<String, dynamic>.from(p.configArgs);
    }
    if (entries.isEmpty) return null;
    return entries;
  }

  /// Encode a single `TfArg` into a JSON-serialisable value.
  ///
  /// - `TfArgLiteral<T>` → the raw `T` value (recursively walked in
  ///   case the literal is a Map/List that itself contains `TfArg`s).
  /// - `TfArgRef<T>` → the `${...}` interpolation string.
  /// - `TfArgVariable<T>` → the `${var.<name>}` interpolation string.
  static Object? encodeArg(TfArg<dynamic> arg) {
    final raw = arg.toTfJson();
    // Both refs and variables produce final string forms (Terraform
    // interpolations). Only literals may still hold nested `TfArg`
    // instances inside Maps/Lists that need recursion.
    if (arg is TfArgRef || arg is TfArgVariable) {
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
  /// Leaves whose value already looks like a Terraform interpolation
  /// (`${...}`) are passed through — refs and variables are safe in
  /// sensitive positions. Plain string / int / bool literals at a
  /// sensitive leaf throw [SensitiveLiteralError] with the dotted
  /// `<parentKey>.<leaf>` path as `fieldPath`.
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
        if (leafValue is String && leafValue.startsWith(r'${')) {
          // Interpolation (ref or variable) — safe, pass through.
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

  /// Top-level `data { ... }` group. Data sources have no
  /// `lifecycle` / `depends_on` / sensitive masking at v0.0.x — Terraform
  /// rejects those on data blocks anyway.
  static Map<String, dynamic>? dataGroup(Stack stack) {
    if (stack.dataSources.isEmpty) return null;
    final out = <String, Map<String, dynamic>>{};
    for (final d in stack.dataSources) {
      out.putIfAbsent(d.terraformType, () => {})[d.localName] =
          encodeArgMap(d.argMap);
    }
    return out;
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

import 'package:terradart_core/src/backends.dart';
import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/output_emitter.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:terradart_core/src/tf_ref.dart';

/// Synth-time JSON encoder: builds the JSON structure for `main.tf.json`.
///
/// Each public static returns a JSON-serialisable Dart value (no
/// `TfArg` / `TfRef` instances escape — they're collapsed to strings or
/// scalars). The orchestrator in `stack_synth.dart` glues these together
/// into the top-level map.
class JsonEncoder {
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
  static dynamic encodeArg(TfArg<dynamic> arg) {
    final raw = arg.toTfJson();
    // Refs already produced their final string form; literals may still
    // hold nested `TfArg` instances inside Maps/Lists that need recursion.
    return arg is TfArgRef ? raw : _encodeLiteralValue(raw);
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
  static Map<String, dynamic> encodeArgMap(
    Map<String, TfArg<dynamic>?> argMap,
  ) {
    final out = <String, dynamic>{};
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
  static Map<String, dynamic> encodeArgMapWithSensitive({
    required Map<String, TfArg<dynamic>?> argMap,
    required Set<String> sensitiveFields,
  }) {
    final out = <String, dynamic>{};
    argMap.forEach((k, v) {
      if (v == null) return;
      final encoded = encodeArg(v);
      if (encoded == null) return;
      if (sensitiveFields.contains(k) && v is TfArgLiteral) {
        out[k] = '';
      } else {
        out[k] = encoded;
      }
    });
    return out;
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
  /// `Resource.$sensitiveFields`.
  static Map<String, dynamic> resourceBlock(Resource<dynamic> r) {
    final out = encodeArgMapWithSensitive(
      argMap: r.argMap,
      sensitiveFields: r.$sensitiveFields,
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
      out.putIfAbsent(r.terraformType, () => {})[r.localName] =
          resourceBlock(r);
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

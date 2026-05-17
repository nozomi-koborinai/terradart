import 'lifecycle.dart';
import 'tf_arg.dart';
import 'tf_ref.dart';

/// Whether a Stack entry is a `resource` block or a `data` block in
/// Terraform JSON.
enum ResourceKind {
  resource,
  data,
}

/// Base of every user-instantiable Terraform resource.
///
/// Plan 5.X (v0.5.0-dev) removed the `<S>` generic and the `schema` field —
/// the schemantic-backed dead chain that motivated them is fully retired.
/// `Resource` is now flat: factories pass `argMap` and `$sensitiveFields`,
/// synth consumes both directly.
abstract class Resource implements TfAddressed {
  Resource({
    required this.terraformType,
    required this.localName,
    required this.argMap,
    this.lifecycle,
    this.dependsOn,
    this.provider,
  });

  /// Terraform resource type, e.g. `google_pubsub_topic`.
  final String terraformType;

  /// User-supplied local name within a Stack.
  final String localName;

  /// Argument-name → TfArg map. **Keys are snake_case** (Terraform JSON name).
  /// Synth emits these keys directly; the factory is responsible for the
  /// camelCase → snake_case translation at construction time.
  final Map<String, TfArg<dynamic>?> argMap;

  /// Optional `lifecycle { ... }` block.
  final LifecycleOptions? lifecycle;

  /// Optional `depends_on = [...]`. Each entry is a `DependencyTarget` —
  /// either a wholesale resource (rendered as bare address) or an explicit
  /// `TfRef` (rendered via `bareAddress`).
  final List<DependencyTarget>? dependsOn;

  /// Optional explicit provider binding. Only the type is referenced here;
  /// the concrete `Provider` class lives in `terradart_google` (provider
  /// classes are defined per-provider, outside the core runtime).
  final ProviderBinding? provider;

  @override
  String get tfAddress => '$terraformType.$localName';

  /// Always `ResourceKind.resource`. Overridden by `Data`.
  ResourceKind get kind => ResourceKind.resource;

  /// Field names that are `@Sensitive` per the IR-derived per-resource
  /// constant. Curated factories override with a baked-in
  /// `static const Set<String>` (file-private in v0.5+).
  Set<String> get $sensitiveFields;
}

/// Lightweight type stand-in for the provider binding so the core runtime
/// stays independent of provider-specific packages. Concrete `Provider`
/// classes (e.g. `GoogleProvider` in `terradart_google`) implement this.
abstract interface class ProviderBinding {
  /// Provider name, e.g. `'google'`.
  String get providerName;

  /// Provider alias for multi-provider scenarios. Null in v0.0.x.
  String? get providerAlias;
}

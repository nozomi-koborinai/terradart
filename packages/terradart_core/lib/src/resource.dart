import 'package:meta/meta.dart';

import 'lifecycle.dart';
import 'stack.dart';
import 'tf_arg.dart';
import 'tf_timeouts.dart';

/// Whether a Stack entry is a `resource` block or a `data` block in
/// Terraform JSON.
enum ResourceKind { resource, data }

/// Base of every user-instantiable Terraform resource.
///
/// Plan 5.X (v0.5.0-dev) removed the `<S>` generic and the `schema` field —
/// the schemantic-backed dead chain that motivated them is fully retired.
/// `Resource` is now flat: factories pass `argMap` and `sensitiveFields`,
/// synth consumes both directly.
abstract base class Resource implements TfAddressed, ReplaceTrigger {
  Resource(
    this.localName, {
    required this.terraformType,
    required this.argMap,
    this.lifecycle,
    this.dependsOn,
    this.provider,
    this.timeouts,
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

  /// Optional `timeouts { ... }` block: how long Terraform waits for each
  /// operation. Provider-neutral like [lifecycle] — synth copies the
  /// duration strings verbatim, and `terraform validate` decides whether
  /// this resource's schema declares the operations set here.
  final TfTimeouts? timeouts;

  /// Optional `depends_on = [...]`: the resources, data sources and module
  /// calls this block waits for, e.g. `dependsOn: [api, ...apiDeps]`.
  /// Terraform takes whole blocks only, so an entry is never an attribute.
  final List<TfAddressed>? dependsOn;

  /// Optional Terraform `provider` meta-argument: the provider configuration
  /// this block uses, e.g. the aliased `GoogleProvider(alias: 'eu')` the
  /// Stack registered with `addProvider`.
  ///
  /// When set, synth emits `"provider": "<name>[.<alias>]"` on the block and
  /// requires that same instance to be registered on the Stack. Omit for the
  /// default configuration of [defaultProvider]. Every curated factory
  /// exposes it as its `provider:` constructor parameter.
  final StackProvider? provider;

  /// The provider name a block without [provider] uses: by default the
  /// prefix of [terraformType] (`google` for `google_pubsub_topic`).
  ///
  /// A wrapper whose type belongs to a provider with another name overrides
  /// it — the `terradart_google_beta` factories return `'google-beta'` — and
  /// synth then emits it as the block's `provider`.
  String get defaultProvider => terraformType.split('_').first;

  /// Terraform address `<terraformType>.<localName>`, e.g.
  /// `google_pubsub_topic.orders`.
  @override
  String get tfAddress => '$terraformType.$localName';

  /// Always `ResourceKind.resource`. Overridden by `Data`.
  ResourceKind get kind => ResourceKind.resource;

  /// Field names that are `@Sensitive` per the IR-derived per-resource
  /// constant. Curated factories override with a baked-in
  /// `static const Set<String>` (file-private in v0.5+).
  ///
  /// `@protected` (v0.11.0, ADR-0016): the getter is part of the
  /// `Resource` ↔ synth contract and is only meant to be implemented /
  /// invoked by subclasses (the curated wrappers) and the synth pipeline
  /// inside `terradart_core`. External call sites should not reach into
  /// this member.
  @protected
  Set<String> get sensitiveFields;

  /// Capability flag: true when this resource's underlying Terraform
  /// schema has a `deletion_protection` boolean attribute that the
  /// synth-time devMode flow can flip to `false`. Defaults to false;
  /// the codegen emitter overrides this to `true` for wrappers whose
  /// schema includes the attribute.
  ///
  /// `@protected` (v0.11.0, ADR-0016): same rationale as
  /// [sensitiveFields] — subclass / synth contract member, not part of
  /// the user-facing wrapper API.
  @protected
  bool get supportsDeletionProtection => false;
}

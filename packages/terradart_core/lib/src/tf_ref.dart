import 'package:meta/meta.dart';

import 'placeholder.dart';

/// Anything that exposes a Terraform address, e.g. `google_pubsub_topic.orders`.
///
/// Both `Resource<S>` and `Data<S>` implement this, allowing `TfRef`
/// to remain ignorant of the resource hierarchy.
abstract interface class TfAddressed {
  String get tfAddress;
}

/// Structural interface used by `ResourceRef<S>`. `Resource<S>` (defined in
/// `resource.dart`) implements this implicitly via its concrete `tfAddress`
/// and `schema` members. We declare it here to avoid a circular import
/// between `tf_ref.dart` and `resource.dart`.
abstract interface class SchemaCarrier<S> implements TfAddressed {
  S get schema;
}

/// A Terraform-side reference (attribute, data source, var, local, ...).
///
/// `T` is the static Dart type the reference flows into. v0.0.x ships
/// `AttributeRef` (resource attribute), `DataRef` (data source attribute),
/// and `ResourceRef` (whole-resource reference for `replace_triggered_by`
/// / `for_each` positions). Variable / local refs are reserved for future.
sealed class TfRef<T> {
  const TfRef();

  /// Reference to an attribute of a `Resource<S>`.
  static TfRef<T> attribute<T>(TfAddressed owner, String attr) =>
      AttributeRef<T>._(owner, attr);

  /// Reference to an attribute of a `Data<S>`.
  ///
  /// `owner.tfAddress` MUST already start with `data.` — the caller
  /// (typically `Data.tfAddress`) is responsible for that prefix.
  static TfRef<T> data<T>(TfAddressed owner, String attr) =>
      DataRef<T>._(owner, attr);

  /// Whole-resource reference (no attribute suffix). Used in reference-only
  /// positions like `replace_triggered_by = [<address>]` and
  /// `for_each = <resource>.iterable`. The `placeholder` is the owner's
  /// schema instance, which keeps schemantic construction type-correct
  /// when the ref participates in `argMap`.
  ///
  /// `S` is the schemantic concrete type carried by the resource.
  /// Accepts any `SchemaCarrier<S>`; `Resource<S>` (and therefore
  /// `Data<S>`) satisfies the interface structurally.
  static TfRef<S> resource<S>(SchemaCarrier<S> owner) =>
      ResourceRef<S>._(owner);

  /// Terraform interpolation form: `${address.attr}`.
  /// Used in resource argument JSON values.
  String get interpolation;

  /// Bare address form: `address.attr` (no `${...}`).
  /// Used in `depends_on`, `replace_triggered_by`, `for_each` positions
  /// where Terraform expects a raw reference.
  String get bareAddress;

  /// Placeholder value for schemantic constructor calls. See `placeholder.dart`.
  T get placeholder;
}

/// Public for sealed pattern matching, but constructor is private — only
/// `TfRef.attribute()` may construct instances.
@immutable
final class AttributeRef<T> extends TfRef<T> {
  const AttributeRef._(this.owner, this.attr);

  final TfAddressed owner;
  final String attr;

  @override
  String get interpolation => '\${${owner.tfAddress}.$attr}';

  @override
  String get bareAddress => '${owner.tfAddress}.$attr';

  @override
  T get placeholder => placeholderFor<T>();
}

/// Public for sealed pattern matching, but constructor is private — only
/// `TfRef.data()` may construct instances.
@immutable
final class DataRef<T> extends TfRef<T> {
  const DataRef._(this.owner, this.attr);

  final TfAddressed owner;
  final String attr;

  @override
  String get interpolation => '\${${owner.tfAddress}.$attr}';

  @override
  String get bareAddress => '${owner.tfAddress}.$attr';

  @override
  T get placeholder => placeholderFor<T>();
}

/// Public for sealed pattern matching, but constructor is private — only
/// `TfRef.resource()` may construct instances.
///
/// `ResourceRef<S>` represents the whole resource (no attribute suffix).
/// Used in reference-only positions:
///   - `replace_triggered_by = [<address>]`
///   - `for_each = <resource>.iterable` (when sourcing from a resource set)
///
/// The `placeholder` returns the owner resource's schema instance. This
/// matters when a `ResourceRef<S>` participates indirectly in another
/// resource's `argMap` (rare, but supported uniformly).
@immutable
final class ResourceRef<S> extends TfRef<S> {
  const ResourceRef._(this.owner);

  final SchemaCarrier<S> owner;

  @override
  String get bareAddress => owner.tfAddress;

  /// Wrapped form for non-reference-only positions. Reference-only callers
  /// (synth's `replace_triggered_by` / `for_each` emitters) use
  /// `bareAddress` directly.
  @override
  String get interpolation => '\${$bareAddress}';

  @override
  S get placeholder => owner.schema;
}

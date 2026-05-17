import 'package:meta/meta.dart';

/// Anything that exposes a Terraform address, e.g. `google_pubsub_topic.orders`.
///
/// Both `Resource` and `Data` implement this, allowing `TfRef` to remain
/// ignorant of the resource hierarchy.
abstract interface class TfAddressed {
  String get tfAddress;
}

/// A Terraform-side reference (attribute, data source, var, local, ...).
///
/// `T` is the static Dart type the reference flows into. v0.0.x ships
/// `AttributeRef` (resource attribute), `DataRef` (data source attribute),
/// and `ResourceRef` (whole-resource reference for `replace_triggered_by`
/// / `for_each` positions). Variable / local refs are reserved for future.
///
/// Plan 5.X (v0.5.0-dev): the `placeholder` getter is gone. `ResourceRef`
/// no longer carries a schemantic-instance type — it pins to `Object?`
/// since the slot never escapes.
sealed class TfRef<T> {
  const TfRef();

  /// Reference to an attribute of a `Resource`.
  static TfRef<T> attribute<T>(TfAddressed owner, String attr) =>
      AttributeRef<T>._(owner, attr);

  /// Reference to an attribute of a `Data`.
  ///
  /// `owner.tfAddress` MUST already start with `data.` — the caller
  /// (typically `Data.tfAddress`) is responsible for that prefix.
  static TfRef<T> data<T>(TfAddressed owner, String attr) =>
      DataRef<T>._(owner, attr);

  /// Whole-resource reference (no attribute suffix). Used in reference-only
  /// positions like `replace_triggered_by = [<address>]` and
  /// `for_each = <resource>.iterable`.
  ///
  /// Pinned to `Object?` because the T slot of a whole-resource ref never
  /// escapes the synth pipeline.
  static TfRef<Object?> resource(TfAddressed owner) => ResourceRef._(owner);

  /// Terraform interpolation form: `${address.attr}`.
  /// Used in resource argument JSON values.
  String get interpolation;

  /// Bare address form: `address.attr` (no `${...}`).
  /// Used in `depends_on`, `replace_triggered_by`, `for_each` positions
  /// where Terraform expects a raw reference.
  String get bareAddress;
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
}

/// Public for sealed pattern matching, but constructor is private — only
/// `TfRef.resource()` may construct instances.
///
/// `ResourceRef` represents the whole resource (no attribute suffix).
/// Used in reference-only positions:
///   - `replace_triggered_by = [<address>]`
///   - `for_each = <resource>.iterable` (when sourcing from a resource set)
@immutable
final class ResourceRef extends TfRef<Object?> {
  const ResourceRef._(this.owner);

  final TfAddressed owner;

  @override
  String get bareAddress => owner.tfAddress;

  /// Wrapped form for non-reference-only positions. Reference-only callers
  /// (synth's `replace_triggered_by` / `for_each` emitters) use
  /// `bareAddress` directly.
  @override
  String get interpolation => '\${$bareAddress}';
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_observability_trace_scope`.
const Set<String> _googleObservabilityTraceScopeSensitive = <String>{};

/// Factory wrapper for `google_observability_trace_scope`.
///
/// A trace scope is a collection of resources whose traces are queried together
final class GoogleObservabilityTraceScope extends Resource {
  static const String tfType = 'google_observability_trace_scope';

  GoogleObservabilityTraceScope({
    required super.localName,
    required TfArg<String> traceScopeId,
    required TfArg<String> location,
    required TfArg<List<String>> resourceNames,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'trace_scope_id': traceScopeId,
           'location': location,
           'resource_names': resourceNames,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleObservabilityTraceScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityTraceScope>`.
  RefTo<GoogleObservabilityTraceScope> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `resource_names` attribute.
  TfRef<List<String>> get resourceNamesRef =>
      TfRef.attribute<List<String>>(this, 'resource_names');

  /// Reference to `trace_scope_id` attribute.
  TfRef<String> get traceScopeIdRef =>
      TfRef.attribute<String>(this, 'trace_scope_id');
}

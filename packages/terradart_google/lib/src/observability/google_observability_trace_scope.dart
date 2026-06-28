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
  }) : super(
         terraformType: tfType,
         argMap: {
           'trace_scope_id': traceScopeId,
           'location': location,
           'resource_names': resourceNames,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleObservabilityTraceScopeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

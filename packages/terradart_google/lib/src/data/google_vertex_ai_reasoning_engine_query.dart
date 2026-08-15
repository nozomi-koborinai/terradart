// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_reasoning_engine_query`.
const Set<String> _googleVertexAiReasoningEngineQuerySensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_reasoning_engine_query`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVertexAiReasoningEngineQuery extends Data {
  static const String tfType = 'google_vertex_ai_reasoning_engine_query';

  DataGoogleVertexAiReasoningEngineQuery({
    required super.localName,
    TfArg<String>? classMethod,
    TfArg<String>? input,
    TfArg<String>? project,
    required TfArg<String> reasoningEngineId,
    required TfArg<String> region,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (classMethod != null) 'class_method': classMethod,
           if (input != null) 'input': input,
           if (project != null) 'project': project,
           'reasoning_engine_id': reasoningEngineId,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiReasoningEngineQuerySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `output` attribute.
  TfRef<String> get output => TfRef.attribute<String>(this, 'output');
}

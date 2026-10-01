// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../vertex_ai/google_vertex_ai_reasoning_engine_iam_policy.dart';

/// Sensitive field paths for `google_vertex_ai_reasoning_engine_iam_policy`.
const Set<String> _googleVertexAiReasoningEngineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_reasoning_engine_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVertexAiReasoningEngineIamPolicy extends Data {
  static const String tfType = 'google_vertex_ai_reasoning_engine_iam_policy';

  DataGoogleVertexAiReasoningEngineIamPolicy(
    super.localName, {
    TfArg<String>? project,
    required TfArg<String> reasoningEngine,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project': ?project,
           'reasoning_engine': reasoningEngine,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiReasoningEngineIamPolicySensitive;

  /// A reference to the `google_vertex_ai_reasoning_engine_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleVertexAiReasoningEngineIamPolicy>`.
  RefTo<GoogleVertexAiReasoningEngineIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reasoning_engine` attribute.
  TfRef<String> get reasoningEngine =>
      TfRef.attribute<String>(this, 'reasoning_engine');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

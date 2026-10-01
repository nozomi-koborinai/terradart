// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../vertex_ai/google_vertex_ai_reasoning_engine.dart'
    show GoogleVertexAiReasoningEngine;

/// Sensitive field paths for `google_vertex_ai_reasoning_engine_iam_member`.
const Set<String> _googleVertexAiReasoningEngineIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_vertex_ai_reasoning_engine_iam_member` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineIamMemberCondition {
  const VertexAiReasoningEngineIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_reasoning_engine_iam_member`.
final class GoogleVertexAiReasoningEngineIamMember extends Resource {
  static const String tfType = 'google_vertex_ai_reasoning_engine_iam_member';

  GoogleVertexAiReasoningEngineIamMember({
    required super.localName,
    required RefTo<GoogleVertexAiReasoningEngine> reasoningEngine,
    required TfArg<String> role,
    required IamPrincipal member,
    VertexAiReasoningEngineIamMemberCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'reasoning_engine': reasoningEngine.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?(region ?? reasoningEngine.alsoAs('region')),
           'project': ?(project ?? reasoningEngine.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiReasoningEngineIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiReasoningEngineIamMember>`.
  RefTo<GoogleVertexAiReasoningEngineIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `reasoning_engine` attribute.
  TfRef<String> get reasoningEngineRef =>
      TfRef.attribute<String>(this, 'reasoning_engine');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}

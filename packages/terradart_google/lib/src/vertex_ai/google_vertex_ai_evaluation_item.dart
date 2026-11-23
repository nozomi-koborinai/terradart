// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_evaluation_item`.
const Set<String> _googleVertexAiEvaluationItemSensitive = <String>{};

/// Vertex Ai Evaluation Item enum for `evaluation_item_type`.
extension type const VertexAiEvaluationItemType._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiEvaluationItemType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiEvaluationItemType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiEvaluationItemType.arg(TfArg<String> arg) : this._(arg);

  static const request = VertexAiEvaluationItemType._(TfArgLiteral('REQUEST'));
  static const result = VertexAiEvaluationItemType._(TfArgLiteral('RESULT'));

  static const List<VertexAiEvaluationItemType> values = [request, result];
}

/// Exactly one of `evaluation_request`, `gcs_uri` on `google_vertex_ai_evaluation_item`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.evaluationRequest(...)`.
sealed class VertexAiEvaluationItemSource {
  const VertexAiEvaluationItemSource();

  /// Sets `evaluation_request`.
  const factory VertexAiEvaluationItemSource.evaluationRequest(
    VertexAiEvaluationItemEvaluationRequest evaluationRequest,
  ) = VertexAiEvaluationItemSourceEvaluationRequest;

  /// Sets `gcs_uri`.
  const factory VertexAiEvaluationItemSource.gcsUri(TfArg<String> gcsUri) =
      VertexAiEvaluationItemSourceGcsUri;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VertexAiEvaluationItemSource.evaluationRequest] choice: sets `evaluation_request`.
final class VertexAiEvaluationItemSourceEvaluationRequest
    extends VertexAiEvaluationItemSource {
  const VertexAiEvaluationItemSourceEvaluationRequest(this.evaluationRequest);

  final VertexAiEvaluationItemEvaluationRequest evaluationRequest;

  @internal
  @override
  String get blockKey => 'evaluation_request';

  @internal
  @override
  Map<String, Object?> encode() => {
    'evaluation_request': evaluationRequest.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'evaluation_request': TfArg.literal(evaluationRequest.encode()),
  };
}

/// The [VertexAiEvaluationItemSource.gcsUri] choice: sets `gcs_uri`.
final class VertexAiEvaluationItemSourceGcsUri
    extends VertexAiEvaluationItemSource {
  const VertexAiEvaluationItemSourceGcsUri(this.gcsUri);

  final TfArg<String> gcsUri;

  @internal
  @override
  String get blockKey => 'gcs_uri';

  @internal
  @override
  Map<String, Object?> encode() => {'gcs_uri': gcsUri.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'gcs_uri': gcsUri};
}

/// Typed helper for the `evaluation_request` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemEvaluationRequest {
  const VertexAiEvaluationItemEvaluationRequest({
    this.candidateResponses,
    this.goldenResponse,
    this.prompt,
    this.rubrics,
  });

  final List<VertexAiEvaluationItemCandidateResponses>? candidateResponses;

  final VertexAiEvaluationItemGoldenResponse? goldenResponse;

  final VertexAiEvaluationItemPrompt? prompt;

  final List<VertexAiEvaluationItemRubrics>? rubrics;

  @internal
  Map<String, Object?> encode() => {
    if (candidateResponses != null)
      'candidate_responses': [for (final e in candidateResponses!) e.encode()],
    'golden_response': ?goldenResponse?.encode(),
    'prompt': ?prompt?.encode(),
    if (rubrics != null) 'rubrics': [for (final e in rubrics!) e.encode()],
  };
}

/// Typed helper for the `evaluation_request.candidate_responses` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemCandidateResponses {
  const VertexAiEvaluationItemCandidateResponses({
    this.agentData,
    required this.candidate,
    this.text,
    this.value,
  });

  final TfArg<String>? agentData;

  final TfArg<String> candidate;

  final TfArg<String>? text;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'agent_data': ?agentData?.toTfJson(),
    'candidate': candidate.toTfJson(),
    'text': ?text?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `evaluation_request.golden_response` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemGoldenResponse {
  const VertexAiEvaluationItemGoldenResponse({
    this.content,
    required this.candidate,
  });

  final VertexAiEvaluationItemContent? content;

  final TfArg<String> candidate;

  @internal
  Map<String, Object?> encode() => {
    ...?content?.encode(),
    'candidate': candidate.toTfJson(),
  };
}

/// At most one of `text`, `value`, `agent_data` on the `evaluation_request.golden_response` block of `google_vertex_ai_evaluation_item`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.text(...)`.
sealed class VertexAiEvaluationItemContent {
  const VertexAiEvaluationItemContent();

  /// Sets `text`.
  const factory VertexAiEvaluationItemContent.text(TfArg<String> text) =
      VertexAiEvaluationItemContentText;

  /// Sets `value`.
  const factory VertexAiEvaluationItemContent.value(TfArg<String> value) =
      VertexAiEvaluationItemContentValue;

  /// Sets `agent_data`.
  const factory VertexAiEvaluationItemContent.agentData(
    TfArg<String> agentData,
  ) = VertexAiEvaluationItemContentAgentData;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiEvaluationItemContent.text] choice: sets `text`.
final class VertexAiEvaluationItemContentText
    extends VertexAiEvaluationItemContent {
  const VertexAiEvaluationItemContentText(this.text);

  final TfArg<String> text;

  @internal
  @override
  String get blockKey => 'text';

  @internal
  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// The [VertexAiEvaluationItemContent.value] choice: sets `value`.
final class VertexAiEvaluationItemContentValue
    extends VertexAiEvaluationItemContent {
  const VertexAiEvaluationItemContentValue(this.value);

  final TfArg<String> value;

  @internal
  @override
  String get blockKey => 'value';

  @internal
  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [VertexAiEvaluationItemContent.agentData] choice: sets `agent_data`.
final class VertexAiEvaluationItemContentAgentData
    extends VertexAiEvaluationItemContent {
  const VertexAiEvaluationItemContentAgentData(this.agentData);

  final TfArg<String> agentData;

  @internal
  @override
  String get blockKey => 'agent_data';

  @internal
  @override
  Map<String, Object?> encode() => {'agent_data': agentData.toTfJson()};
}

/// At most one of `text`, `value`, `prompt_template_data`, `agent_data`, `user_scenario` on the `evaluation_request.prompt` block of `google_vertex_ai_evaluation_item`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.text(...)`.
sealed class VertexAiEvaluationItemPrompt {
  const VertexAiEvaluationItemPrompt();

  /// Sets `text`.
  const factory VertexAiEvaluationItemPrompt.text(TfArg<String> text) =
      VertexAiEvaluationItemPromptText;

  /// Sets `value`.
  const factory VertexAiEvaluationItemPrompt.value(TfArg<String> value) =
      VertexAiEvaluationItemPromptValue;

  /// Sets `prompt_template_data`.
  const factory VertexAiEvaluationItemPrompt.promptTemplateData(
    VertexAiEvaluationItemPromptTemplateData promptTemplateData,
  ) = VertexAiEvaluationItemPromptTemplateDataChoice;

  /// Sets `agent_data`.
  const factory VertexAiEvaluationItemPrompt.agentData(
    TfArg<String> agentData,
  ) = VertexAiEvaluationItemPromptAgentData;

  /// Sets `user_scenario`.
  const factory VertexAiEvaluationItemPrompt.userScenario(
    VertexAiEvaluationItemUserScenario userScenario,
  ) = VertexAiEvaluationItemPromptUserScenario;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiEvaluationItemPrompt.text] choice: sets `text`.
final class VertexAiEvaluationItemPromptText
    extends VertexAiEvaluationItemPrompt {
  const VertexAiEvaluationItemPromptText(this.text);

  final TfArg<String> text;

  @internal
  @override
  String get blockKey => 'text';

  @internal
  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// The [VertexAiEvaluationItemPrompt.value] choice: sets `value`.
final class VertexAiEvaluationItemPromptValue
    extends VertexAiEvaluationItemPrompt {
  const VertexAiEvaluationItemPromptValue(this.value);

  final TfArg<String> value;

  @internal
  @override
  String get blockKey => 'value';

  @internal
  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// The [VertexAiEvaluationItemPrompt.promptTemplateData] choice: sets `prompt_template_data`.
final class VertexAiEvaluationItemPromptTemplateDataChoice
    extends VertexAiEvaluationItemPrompt {
  const VertexAiEvaluationItemPromptTemplateDataChoice(this.promptTemplateData);

  final VertexAiEvaluationItemPromptTemplateData promptTemplateData;

  @internal
  @override
  String get blockKey => 'prompt_template_data';

  @internal
  @override
  Map<String, Object?> encode() => {
    'prompt_template_data': promptTemplateData.encode(),
  };
}

/// The [VertexAiEvaluationItemPrompt.agentData] choice: sets `agent_data`.
final class VertexAiEvaluationItemPromptAgentData
    extends VertexAiEvaluationItemPrompt {
  const VertexAiEvaluationItemPromptAgentData(this.agentData);

  final TfArg<String> agentData;

  @internal
  @override
  String get blockKey => 'agent_data';

  @internal
  @override
  Map<String, Object?> encode() => {'agent_data': agentData.toTfJson()};
}

/// The [VertexAiEvaluationItemPrompt.userScenario] choice: sets `user_scenario`.
final class VertexAiEvaluationItemPromptUserScenario
    extends VertexAiEvaluationItemPrompt {
  const VertexAiEvaluationItemPromptUserScenario(this.userScenario);

  final VertexAiEvaluationItemUserScenario userScenario;

  @internal
  @override
  String get blockKey => 'user_scenario';

  @internal
  @override
  Map<String, Object?> encode() => {'user_scenario': userScenario.encode()};
}

/// Typed helper for the `evaluation_request.prompt.prompt_template_data` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemPromptTemplateData {
  const VertexAiEvaluationItemPromptTemplateData({this.values});

  final TfArg<String>? values;

  @internal
  Map<String, Object?> encode() => {'values': ?values?.toTfJson()};
}

/// Typed helper for the `evaluation_request.prompt.user_scenario` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemUserScenario {
  const VertexAiEvaluationItemUserScenario({
    required this.conversationPlan,
    required this.startingPrompt,
  });

  final TfArg<String> conversationPlan;

  final TfArg<String> startingPrompt;

  @internal
  Map<String, Object?> encode() => {
    'conversation_plan': conversationPlan.toTfJson(),
    'starting_prompt': startingPrompt.toTfJson(),
  };
}

/// Typed helper for the `evaluation_request.rubrics` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemRubrics {
  const VertexAiEvaluationItemRubrics({
    this.displayName,
    this.groupId,
    required this.name,
    this.rubrics,
  });

  final TfArg<String>? displayName;

  final TfArg<String>? groupId;

  final TfArg<String> name;

  final List<VertexAiEvaluationItemRubricsRubrics>? rubrics;

  @internal
  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'group_id': ?groupId?.toTfJson(),
    'name': name.toTfJson(),
    if (rubrics != null) 'rubrics': [for (final e in rubrics!) e.encode()],
  };
}

/// Typed helper for the `evaluation_request.rubrics.rubrics` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemRubricsRubrics {
  const VertexAiEvaluationItemRubricsRubrics({
    this.importance,
    this.rubricId,
    this.type,
    required this.content,
  });

  final VertexAiEvaluationItemImportance? importance;

  final TfArg<String>? rubricId;

  final TfArg<String>? type;

  final VertexAiEvaluationItemRubricsContent content;

  @internal
  Map<String, Object?> encode() => {
    'importance': ?importance?.toTfJson(),
    'rubric_id': ?rubricId?.toTfJson(),
    'type': ?type?.toTfJson(),
    'content': content.encode(),
  };
}

/// `importance` — derived from the provider schema description.
extension type const VertexAiEvaluationItemImportance._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiEvaluationItemImportance.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiEvaluationItemImportance.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiEvaluationItemImportance.arg(TfArg<String> arg) : this._(arg);

  static const high = VertexAiEvaluationItemImportance._(TfArgLiteral('HIGH'));
  static const medium = VertexAiEvaluationItemImportance._(
    TfArgLiteral('MEDIUM'),
  );
  static const low = VertexAiEvaluationItemImportance._(TfArgLiteral('LOW'));

  static const List<VertexAiEvaluationItemImportance> values = [
    high,
    medium,
    low,
  ];
}

/// Typed helper for the `evaluation_request.rubrics.rubrics.content` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemRubricsContent {
  const VertexAiEvaluationItemRubricsContent({this.property});

  final VertexAiEvaluationItemProperty? property;

  @internal
  Map<String, Object?> encode() => {'property': ?property?.encode()};
}

/// Typed helper for the `evaluation_request.rubrics.rubrics.content.property` block of
/// `google_vertex_ai_evaluation_item` (derived from provider schema).
@immutable
final class VertexAiEvaluationItemProperty {
  const VertexAiEvaluationItemProperty({this.description});

  final TfArg<String>? description;

  @internal
  Map<String, Object?> encode() => {'description': ?description?.toTfJson()};
}

/// Factory wrapper for `google_vertex_ai_evaluation_item`.
///
/// An evaluation item represents a single prompt and optional model/candidate
/// responses, ground truth, and rubrics for evaluation in Vertex AI.
final class GoogleVertexAiEvaluationItem extends Resource {
  static const String tfType = 'google_vertex_ai_evaluation_item';

  GoogleVertexAiEvaluationItem(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required VertexAiEvaluationItemType evaluationItemType,
    required VertexAiEvaluationItemSource source,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? metadata,
    TfArg<String>? project,
    required TfArg<String> region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'evaluation_item_type': evaluationItemType,
           ...source.argMap,
           'labels': ?labels,
           'metadata': ?metadata,
           'project': ?project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiEvaluationItemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiEvaluationItem>`.
  RefTo<GoogleVertexAiEvaluationItem> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `evaluation_response` attribute.
  TfRef<List<Map<String, Object?>>> get evaluationResponse =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'evaluation_response');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `evaluation_item_type` attribute.
  TfRef<String> get evaluationItemType =>
      TfRef.attribute<String>(this, 'evaluation_item_type');

  /// Reference to `gcs_uri` attribute.
  TfRef<String> get gcsUri => TfRef.attribute<String>(this, 'gcs_uri');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

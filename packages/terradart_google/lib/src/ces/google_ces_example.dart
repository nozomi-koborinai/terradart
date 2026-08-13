// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_example`.
const Set<String> _googleCesExampleSensitive = <String>{};

/// Typed helper for the `messages` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessages {
  const CesExampleMessages({this.role, this.chunks});

  final TfArg<String>? role;

  final List<CesExampleMessagesChunks>? chunks;

  Map<String, Object?> encode() => {
    if (role != null) 'role': role!.toTfJson(),
    if (chunks != null) 'chunks': [for (final e in chunks!) e.encode()],
  };
}

/// Typed helper for the `messages.chunks` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessagesChunks {
  const CesExampleMessagesChunks({
    this.text,
    this.updatedVariables,
    this.agentTransfer,
    this.image,
    this.toolCall,
    this.toolResponse,
  });

  final TfArg<String>? text;

  final TfArg<String>? updatedVariables;

  final CesExampleMessagesChunksAgentTransfer? agentTransfer;

  final CesExampleMessagesChunksImage? image;

  final CesExampleMessagesChunksToolCall? toolCall;

  final CesExampleMessagesChunksToolResponse? toolResponse;

  Map<String, Object?> encode() => {
    if (text != null) 'text': text!.toTfJson(),
    if (updatedVariables != null)
      'updated_variables': updatedVariables!.toTfJson(),
    if (agentTransfer != null) 'agent_transfer': agentTransfer!.encode(),
    if (image != null) 'image': image!.encode(),
    if (toolCall != null) 'tool_call': toolCall!.encode(),
    if (toolResponse != null) 'tool_response': toolResponse!.encode(),
  };
}

/// Typed helper for the `messages.chunks.agent_transfer` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessagesChunksAgentTransfer {
  const CesExampleMessagesChunksAgentTransfer({required this.targetAgent});

  final TfArg<String> targetAgent;

  Map<String, Object?> encode() => {'target_agent': targetAgent.toTfJson()};
}

/// Typed helper for the `messages.chunks.image` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessagesChunksImage {
  const CesExampleMessagesChunksImage({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `messages.chunks.tool_call` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessagesChunksToolCall {
  const CesExampleMessagesChunksToolCall({
    this.args,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? args;

  final TfArg<String>? id;

  final TfArg<String>? tool;

  final CesExampleMessagesChunksToolCallToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    if (args != null) 'args': args!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (tool != null) 'tool': tool!.toTfJson(),
    if (toolsetTool != null) 'toolset_tool': toolsetTool!.encode(),
  };
}

/// Typed helper for the `messages.chunks.tool_call.toolset_tool` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessagesChunksToolCallToolsetTool {
  const CesExampleMessagesChunksToolCallToolsetTool({
    this.toolId,
    required this.toolset,
  });

  final TfArg<String>? toolId;

  final TfArg<String> toolset;

  Map<String, Object?> encode() => {
    if (toolId != null) 'tool_id': toolId!.toTfJson(),
    'toolset': toolset.toTfJson(),
  };
}

/// Typed helper for the `messages.chunks.tool_response` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessagesChunksToolResponse {
  const CesExampleMessagesChunksToolResponse({
    this.id,
    required this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<String> response;

  final TfArg<String>? tool;

  final CesExampleMessagesChunksToolResponseToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    'response': response.toTfJson(),
    if (tool != null) 'tool': tool!.toTfJson(),
    if (toolsetTool != null) 'toolset_tool': toolsetTool!.encode(),
  };
}

/// Typed helper for the `messages.chunks.tool_response.toolset_tool` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessagesChunksToolResponseToolsetTool {
  const CesExampleMessagesChunksToolResponseToolsetTool({
    this.toolId,
    required this.toolset,
  });

  final TfArg<String>? toolId;

  final TfArg<String> toolset;

  Map<String, Object?> encode() => {
    if (toolId != null) 'tool_id': toolId!.toTfJson(),
    'toolset': toolset.toTfJson(),
  };
}

/// Factory wrapper for `google_ces_example`.
///
/// An example represents a sample conversation between the user and the
/// agent(s).
///
/// Customer Engagement Suite **example** — few-shot conversation
/// (messages + optional entry agent) bound to a [GoogleCesApp]. Pass
/// the parent app's `app_id` as [app].
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB` **$0.0025/s**). billing-behavior: examples are
/// design-time few-shot metadata — session SKUs fire only on CX Agent
/// Studio chat/voice sessions. Enable `ces.googleapis.com` via
/// [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleCesExample(
///   localName: 'greeting',
///   location: TfArg.ref(app.locationRef),
///   app: TfArg.ref(app.appIdRef),
///   exampleId: TfArg.literal('terradart-ces-example'),
///   displayName: TfArg.literal('terradart-ces-example'),
///   entryAgent: TfArg.ref(agent.nameRef),
///   messages: [
///     CesExampleMessages(
///       role: TfArg.literal('user'),
///       chunks: [
///         CesExampleMessagesChunks(
///           text: TfArg.literal('Hello'),
///         ),
///       ],
///     ),
///   ],
/// );
/// ```
final class GoogleCesExample extends Resource {
  static const String tfType = 'google_ces_example';

  GoogleCesExample({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> app,
    required TfArg<String> exampleId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<String>? entryAgent,
    List<CesExampleMessages>? messages,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'example_id': exampleId,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (entryAgent != null) 'entry_agent': entryAgent,
           if (messages != null)
             'messages': TfArg.literal([for (final e in messages) e.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesExampleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `invalid` attribute.
  TfRef<bool> get invalid => TfRef.attribute<bool>(this, 'invalid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `example_id`.
  TfRef<String> get exampleIdRef => TfRef.attribute<String>(this, 'example_id');
}

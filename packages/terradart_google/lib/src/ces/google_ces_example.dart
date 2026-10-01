// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ces/google_ces_agent.dart' show GoogleCesAgent;
import '../ces/google_ces_toolset.dart' show GoogleCesToolset;

/// Sensitive field paths for `google_ces_example`.
const Set<String> _googleCesExampleSensitive = <String>{};

/// Typed helper for the `messages` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleMessages {
  const CesExampleMessages({this.role, this.chunks});

  final TfArg<String>? role;

  final List<CesExampleChunks>? chunks;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    if (chunks != null) 'chunks': [for (final e in chunks!) e.encode()],
  };
}

/// Typed helper for the `messages.chunks` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleChunks {
  const CesExampleChunks({
    this.text,
    this.updatedVariables,
    this.agentTransfer,
    this.blob,
    this.image,
    this.toolCall,
    this.toolResponse,
  });

  final TfArg<String>? text;

  final TfArg<String>? updatedVariables;

  final CesExampleAgentTransfer? agentTransfer;

  final CesExampleBlob? blob;

  final CesExampleImage? image;

  final CesExampleToolCall? toolCall;

  final CesExampleToolResponse? toolResponse;

  Map<String, Object?> encode() => {
    'text': ?text?.toTfJson(),
    'updated_variables': ?updatedVariables?.toTfJson(),
    'agent_transfer': ?agentTransfer?.encode(),
    'blob': ?blob?.encode(),
    'image': ?image?.encode(),
    'tool_call': ?toolCall?.encode(),
    'tool_response': ?toolResponse?.encode(),
  };
}

/// Typed helper for the `messages.chunks.agent_transfer` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleAgentTransfer {
  const CesExampleAgentTransfer({required this.targetAgent});

  final TfArg<String> targetAgent;

  Map<String, Object?> encode() => {'target_agent': targetAgent.toTfJson()};
}

/// Typed helper for the `messages.chunks.blob` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleBlob {
  const CesExampleBlob({required this.data, required this.mimeType});

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `messages.chunks.image` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleImage {
  const CesExampleImage({
    this.altText,
    required this.data,
    required this.mimeType,
  });

  final TfArg<String>? altText;

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'alt_text': ?altText?.toTfJson(),
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `messages.chunks.tool_call` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleToolCall {
  const CesExampleToolCall({this.args, this.id, this.tool, this.toolsetTool});

  final TfArg<String>? args;

  final TfArg<String>? id;

  final TfArg<String>? tool;

  final CesExampleToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `messages.chunks.tool_call.toolset_tool` block of
/// `google_ces_example` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesExampleToolsetTool {
  const CesExampleToolsetTool({this.toolId, required this.toolset});

  final TfArg<String>? toolId;

  final RefTo<GoogleCesToolset> toolset;

  Map<String, Object?> encode() => {
    'tool_id': ?toolId?.toTfJson(),
    'toolset': toolset.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `messages.chunks.tool_response` block of
/// `google_ces_example` (derived from provider schema).
@immutable
final class CesExampleToolResponse {
  const CesExampleToolResponse({
    this.id,
    required this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<String> response;

  final TfArg<String>? tool;

  final CesExampleToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': response.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
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
///   entryAgent: agent.ref,
///   messages: [
///     CesExampleMessages(
///       role: TfArg.literal('user'),
///       chunks: [
///         CesExampleChunks(
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
    RefTo<GoogleCesAgent>? entryAgent,
    List<CesExampleMessages>? messages,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'example_id': exampleId,
           'display_name': displayName,
           'description': ?description,
           'entry_agent': ?entryAgent?.encodeAs('name'),
           if (messages != null)
             'messages': TfArg.literal([for (final e in messages) e.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesExampleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesExample>`.
  RefTo<GoogleCesExample> get ref => RefTo.of(this);

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

  /// Reference to `app` attribute.
  TfRef<String> get appRef => TfRef.attribute<String>(this, 'app');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `entry_agent` attribute.
  TfRef<String> get entryAgentRef =>
      TfRef.attribute<String>(this, 'entry_agent');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `example_id`.
  TfRef<String> get exampleIdRef => TfRef.attribute<String>(this, 'example_id');
}

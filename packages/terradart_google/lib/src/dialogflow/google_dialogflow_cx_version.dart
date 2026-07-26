// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_version`.
const Set<String> _googleDialogflowCxVersionSensitive = <String>{};

/// Dialogflow Cx Version enum for `state`.
enum DialogflowCxVersionState implements TerraformEnum {
  running('RUNNING'),
  succeeded('SUCCEEDED'),
  failed('FAILED');

  const DialogflowCxVersionState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dialogflow_cx_version`.
///
/// You can create multiple versions of your agent flows and deploy them to
/// separate serving environments. When you edit a flow, you are editing a draft
/// flow. At any point, you can save a draft flow as a flow version. A flow
/// version is an immutable snapshot of your flow data and associated agent data
/// like intents, entities, webhooks, pages, route groups, etc.
///
/// Dialogflow CX **version** — immutable snapshot of a CX flow.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: versions sit on the never_apply
/// [GoogleDialogflowCxAgent] / flow session path. **Never** wire into
/// apply-smoke.
final class GoogleDialogflowCxVersion extends Resource {
  static const String tfType = 'google_dialogflow_cx_version';

  GoogleDialogflowCxVersion({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? parent,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (parent != null) 'parent': parent,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `nlu_settings` attribute.
  TfRef<List<Map<String, Object?>>> get nluSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nlu_settings');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

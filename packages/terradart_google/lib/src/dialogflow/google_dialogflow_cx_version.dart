// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_version`.
const Set<String> _googleDialogflowCxVersionSensitive = <String>{};

/// Dialogflow Cx Version enum for `state`.
extension type const DialogflowCxVersionState._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxVersionState.variable(String name) : this._(TfArg.variable(name));
  DialogflowCxVersionState.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxVersionState.arg(TfArg<String> arg) : this._(arg);

  static const running = DialogflowCxVersionState._(TfArgLiteral('RUNNING'));
  static const succeeded = DialogflowCxVersionState._(
    TfArgLiteral('SUCCEEDED'),
  );
  static const failed = DialogflowCxVersionState._(TfArgLiteral('FAILED'));

  static const List<DialogflowCxVersionState> values = [
    running,
    succeeded,
    failed,
  ];
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

  GoogleDialogflowCxVersion(
    super.localName, {
    required TfArg<String> displayName,
    TfArg<String>? parent,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'parent': ?parent,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxVersion>`.
  RefTo<GoogleDialogflowCxVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `nlu_settings` attribute.
  TfRef<List<Map<String, Object?>>> get nluSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nlu_settings');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}

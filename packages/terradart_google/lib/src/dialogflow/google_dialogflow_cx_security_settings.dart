// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_security_settings`.
const Set<String> _googleDialogflowCxSecuritySettingsSensitive = <String>{};

/// Dialogflow Cx Security Settings Redaction enum for `redaction_scope`.
enum DialogflowCxSecuritySettingsRedactionScope implements TerraformEnum {
  redactDiskStorage('REDACT_DISK_STORAGE');

  const DialogflowCxSecuritySettingsRedactionScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dialogflow Cx Security Settings Redaction enum for `redaction_strategy`.
enum DialogflowCxSecuritySettingsRedactionStrategy implements TerraformEnum {
  redactWithService('REDACT_WITH_SERVICE');

  const DialogflowCxSecuritySettingsRedactionStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dialogflow Cx Security Settings Retention enum for `retention_strategy`.
enum DialogflowCxSecuritySettingsRetentionStrategy implements TerraformEnum {
  removeAfterConversation('REMOVE_AFTER_CONVERSATION');

  const DialogflowCxSecuritySettingsRetentionStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `audio_export_settings` block of
/// `google_dialogflow_cx_security_settings` (derived from provider schema).
@immutable
final class DialogflowCxSecuritySettingsAudioExportSettings {
  const DialogflowCxSecuritySettingsAudioExportSettings({
    this.audioExportPattern,
    this.audioFormat,
    this.enableAudioRedaction,
    this.gcsBucket,
  });

  final TfArg<String>? audioExportPattern;

  final TfArg<DialogflowCxSecuritySettingsAudioExportSettingsAudioFormat>?
  audioFormat;

  final TfArg<bool>? enableAudioRedaction;

  final TfArg<String>? gcsBucket;

  Map<String, Object?> encode() => {
    if (audioExportPattern != null)
      'audio_export_pattern': audioExportPattern!.toTfJson(),
    if (audioFormat != null) 'audio_format': audioFormat!.toTfJson(),
    if (enableAudioRedaction != null)
      'enable_audio_redaction': enableAudioRedaction!.toTfJson(),
    if (gcsBucket != null) 'gcs_bucket': gcsBucket!.toTfJson(),
  };
}

/// `audio_format` — derived from the provider schema description.
enum DialogflowCxSecuritySettingsAudioExportSettingsAudioFormat
    implements TerraformEnum {
  mulaw('MULAW'),
  mp3('MP3'),
  ogg('OGG');

  const DialogflowCxSecuritySettingsAudioExportSettingsAudioFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `insights_export_settings` block of
/// `google_dialogflow_cx_security_settings` (derived from provider schema).
@immutable
final class DialogflowCxSecuritySettingsInsightsExportSettings {
  const DialogflowCxSecuritySettingsInsightsExportSettings({
    required this.enableInsightsExport,
  });

  final TfArg<bool> enableInsightsExport;

  Map<String, Object?> encode() => {
    'enable_insights_export': enableInsightsExport.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_security_settings`.
///
/// Represents the settings related to security issues, such as data redaction
/// and data retention. It may take hours for updates on the settings to
/// propagate to all the related components and take effect. Multiple security
/// settings can be configured in each location. Each agent can specify the
/// security settings to apply, and each setting can be applied to multiple
/// agents in the same project and location.
///
/// Dialogflow CX **security settings** — redaction / retention / audio
/// export policy attached to CX agents.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: security settings configure the
/// Dialogflow CX agent path that accrues session charges; deferred with
/// never_apply [GoogleDialogflowCxAgent]. **Never** wire into
/// apply-smoke.
final class GoogleDialogflowCxSecuritySettings extends Resource {
  static const String tfType = 'google_dialogflow_cx_security_settings';

  GoogleDialogflowCxSecuritySettings({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> location,
    TfArg<DialogflowCxSecuritySettingsRedactionStrategy>? redactionStrategy,
    TfArg<DialogflowCxSecuritySettingsRedactionScope>? redactionScope,
    TfArg<String>? inspectTemplate,
    TfArg<String>? deidentifyTemplate,
    TfArg<num>? retentionWindowDays,
    TfArg<DialogflowCxSecuritySettingsRetentionStrategy>? retentionStrategy,
    TfArg<List<String>>? purgeDataTypes,
    DialogflowCxSecuritySettingsAudioExportSettings? audioExportSettings,
    DialogflowCxSecuritySettingsInsightsExportSettings? insightsExportSettings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           if (redactionStrategy != null)
             'redaction_strategy': redactionStrategy,
           if (redactionScope != null) 'redaction_scope': redactionScope,
           if (inspectTemplate != null) 'inspect_template': inspectTemplate,
           if (deidentifyTemplate != null)
             'deidentify_template': deidentifyTemplate,
           if (retentionWindowDays != null)
             'retention_window_days': retentionWindowDays,
           if (retentionStrategy != null)
             'retention_strategy': retentionStrategy,
           if (purgeDataTypes != null) 'purge_data_types': purgeDataTypes,
           if (audioExportSettings != null)
             'audio_export_settings': TfArg.literal(
               audioExportSettings.encode(),
             ),
           if (insightsExportSettings != null)
             'insights_export_settings': TfArg.literal(
               insightsExportSettings.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDialogflowCxSecuritySettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

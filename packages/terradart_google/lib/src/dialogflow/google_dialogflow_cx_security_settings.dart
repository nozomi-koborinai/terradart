// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_dialogflow_cx_security_settings`.
const Set<String> _googleDialogflowCxSecuritySettingsSensitive = <String>{};

/// Dialogflow Cx Security Settings Redaction enum for `redaction_scope`.
extension type const DialogflowCxSecuritySettingsRedactionScope._(
  TfArg<String> _
) implements TfArg<String> {
  DialogflowCxSecuritySettingsRedactionScope.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxSecuritySettingsRedactionScope.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxSecuritySettingsRedactionScope.arg(TfArg<String> arg)
    : this._(arg);

  static const redactDiskStorage = DialogflowCxSecuritySettingsRedactionScope._(
    TfArgLiteral('REDACT_DISK_STORAGE'),
  );

  static const List<DialogflowCxSecuritySettingsRedactionScope> values = [
    redactDiskStorage,
  ];
}

/// Dialogflow Cx Security Settings Redaction enum for `redaction_strategy`.
extension type const DialogflowCxSecuritySettingsRedactionStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  DialogflowCxSecuritySettingsRedactionStrategy.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxSecuritySettingsRedactionStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxSecuritySettingsRedactionStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const redactWithService =
      DialogflowCxSecuritySettingsRedactionStrategy._(
        TfArgLiteral('REDACT_WITH_SERVICE'),
      );

  static const List<DialogflowCxSecuritySettingsRedactionStrategy> values = [
    redactWithService,
  ];
}

/// Dialogflow Cx Security Settings Retention enum for `retention_strategy`.
extension type const DialogflowCxSecuritySettingsRetentionStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  DialogflowCxSecuritySettingsRetentionStrategy.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxSecuritySettingsRetentionStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxSecuritySettingsRetentionStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const removeAfterConversation =
      DialogflowCxSecuritySettingsRetentionStrategy._(
        TfArgLiteral('REMOVE_AFTER_CONVERSATION'),
      );

  static const List<DialogflowCxSecuritySettingsRetentionStrategy> values = [
    removeAfterConversation,
  ];
}

/// At most one of `retention_window_days`, `retention_strategy` on `google_dialogflow_cx_security_settings`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.retentionWindowDays(...)`.
sealed class DialogflowCxSecuritySettingsRetention {
  const DialogflowCxSecuritySettingsRetention();

  /// Sets `retention_window_days`.
  const factory DialogflowCxSecuritySettingsRetention.retentionWindowDays(
    TfArg<num> retentionWindowDays,
  ) = DialogflowCxSecuritySettingsRetentionWindowDays;

  /// Sets `retention_strategy`.
  const factory DialogflowCxSecuritySettingsRetention.retentionStrategy(
    DialogflowCxSecuritySettingsRetentionStrategy retentionStrategy,
  ) = DialogflowCxSecuritySettingsRetentionStrategyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DialogflowCxSecuritySettingsRetention.retentionWindowDays] choice: sets `retention_window_days`.
final class DialogflowCxSecuritySettingsRetentionWindowDays
    extends DialogflowCxSecuritySettingsRetention {
  const DialogflowCxSecuritySettingsRetentionWindowDays(
    this.retentionWindowDays,
  );

  final TfArg<num> retentionWindowDays;

  @override
  String get blockKey => 'retention_window_days';

  @override
  Map<String, Object?> encode() => {
    'retention_window_days': retentionWindowDays.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'retention_window_days': retentionWindowDays,
  };
}

/// The [DialogflowCxSecuritySettingsRetention.retentionStrategy] choice: sets `retention_strategy`.
final class DialogflowCxSecuritySettingsRetentionStrategyChoice
    extends DialogflowCxSecuritySettingsRetention {
  const DialogflowCxSecuritySettingsRetentionStrategyChoice(
    this.retentionStrategy,
  );

  final DialogflowCxSecuritySettingsRetentionStrategy retentionStrategy;

  @override
  String get blockKey => 'retention_strategy';

  @override
  Map<String, Object?> encode() => {
    'retention_strategy': retentionStrategy.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'retention_strategy': retentionStrategy,
  };
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

  final DialogflowCxSecuritySettingsAudioFormat? audioFormat;

  final TfArg<bool>? enableAudioRedaction;

  final RefTo<GoogleStorageBucket>? gcsBucket;

  Map<String, Object?> encode() => {
    'audio_export_pattern': ?audioExportPattern?.toTfJson(),
    'audio_format': ?audioFormat?.toTfJson(),
    'enable_audio_redaction': ?enableAudioRedaction?.toTfJson(),
    'gcs_bucket': ?gcsBucket?.encodeAs('name').toTfJson(),
  };
}

/// `audio_format` — derived from the provider schema description.
extension type const DialogflowCxSecuritySettingsAudioFormat._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxSecuritySettingsAudioFormat.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxSecuritySettingsAudioFormat.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxSecuritySettingsAudioFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const mulaw = DialogflowCxSecuritySettingsAudioFormat._(
    TfArgLiteral('MULAW'),
  );
  static const mp3 = DialogflowCxSecuritySettingsAudioFormat._(
    TfArgLiteral('MP3'),
  );
  static const ogg = DialogflowCxSecuritySettingsAudioFormat._(
    TfArgLiteral('OGG'),
  );

  static const List<DialogflowCxSecuritySettingsAudioFormat> values = [
    mulaw,
    mp3,
    ogg,
  ];
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

  GoogleDialogflowCxSecuritySettings(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> location,
    DialogflowCxSecuritySettingsRedactionStrategy? redactionStrategy,
    DialogflowCxSecuritySettingsRedactionScope? redactionScope,
    TfArg<String>? inspectTemplate,
    TfArg<String>? deidentifyTemplate,
    DialogflowCxSecuritySettingsRetention? retention,
    TfArg<List<String>>? purgeDataTypes,
    DialogflowCxSecuritySettingsAudioExportSettings? audioExportSettings,
    DialogflowCxSecuritySettingsInsightsExportSettings? insightsExportSettings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           'redaction_strategy': ?redactionStrategy,
           'redaction_scope': ?redactionScope,
           'inspect_template': ?inspectTemplate,
           'deidentify_template': ?deidentifyTemplate,
           ...?retention?.argMap,
           'purge_data_types': ?purgeDataTypes,
           if (audioExportSettings != null)
             'audio_export_settings': TfArg.literal(
               audioExportSettings.encode(),
             ),
           if (insightsExportSettings != null)
             'insights_export_settings': TfArg.literal(
               insightsExportSettings.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDialogflowCxSecuritySettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxSecuritySettings>`.
  RefTo<GoogleDialogflowCxSecuritySettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deidentify_template` attribute.
  TfRef<String> get deidentifyTemplate =>
      TfRef.attribute<String>(this, 'deidentify_template');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `inspect_template` attribute.
  TfRef<String> get inspectTemplate =>
      TfRef.attribute<String>(this, 'inspect_template');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `purge_data_types` attribute.
  TfRef<List<String>> get purgeDataTypes =>
      TfRef.attribute<List<String>>(this, 'purge_data_types');

  /// Reference to `redaction_scope` attribute.
  TfRef<String> get redactionScope =>
      TfRef.attribute<String>(this, 'redaction_scope');

  /// Reference to `redaction_strategy` attribute.
  TfRef<String> get redactionStrategy =>
      TfRef.attribute<String>(this, 'redaction_strategy');

  /// Reference to `retention_strategy` attribute.
  TfRef<String> get retentionStrategy =>
      TfRef.attribute<String>(this, 'retention_strategy');

  /// Reference to `retention_window_days` attribute.
  TfRef<num> get retentionWindowDays =>
      TfRef.attribute<num>(this, 'retention_window_days');
}

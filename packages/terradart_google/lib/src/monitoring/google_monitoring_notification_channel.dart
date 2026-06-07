// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_notification_channel`.
const Set<String> _googleMonitoringNotificationChannelSensitive = <String>{
  'sensitive_labels.auth_token',
  'sensitive_labels.password',
  'sensitive_labels.service_key',
};

// ===========================================================================
// sensitive_labels nested block (max=1)
// ===========================================================================

/// `sensitive_labels` block (max=1) — credential slots for notification
/// channel types that need an out-of-band secret. Each transport uses a
/// different subset:
///
/// - `slack` → [authToken] (or [authTokenWo] + [authTokenWoVersion] for
///   the write-only API).
/// - `webhook_basicauth` → [password] (or [passwordWo] +
///   [passwordWoVersion]).
/// - `webhook_tokenauth` → [authToken] / [authTokenWo].
/// - `pagerduty` → [serviceKey] (or [serviceKeyWo] +
///   [serviceKeyWoVersion]).
///
/// The plaintext slots ([authToken], [password], [serviceKey]) are
/// schema-flagged sensitive and round-trip through the wrapper's
/// `sensitiveFields` set — synth masks them in plan output. Prefer the
/// write-only variants (`*Wo` + `*WoVersion`) on Terraform 1.11+: the
/// plaintext never enters Terraform state, and bumping the integer
/// `*WoVersion` slot forces a credential rotation on next apply.
///
/// Credentials must NOT also be supplied via [GoogleMonitoringNotificationChannel.labels]
/// — the provider rejects configurations that double-specify the same
/// logical secret.
class MonitoringNotificationChannelSensitiveLabels {
  const MonitoringNotificationChannelSensitiveLabels({
    this.authToken,
    this.authTokenWo,
    this.authTokenWoVersion,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    this.serviceKey,
    this.serviceKeyWo,
    this.serviceKeyWoVersion,
  });

  /// Slack bot OAuth token / webhook bearer token. Sensitive — masked
  /// from plan output and surfaced in `sensitiveFields`.
  final TfArg<String>? authToken;

  /// Write-only sibling of [authToken] (Terraform 1.11+). Bump
  /// [authTokenWoVersion] to rotate.
  final TfArg<String>? authTokenWo;

  /// Monotonic counter that triggers a rotation of [authTokenWo].
  final TfArg<String>? authTokenWoVersion;

  /// Basic-auth password for `webhook_basicauth` channels. Sensitive.
  final TfArg<String>? password;

  /// Write-only sibling of [password] (Terraform 1.11+).
  final TfArg<String>? passwordWo;

  /// Monotonic counter that triggers a rotation of [passwordWo].
  final TfArg<String>? passwordWoVersion;

  /// PagerDuty integration service key. Sensitive.
  final TfArg<String>? serviceKey;

  /// Write-only sibling of [serviceKey] (Terraform 1.11+).
  final TfArg<String>? serviceKeyWo;

  /// Monotonic counter that triggers a rotation of [serviceKeyWo].
  final TfArg<String>? serviceKeyWoVersion;

  Map<String, Object?> toArgMap() => {
    if (authToken != null) 'auth_token': authToken!.toTfJson(),
    if (authTokenWo != null) 'auth_token_wo': authTokenWo!.toTfJson(),
    if (authTokenWoVersion != null)
      'auth_token_wo_version': authTokenWoVersion!.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (passwordWo != null) 'password_wo': passwordWo!.toTfJson(),
    if (passwordWoVersion != null)
      'password_wo_version': passwordWoVersion!.toTfJson(),
    if (serviceKey != null) 'service_key': serviceKey!.toTfJson(),
    if (serviceKeyWo != null) 'service_key_wo': serviceKeyWo!.toTfJson(),
    if (serviceKeyWoVersion != null)
      'service_key_wo_version': serviceKeyWoVersion!.toTfJson(),
  };
}

/// Factory wrapper for `google_monitoring_notification_channel`.
///
/// A NotificationChannel is a medium through which an alert is delivered when a
/// policy violation is detected. Examples of channels include email, SMS, and
/// third-party messaging applications. Fields containing sensitive information
/// like authentication tokens or contact info are only partially populated on
/// retrieval.
///
/// Notification Channels are designed to be flexible and are made up of a
/// supported `type` and labels to configure that channel. Each `type` has
/// specific labels that need to be present for that channel to be correctly
/// configured. The labels that are required to be present for one channel
/// `type` are often different than those required for another. Due to these
/// loose constraints it's often best to set up a channel through the UI and
/// import to Terraform when setting up a brand new channel type to determine
/// which labels are required.
///
/// A list of supported channels per project the `list` endpoint can be accessed
/// programmatically or through the api explorer at
/// https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list
/// . This provides the channel type and all of the required labels that must be
/// passed.
///
/// `type` is the notification channel **type registry key**. Google
/// maintains the canonical list server-side (the API returns it from
/// `projects.notificationChannelDescriptors.list`) and adds new
/// transports asynchronously, so this slot is intentionally a free-form
/// `String` rather than a Dart enum — pinning an enum here would force
/// a terradart release every time Google ships a new descriptor.
///
/// Common `type` values and the channel-specific keys they expect in
/// [labels] (the canonical reference is the `NotificationChannelDescriptor`
/// for each type):
/// - `"email"` — `labels: {'email_address': 'oncall@example.com'}`.
/// - `"slack"` — `labels: {'channel_name': '#alerts',
///   'team': 'T01234ABCD'}`. The bot OAuth token goes in
///   [sensitiveLabels].`authToken` (NOT in `labels`).
/// - `"pagerduty"` — `labels: {'service_name': 'prod-oncall'}`. The
///   integration service key goes in [sensitiveLabels].`serviceKey`.
/// - `"sms"` — `labels: {'number': '+15551234567'}` (E.164 format,
///   pre-verified phone numbers only).
/// - `"webhook_basicauth"` — `labels: {'url': 'https://...'}` +
///   [sensitiveLabels].`password` (with the basic-auth username embedded
///   in the URL or in `labels`).
/// - `"webhook_tokenauth"` — `labels: {'url': 'https://...'}` +
///   [sensitiveLabels].`authToken` for the bearer token.
/// - `"pubsub"` — `labels: {'topic': 'projects/<p>/topics/<t>'}`. The
///   service account that posts to the topic is managed via IAM, not
///   via this resource.
///
/// Credentials handling: any value containing a secret (Slack token,
/// PagerDuty service key, webhook auth token / basic-auth password) MUST
/// be placed in [sensitiveLabels] rather than [labels]. The provider
/// rejects configurations that supply the same logical secret in both
/// places, and only [sensitiveLabels] entries are masked from plan
/// output. The 3 plaintext slots (`authToken`, `password`, `serviceKey`)
/// are flagged sensitive by the provider schema and also enumerated in
/// [extraSensitiveFields] (belt-and-suspenders); the 6
/// write-only-API siblings (`*_wo` + `*_wo_version`) keep the plaintext
/// out of Terraform state entirely on Terraform 1.11+ — prefer them
/// when your CLI version supports it, bumping the `*_wo_version` int to
/// force rotation.
///
/// Verification: [verificationStatus] reflects whether the channel has
/// passed Google's out-of-band verification step (e.g. clicking a link
/// in a confirmation email, replying to an SMS). Channels in the
/// `UNVERIFIED` state do not deliver notifications. Verification cannot
/// be triggered through this resource — call
/// `gcloud alpha monitoring channels verify` or the
/// `projects.notificationChannels.verify` REST endpoint after apply.
///
/// Example (Slack channel):
/// ```dart
/// final slack = GoogleMonitoringNotificationChannel(
///   localName: 'oncall_slack',
///   displayName: TfArg.literal('#oncall alerts'),
///   type: TfArg.literal('slack'),
///   labels: TfArg.literal(const {
///     'channel_name': '#oncall',
///     'team': 'T01234ABCD',
///   }),
///   sensitiveLabels: MonitoringNotificationChannelSensitiveLabels(
///     authTokenWo: TfArg.ref(slackBotTokenSecret.versionRef),
///     authTokenWoVersion: TfArg.literal('1'),
///   ),
///   userLabels: TfArg.literal(const {'team': 'platform'}),
/// );
/// ```
final class GoogleMonitoringNotificationChannel extends Resource {
  static const String tfType = 'google_monitoring_notification_channel';

  GoogleMonitoringNotificationChannel({
    required super.localName,
    TfArg<String>? displayName,
    required TfArg<String> type,
    TfArg<Map<String, String>>? labels,
    MonitoringNotificationChannelSensitiveLabels? sensitiveLabels,
    TfArg<Map<String, String>>? userLabels,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<bool>? forceDelete,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (displayName != null) 'display_name': displayName,
           'type': type,
           if (labels != null) 'labels': labels,
           if (sensitiveLabels != null)
             'sensitive_labels': TfArg.literal([sensitiveLabels.toArgMap()]),
           if (userLabels != null) 'user_labels': userLabels,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           if (forceDelete != null) 'force_delete': forceDelete,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMonitoringNotificationChannelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `verification_status` attribute.
  TfRef<String> get verificationStatus =>
      TfRef.attribute<String>(this, 'verification_status');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_notification_channel`.
const Set<String> _googleMonitoringNotificationChannelSensitive = <String>{
  'sensitive_labels.auth_token',
  'sensitive_labels.password',
  'sensitive_labels.service_key',
};

/// Typed helper for the `sensitive_labels` block of
/// `google_monitoring_notification_channel` (derived from provider schema).
@immutable
final class MonitoringNotificationChannelSensitiveLabels {
  const MonitoringNotificationChannelSensitiveLabels({
    required this.credential,
    this.authTokenWoVersion,
    this.passwordWoVersion,
    this.serviceKeyWoVersion,
  });

  final MonitoringNotificationChannelSensitiveLabelsCredential credential;

  final TfArg<String>? authTokenWoVersion;

  final TfArg<String>? passwordWoVersion;

  final TfArg<String>? serviceKeyWoVersion;

  Map<String, Object?> encode() => {
    ...credential.encode(),
    'auth_token_wo_version': ?authTokenWoVersion?.toTfJson(),
    'password_wo_version': ?passwordWoVersion?.toTfJson(),
    'service_key_wo_version': ?serviceKeyWoVersion?.toTfJson(),
  };
}

/// Exactly one of `auth_token`, `auth_token_wo`, `password`, `password_wo`, `service_key`, `service_key_wo` on the `sensitive_labels` block of `google_monitoring_notification_channel`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.authToken(...)`.
sealed class MonitoringNotificationChannelSensitiveLabelsCredential {
  const MonitoringNotificationChannelSensitiveLabelsCredential();

  /// Sets `auth_token`.
  const factory MonitoringNotificationChannelSensitiveLabelsCredential.authToken(
    TfArg<String> authToken,
  ) = MonitoringNotificationChannelSensitiveLabelsCredentialAuthToken;

  /// Sets `auth_token_wo`.
  const factory MonitoringNotificationChannelSensitiveLabelsCredential.authTokenWo(
    TfArg<String> authTokenWo,
  ) = MonitoringNotificationChannelSensitiveLabelsCredentialAuthTokenWo;

  /// Sets `password`.
  const factory MonitoringNotificationChannelSensitiveLabelsCredential.password(
    TfArg<String> password,
  ) = MonitoringNotificationChannelSensitiveLabelsCredentialPassword;

  /// Sets `password_wo`.
  const factory MonitoringNotificationChannelSensitiveLabelsCredential.passwordWo(
    TfArg<String> passwordWo,
  ) = MonitoringNotificationChannelSensitiveLabelsCredentialPasswordWo;

  /// Sets `service_key`.
  const factory MonitoringNotificationChannelSensitiveLabelsCredential.serviceKey(
    TfArg<String> serviceKey,
  ) = MonitoringNotificationChannelSensitiveLabelsCredentialServiceKey;

  /// Sets `service_key_wo`.
  const factory MonitoringNotificationChannelSensitiveLabelsCredential.serviceKeyWo(
    TfArg<String> serviceKeyWo,
  ) = MonitoringNotificationChannelSensitiveLabelsCredentialServiceKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringNotificationChannelSensitiveLabelsCredential.authToken] choice: sets `auth_token`.
final class MonitoringNotificationChannelSensitiveLabelsCredentialAuthToken
    extends MonitoringNotificationChannelSensitiveLabelsCredential {
  const MonitoringNotificationChannelSensitiveLabelsCredentialAuthToken(
    this.authToken,
  );

  final TfArg<String> authToken;

  @override
  String get blockKey => 'auth_token';

  @override
  Map<String, Object?> encode() => {'auth_token': authToken.toTfJson()};
}

/// The [MonitoringNotificationChannelSensitiveLabelsCredential.authTokenWo] choice: sets `auth_token_wo`.
final class MonitoringNotificationChannelSensitiveLabelsCredentialAuthTokenWo
    extends MonitoringNotificationChannelSensitiveLabelsCredential {
  const MonitoringNotificationChannelSensitiveLabelsCredentialAuthTokenWo(
    this.authTokenWo,
  );

  final TfArg<String> authTokenWo;

  @override
  String get blockKey => 'auth_token_wo';

  @override
  Map<String, Object?> encode() => {'auth_token_wo': authTokenWo.toTfJson()};
}

/// The [MonitoringNotificationChannelSensitiveLabelsCredential.password] choice: sets `password`.
final class MonitoringNotificationChannelSensitiveLabelsCredentialPassword
    extends MonitoringNotificationChannelSensitiveLabelsCredential {
  const MonitoringNotificationChannelSensitiveLabelsCredentialPassword(
    this.password,
  );

  final TfArg<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};
}

/// The [MonitoringNotificationChannelSensitiveLabelsCredential.passwordWo] choice: sets `password_wo`.
final class MonitoringNotificationChannelSensitiveLabelsCredentialPasswordWo
    extends MonitoringNotificationChannelSensitiveLabelsCredential {
  const MonitoringNotificationChannelSensitiveLabelsCredentialPasswordWo(
    this.passwordWo,
  );

  final TfArg<String> passwordWo;

  @override
  String get blockKey => 'password_wo';

  @override
  Map<String, Object?> encode() => {'password_wo': passwordWo.toTfJson()};
}

/// The [MonitoringNotificationChannelSensitiveLabelsCredential.serviceKey] choice: sets `service_key`.
final class MonitoringNotificationChannelSensitiveLabelsCredentialServiceKey
    extends MonitoringNotificationChannelSensitiveLabelsCredential {
  const MonitoringNotificationChannelSensitiveLabelsCredentialServiceKey(
    this.serviceKey,
  );

  final TfArg<String> serviceKey;

  @override
  String get blockKey => 'service_key';

  @override
  Map<String, Object?> encode() => {'service_key': serviceKey.toTfJson()};
}

/// The [MonitoringNotificationChannelSensitiveLabelsCredential.serviceKeyWo] choice: sets `service_key_wo`.
final class MonitoringNotificationChannelSensitiveLabelsCredentialServiceKeyWo
    extends MonitoringNotificationChannelSensitiveLabelsCredential {
  const MonitoringNotificationChannelSensitiveLabelsCredentialServiceKeyWo(
    this.serviceKeyWo,
  );

  final TfArg<String> serviceKeyWo;

  @override
  String get blockKey => 'service_key_wo';

  @override
  Map<String, Object?> encode() => {'service_key_wo': serviceKeyWo.toTfJson()};
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
///   `sensitiveLabels` as `credential: .authToken(...)` (NOT in `labels`).
/// - `"pagerduty"` — `labels: {'service_name': 'prod-oncall'}`. The
///   integration service key goes in `credential: .serviceKey(...)`.
/// - `"sms"` — `labels: {'number': '+15551234567'}` (E.164 format,
///   pre-verified phone numbers only).
/// - `"webhook_basicauth"` — `labels: {'url': 'https://...'}` +
///   `credential: .password(...)` (with the basic-auth username embedded
///   in the URL or in `labels`).
/// - `"webhook_tokenauth"` — `labels: {'url': 'https://...'}` +
///   `credential: .authToken(...)` for the bearer token.
/// - `"pubsub"` — `labels: {'topic': 'projects/<p>/topics/<t>'}`. The
///   service account that posts to the topic is managed via IAM, not
///   via this resource.
///
/// Credentials handling: any value containing a secret (Slack token,
/// PagerDuty service key, webhook auth token / basic-auth password) MUST
/// be placed in [sensitiveLabels] rather than [labels]. The provider
/// rejects configurations that supply the same logical secret in both
/// places, and only [sensitiveLabels] entries are masked from plan
/// output. `sensitiveLabels.credential` is sealed — exactly one of the
/// 3 plaintext variants (`.authToken`, `.password`, `.serviceKey`, flagged
/// sensitive by the provider schema) or their write-only siblings
/// (`.authTokenWo`, `.passwordWo`, `.serviceKeyWo`), which keep the
/// plaintext out of Terraform state entirely on Terraform 1.11+ — prefer
/// them when your CLI version supports it, bumping the matching
/// `*WoVersion` field to force rotation.
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
///   displayName: .literal('#oncall alerts'),
///   type: .literal('slack'),
///   labels: .literal(const {
///     'channel_name': '#oncall',
///     'team': 'T01234ABCD',
///   }),
///   sensitiveLabels: MonitoringNotificationChannelSensitiveLabels(
///     credential: .authTokenWo(.ref(slackBotTokenSecret.versionRef)),
///     authTokenWoVersion: .literal('1'),
///   ),
///   userLabels: .literal(const {'team': 'platform'}),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': ?displayName,
           'type': type,
           'labels': ?labels,
           if (sensitiveLabels != null)
             'sensitive_labels': TfArg.literal(sensitiveLabels.encode()),
           'user_labels': ?userLabels,
           'description': ?description,
           'enabled': ?enabled,
           'force_delete': ?forceDelete,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMonitoringNotificationChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringNotificationChannel>`.
  RefTo<GoogleMonitoringNotificationChannel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `verification_status` attribute.
  TfRef<String> get verificationStatus =>
      TfRef.attribute<String>(this, 'verification_status');
}

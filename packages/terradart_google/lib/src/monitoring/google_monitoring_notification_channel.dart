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

  final MonitoringNotificationChannelCredential credential;

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
sealed class MonitoringNotificationChannelCredential {
  const MonitoringNotificationChannelCredential();

  /// Sets `auth_token`.
  const factory MonitoringNotificationChannelCredential.authToken(
    Sensitive<String> authToken,
  ) = MonitoringNotificationChannelCredentialAuthToken;

  /// Sets `auth_token_wo`.
  const factory MonitoringNotificationChannelCredential.authTokenWo(
    TfArg<String> authTokenWo,
  ) = MonitoringNotificationChannelCredentialAuthTokenWo;

  /// Sets `password`.
  const factory MonitoringNotificationChannelCredential.password(
    Sensitive<String> password,
  ) = MonitoringNotificationChannelCredentialPassword;

  /// Sets `password_wo`.
  const factory MonitoringNotificationChannelCredential.passwordWo(
    TfArg<String> passwordWo,
  ) = MonitoringNotificationChannelCredentialPasswordWo;

  /// Sets `service_key`.
  const factory MonitoringNotificationChannelCredential.serviceKey(
    Sensitive<String> serviceKey,
  ) = MonitoringNotificationChannelCredentialServiceKey;

  /// Sets `service_key_wo`.
  const factory MonitoringNotificationChannelCredential.serviceKeyWo(
    TfArg<String> serviceKeyWo,
  ) = MonitoringNotificationChannelCredentialServiceKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringNotificationChannelCredential.authToken] choice: sets `auth_token`.
final class MonitoringNotificationChannelCredentialAuthToken
    extends MonitoringNotificationChannelCredential {
  const MonitoringNotificationChannelCredentialAuthToken(this.authToken);

  final Sensitive<String> authToken;

  @override
  String get blockKey => 'auth_token';

  @override
  Map<String, Object?> encode() => {'auth_token': authToken.toTfJson()};
}

/// The [MonitoringNotificationChannelCredential.authTokenWo] choice: sets `auth_token_wo`.
final class MonitoringNotificationChannelCredentialAuthTokenWo
    extends MonitoringNotificationChannelCredential {
  const MonitoringNotificationChannelCredentialAuthTokenWo(this.authTokenWo);

  final TfArg<String> authTokenWo;

  @override
  String get blockKey => 'auth_token_wo';

  @override
  Map<String, Object?> encode() => {'auth_token_wo': authTokenWo.toTfJson()};
}

/// The [MonitoringNotificationChannelCredential.password] choice: sets `password`.
final class MonitoringNotificationChannelCredentialPassword
    extends MonitoringNotificationChannelCredential {
  const MonitoringNotificationChannelCredentialPassword(this.password);

  final Sensitive<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};
}

/// The [MonitoringNotificationChannelCredential.passwordWo] choice: sets `password_wo`.
final class MonitoringNotificationChannelCredentialPasswordWo
    extends MonitoringNotificationChannelCredential {
  const MonitoringNotificationChannelCredentialPasswordWo(this.passwordWo);

  final TfArg<String> passwordWo;

  @override
  String get blockKey => 'password_wo';

  @override
  Map<String, Object?> encode() => {'password_wo': passwordWo.toTfJson()};
}

/// The [MonitoringNotificationChannelCredential.serviceKey] choice: sets `service_key`.
final class MonitoringNotificationChannelCredentialServiceKey
    extends MonitoringNotificationChannelCredential {
  const MonitoringNotificationChannelCredentialServiceKey(this.serviceKey);

  final Sensitive<String> serviceKey;

  @override
  String get blockKey => 'service_key';

  @override
  Map<String, Object?> encode() => {'service_key': serviceKey.toTfJson()};
}

/// The [MonitoringNotificationChannelCredential.serviceKeyWo] choice: sets `service_key_wo`.
final class MonitoringNotificationChannelCredentialServiceKeyWo
    extends MonitoringNotificationChannelCredential {
  const MonitoringNotificationChannelCredentialServiceKeyWo(this.serviceKeyWo);

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
///   'oncall_slack',
///   displayName: .literal('#oncall alerts'),
///   type: .literal('slack'),
///   labels: .literal(const {
///     'channel_name': '#oncall',
///     'team': 'T01234ABCD',
///   }),
///   sensitiveLabels: MonitoringNotificationChannelSensitiveLabels(
///     credential: .authTokenWo(slackBotTokenSecret.version),
///     authTokenWoVersion: .literal('1'),
///   ),
///   userLabels: .literal(const {'team': 'platform'}),
/// );
/// ```
final class GoogleMonitoringNotificationChannel extends Resource {
  static const String tfType = 'google_monitoring_notification_channel';

  GoogleMonitoringNotificationChannel(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `verification_status` attribute.
  TfRef<String> get verificationStatus =>
      TfRef.attribute<String>(this, 'verification_status');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `user_labels` attribute.
  TfRef<Map<String, String>> get userLabels =>
      TfRef.attribute<Map<String, String>>(this, 'user_labels');
}

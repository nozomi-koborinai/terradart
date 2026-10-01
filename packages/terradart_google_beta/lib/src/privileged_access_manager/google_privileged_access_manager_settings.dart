// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privileged_access_manager_settings`.
const Set<String> _googlePrivilegedAccessManagerSettingsSensitive = <String>{};

/// Exactly one of `disable_all_notifications`, `custom_notification_behavior` on the `email_notification_settings` block of `google_privileged_access_manager_settings`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.disableAllNotifications(...)`.
sealed class PrivilegedAccessManagerSettingsEmailNotificationSettings {
  const PrivilegedAccessManagerSettingsEmailNotificationSettings();

  /// Sets `disable_all_notifications`.
  const factory PrivilegedAccessManagerSettingsEmailNotificationSettings.disableAllNotifications(
    PrivilegedAccessManagerSettingsDisableAllNotifications
    disableAllNotifications,
  ) = PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotifications;

  /// Sets `custom_notification_behavior`.
  const factory PrivilegedAccessManagerSettingsEmailNotificationSettings.customNotificationBehavior(
    PrivilegedAccessManagerSettingsCustomNotificationBehavior
    customNotificationBehavior,
  ) = PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehavior;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrivilegedAccessManagerSettingsEmailNotificationSettings.disableAllNotifications] choice: sets `disable_all_notifications`.
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotifications
    extends PrivilegedAccessManagerSettingsEmailNotificationSettings {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotifications(
    this.disableAllNotifications,
  );

  final PrivilegedAccessManagerSettingsDisableAllNotifications
  disableAllNotifications;

  @override
  String get blockKey => 'disable_all_notifications';

  @override
  Map<String, Object?> encode() => {
    'disable_all_notifications': disableAllNotifications.encode(),
  };
}

/// The [PrivilegedAccessManagerSettingsEmailNotificationSettings.customNotificationBehavior] choice: sets `custom_notification_behavior`.
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehavior
    extends PrivilegedAccessManagerSettingsEmailNotificationSettings {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehavior(
    this.customNotificationBehavior,
  );

  final PrivilegedAccessManagerSettingsCustomNotificationBehavior
  customNotificationBehavior;

  @override
  String get blockKey => 'custom_notification_behavior';

  @override
  Map<String, Object?> encode() => {
    'custom_notification_behavior': customNotificationBehavior.encode(),
  };
}

/// Typed helper for the `email_notification_settings.custom_notification_behavior` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsCustomNotificationBehavior {
  const PrivilegedAccessManagerSettingsCustomNotificationBehavior({
    this.adminNotifications,
    this.approverNotifications,
    this.requesterNotifications,
  });

  final PrivilegedAccessManagerSettingsAdminNotifications? adminNotifications;

  final PrivilegedAccessManagerSettingsApproverNotifications?
  approverNotifications;

  final PrivilegedAccessManagerSettingsRequesterNotifications?
  requesterNotifications;

  Map<String, Object?> encode() => {
    'admin_notifications': ?adminNotifications?.encode(),
    'approver_notifications': ?approverNotifications?.encode(),
    'requester_notifications': ?requesterNotifications?.encode(),
  };
}

/// Typed helper for the `email_notification_settings.custom_notification_behavior.admin_notifications` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsAdminNotifications {
  const PrivilegedAccessManagerSettingsAdminNotifications({
    this.grantActivated,
    this.grantActivationFailed,
    this.grantEnded,
    this.grantExternallyModified,
  });

  final PrivilegedAccessManagerSettingsGrantActivated? grantActivated;

  final PrivilegedAccessManagerSettingsGrantActivationFailed?
  grantActivationFailed;

  final PrivilegedAccessManagerSettingsGrantEnded? grantEnded;

  final PrivilegedAccessManagerSettingsGrantExternallyModified?
  grantExternallyModified;

  Map<String, Object?> encode() => {
    'grant_activated': ?grantActivated?.toTfJson(),
    'grant_activation_failed': ?grantActivationFailed?.toTfJson(),
    'grant_ended': ?grantEnded?.toTfJson(),
    'grant_externally_modified': ?grantExternallyModified?.toTfJson(),
  };
}

/// `grant_activated` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsGrantActivated._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsGrantActivated.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsGrantActivated.expression(String template)
    : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsGrantActivated.arg(TfArg<String> arg)
    : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsGrantActivated._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled = PrivilegedAccessManagerSettingsGrantActivated._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = PrivilegedAccessManagerSettingsGrantActivated._(
    TfArgLiteral('DISABLED'),
  );

  static const List<PrivilegedAccessManagerSettingsGrantActivated> values = [
    notificationModeUnspecified,
    enabled,
    disabled,
  ];
}

/// `grant_activation_failed` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsGrantActivationFailed._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsGrantActivationFailed.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsGrantActivationFailed.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsGrantActivationFailed.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsGrantActivationFailed._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled = PrivilegedAccessManagerSettingsGrantActivationFailed._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled =
      PrivilegedAccessManagerSettingsGrantActivationFailed._(
        TfArgLiteral('DISABLED'),
      );

  static const List<PrivilegedAccessManagerSettingsGrantActivationFailed>
  values = [notificationModeUnspecified, enabled, disabled];
}

/// `grant_ended` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsGrantEnded._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsGrantEnded.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsGrantEnded.expression(String template)
    : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsGrantEnded.arg(TfArg<String> arg)
    : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsGrantEnded._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled = PrivilegedAccessManagerSettingsGrantEnded._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = PrivilegedAccessManagerSettingsGrantEnded._(
    TfArgLiteral('DISABLED'),
  );

  static const List<PrivilegedAccessManagerSettingsGrantEnded> values = [
    notificationModeUnspecified,
    enabled,
    disabled,
  ];
}

/// `grant_externally_modified` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsGrantExternallyModified._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsGrantExternallyModified.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsGrantExternallyModified.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsGrantExternallyModified.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsGrantExternallyModified._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled =
      PrivilegedAccessManagerSettingsGrantExternallyModified._(
        TfArgLiteral('ENABLED'),
      );
  static const disabled =
      PrivilegedAccessManagerSettingsGrantExternallyModified._(
        TfArgLiteral('DISABLED'),
      );

  static const List<PrivilegedAccessManagerSettingsGrantExternallyModified>
  values = [notificationModeUnspecified, enabled, disabled];
}

/// Typed helper for the `email_notification_settings.custom_notification_behavior.approver_notifications` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsApproverNotifications {
  const PrivilegedAccessManagerSettingsApproverNotifications({
    this.pendingApproval,
  });

  final PrivilegedAccessManagerSettingsPendingApproval? pendingApproval;

  Map<String, Object?> encode() => {
    'pending_approval': ?pendingApproval?.toTfJson(),
  };
}

/// `pending_approval` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsPendingApproval._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsPendingApproval.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsPendingApproval.expression(String template)
    : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsPendingApproval.arg(TfArg<String> arg)
    : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsPendingApproval._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled = PrivilegedAccessManagerSettingsPendingApproval._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = PrivilegedAccessManagerSettingsPendingApproval._(
    TfArgLiteral('DISABLED'),
  );

  static const List<PrivilegedAccessManagerSettingsPendingApproval> values = [
    notificationModeUnspecified,
    enabled,
    disabled,
  ];
}

/// Typed helper for the `email_notification_settings.custom_notification_behavior.requester_notifications` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsRequesterNotifications {
  const PrivilegedAccessManagerSettingsRequesterNotifications({
    this.entitlementAssigned,
    this.grantActivated,
    this.grantActivationFailed,
    this.grantDenied,
    this.grantEnded,
    this.grantExpired,
    this.grantExternallyModified,
    this.grantRevoked,
  });

  final PrivilegedAccessManagerSettingsEntitlementAssigned? entitlementAssigned;

  final PrivilegedAccessManagerSettingsGrantActivated? grantActivated;

  final PrivilegedAccessManagerSettingsGrantActivationFailed?
  grantActivationFailed;

  final PrivilegedAccessManagerSettingsGrantDenied? grantDenied;

  final PrivilegedAccessManagerSettingsGrantEnded? grantEnded;

  final PrivilegedAccessManagerSettingsGrantExpired? grantExpired;

  final PrivilegedAccessManagerSettingsGrantExternallyModified?
  grantExternallyModified;

  final PrivilegedAccessManagerSettingsGrantRevoked? grantRevoked;

  Map<String, Object?> encode() => {
    'entitlement_assigned': ?entitlementAssigned?.toTfJson(),
    'grant_activated': ?grantActivated?.toTfJson(),
    'grant_activation_failed': ?grantActivationFailed?.toTfJson(),
    'grant_denied': ?grantDenied?.toTfJson(),
    'grant_ended': ?grantEnded?.toTfJson(),
    'grant_expired': ?grantExpired?.toTfJson(),
    'grant_externally_modified': ?grantExternallyModified?.toTfJson(),
    'grant_revoked': ?grantRevoked?.toTfJson(),
  };
}

/// `entitlement_assigned` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsEntitlementAssigned._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsEntitlementAssigned.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsEntitlementAssigned.expression(String template)
    : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsEntitlementAssigned.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsEntitlementAssigned._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled = PrivilegedAccessManagerSettingsEntitlementAssigned._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = PrivilegedAccessManagerSettingsEntitlementAssigned._(
    TfArgLiteral('DISABLED'),
  );

  static const List<PrivilegedAccessManagerSettingsEntitlementAssigned> values =
      [notificationModeUnspecified, enabled, disabled];
}

/// `grant_denied` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsGrantDenied._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsGrantDenied.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsGrantDenied.expression(String template)
    : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsGrantDenied.arg(TfArg<String> arg)
    : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsGrantDenied._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled = PrivilegedAccessManagerSettingsGrantDenied._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = PrivilegedAccessManagerSettingsGrantDenied._(
    TfArgLiteral('DISABLED'),
  );

  static const List<PrivilegedAccessManagerSettingsGrantDenied> values = [
    notificationModeUnspecified,
    enabled,
    disabled,
  ];
}

/// `grant_expired` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsGrantExpired._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsGrantExpired.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsGrantExpired.expression(String template)
    : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsGrantExpired.arg(TfArg<String> arg)
    : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsGrantExpired._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled = PrivilegedAccessManagerSettingsGrantExpired._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = PrivilegedAccessManagerSettingsGrantExpired._(
    TfArgLiteral('DISABLED'),
  );

  static const List<PrivilegedAccessManagerSettingsGrantExpired> values = [
    notificationModeUnspecified,
    enabled,
    disabled,
  ];
}

/// `grant_revoked` — derived from the provider schema description.
extension type const PrivilegedAccessManagerSettingsGrantRevoked._(
  TfArg<String> _
) implements TfArg<String> {
  PrivilegedAccessManagerSettingsGrantRevoked.variable(String name)
    : this._(TfArg.variable(name));
  PrivilegedAccessManagerSettingsGrantRevoked.expression(String template)
    : this._(TfArg.expression(template));
  const PrivilegedAccessManagerSettingsGrantRevoked.arg(TfArg<String> arg)
    : this._(arg);

  static const notificationModeUnspecified =
      PrivilegedAccessManagerSettingsGrantRevoked._(
        TfArgLiteral('NOTIFICATION_MODE_UNSPECIFIED'),
      );
  static const enabled = PrivilegedAccessManagerSettingsGrantRevoked._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = PrivilegedAccessManagerSettingsGrantRevoked._(
    TfArgLiteral('DISABLED'),
  );

  static const List<PrivilegedAccessManagerSettingsGrantRevoked> values = [
    notificationModeUnspecified,
    enabled,
    disabled,
  ];
}

/// Typed helper for the `email_notification_settings.disable_all_notifications` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsDisableAllNotifications {
  const PrivilegedAccessManagerSettingsDisableAllNotifications();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `service_account_approver_settings` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsServiceAccountApproverSettings {
  const PrivilegedAccessManagerSettingsServiceAccountApproverSettings({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Factory wrapper for `google_privileged_access_manager_settings`.
///
/// Settings resource defines the properties, applied directly to the resource
/// or inherited through the hierarchy, to enable consistent, federated use of
/// PAM.
final class GooglePrivilegedAccessManagerSettings extends Resource {
  static const String tfType = 'google_privileged_access_manager_settings';

  GooglePrivilegedAccessManagerSettings(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> parent,
    PrivilegedAccessManagerSettingsEmailNotificationSettings?
    emailNotificationSettings,
    PrivilegedAccessManagerSettingsServiceAccountApproverSettings?
    serviceAccountApproverSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'parent': parent,
           if (emailNotificationSettings != null)
             'email_notification_settings': TfArg.literal(
               emailNotificationSettings.encode(),
             ),
           if (serviceAccountApproverSettings != null)
             'service_account_approver_settings': TfArg.literal(
               serviceAccountApproverSettings.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivilegedAccessManagerSettingsSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivilegedAccessManagerSettings>`.
  RefTo<GooglePrivilegedAccessManagerSettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}

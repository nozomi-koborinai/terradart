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
    PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotifications
    disableAllNotifications,
  ) = PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotificationsChoice;

  /// Sets `custom_notification_behavior`.
  const factory PrivilegedAccessManagerSettingsEmailNotificationSettings.customNotificationBehavior(
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehavior
    customNotificationBehavior,
  ) = PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PrivilegedAccessManagerSettingsEmailNotificationSettings.disableAllNotifications] choice: sets `disable_all_notifications`.
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotificationsChoice
    extends PrivilegedAccessManagerSettingsEmailNotificationSettings {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotificationsChoice(
    this.disableAllNotifications,
  );

  final PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotifications
  disableAllNotifications;

  @override
  String get blockKey => 'disable_all_notifications';

  @override
  Map<String, Object?> encode() => {
    'disable_all_notifications': disableAllNotifications.encode(),
  };
}

/// The [PrivilegedAccessManagerSettingsEmailNotificationSettings.customNotificationBehavior] choice: sets `custom_notification_behavior`.
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorChoice
    extends PrivilegedAccessManagerSettingsEmailNotificationSettings {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorChoice(
    this.customNotificationBehavior,
  );

  final PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehavior
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
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehavior {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehavior({
    this.adminNotifications,
    this.approverNotifications,
    this.requesterNotifications,
  });

  final PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications?
  adminNotifications;

  final PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications?
  approverNotifications;

  final PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications?
  requesterNotifications;

  Map<String, Object?> encode() => {
    if (adminNotifications != null)
      'admin_notifications': adminNotifications!.encode(),
    if (approverNotifications != null)
      'approver_notifications': approverNotifications!.encode(),
    if (requesterNotifications != null)
      'requester_notifications': requesterNotifications!.encode(),
  };
}

/// Typed helper for the `email_notification_settings.custom_notification_behavior.admin_notifications` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications({
    this.grantActivated,
    this.grantActivationFailed,
    this.grantEnded,
    this.grantExternallyModified,
  });

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantActivated
  >?
  grantActivated;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantActivationFailed
  >?
  grantActivationFailed;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantEnded
  >?
  grantEnded;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantExternallyModified
  >?
  grantExternallyModified;

  Map<String, Object?> encode() => {
    if (grantActivated != null) 'grant_activated': grantActivated!.toTfJson(),
    if (grantActivationFailed != null)
      'grant_activation_failed': grantActivationFailed!.toTfJson(),
    if (grantEnded != null) 'grant_ended': grantEnded!.toTfJson(),
    if (grantExternallyModified != null)
      'grant_externally_modified': grantExternallyModified!.toTfJson(),
  };
}

/// `grant_activated` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantActivated
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantActivated(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_activation_failed` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantActivationFailed
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantActivationFailed(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_ended` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantEnded
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantEnded(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_externally_modified` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantExternallyModified
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotificationsGrantExternallyModified(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `email_notification_settings.custom_notification_behavior.approver_notifications` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications({
    this.pendingApproval,
  });

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotificationsPendingApproval
  >?
  pendingApproval;

  Map<String, Object?> encode() => {
    if (pendingApproval != null)
      'pending_approval': pendingApproval!.toTfJson(),
  };
}

/// `pending_approval` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotificationsPendingApproval
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotificationsPendingApproval(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `email_notification_settings.custom_notification_behavior.requester_notifications` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications({
    this.entitlementAssigned,
    this.grantActivated,
    this.grantActivationFailed,
    this.grantDenied,
    this.grantEnded,
    this.grantExpired,
    this.grantExternallyModified,
    this.grantRevoked,
  });

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsEntitlementAssigned
  >?
  entitlementAssigned;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantActivated
  >?
  grantActivated;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantActivationFailed
  >?
  grantActivationFailed;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantDenied
  >?
  grantDenied;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantEnded
  >?
  grantEnded;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantExpired
  >?
  grantExpired;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantExternallyModified
  >?
  grantExternallyModified;

  final TfArg<
    PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantRevoked
  >?
  grantRevoked;

  Map<String, Object?> encode() => {
    if (entitlementAssigned != null)
      'entitlement_assigned': entitlementAssigned!.toTfJson(),
    if (grantActivated != null) 'grant_activated': grantActivated!.toTfJson(),
    if (grantActivationFailed != null)
      'grant_activation_failed': grantActivationFailed!.toTfJson(),
    if (grantDenied != null) 'grant_denied': grantDenied!.toTfJson(),
    if (grantEnded != null) 'grant_ended': grantEnded!.toTfJson(),
    if (grantExpired != null) 'grant_expired': grantExpired!.toTfJson(),
    if (grantExternallyModified != null)
      'grant_externally_modified': grantExternallyModified!.toTfJson(),
    if (grantRevoked != null) 'grant_revoked': grantRevoked!.toTfJson(),
  };
}

/// `entitlement_assigned` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsEntitlementAssigned
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsEntitlementAssigned(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_activated` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantActivated
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantActivated(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_activation_failed` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantActivationFailed
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantActivationFailed(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_denied` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantDenied
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantDenied(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_ended` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantEnded
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantEnded(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_expired` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantExpired
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantExpired(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_externally_modified` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantExternallyModified
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantExternallyModified(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `grant_revoked` — derived from the provider schema description.
enum PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantRevoked
    implements TerraformEnum {
  notificationModeUnspecified('NOTIFICATION_MODE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const PrivilegedAccessManagerSettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsGrantRevoked(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `email_notification_settings.disable_all_notifications` block of
/// `google_privileged_access_manager_settings` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotifications {
  const PrivilegedAccessManagerSettingsEmailNotificationSettingsDisableAllNotifications();

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

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `google_privileged_access_manager_settings`.
///
/// Settings resource defines the properties, applied directly to the resource
/// or inherited through the hierarchy, to enable consistent, federated use of
/// PAM.
final class GooglePrivilegedAccessManagerSettings extends Resource {
  static const String tfType = 'google_privileged_access_manager_settings';

  GooglePrivilegedAccessManagerSettings({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> parent,
    PrivilegedAccessManagerSettingsEmailNotificationSettings?
    emailNotificationSettings,
    PrivilegedAccessManagerSettingsServiceAccountApproverSettings?
    serviceAccountApproverSettings,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivilegedAccessManagerSettings>`.
  RefTo<GooglePrivilegedAccessManagerSettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

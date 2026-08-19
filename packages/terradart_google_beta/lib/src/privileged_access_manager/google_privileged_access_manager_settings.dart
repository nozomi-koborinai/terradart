// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privileged_access_manager_settings`.
const Set<String> _googlePrivilegedAccessManagerSettingsSensitive = <String>{};

/// Factory wrapper for `google_privileged_access_manager_settings`.
final class GooglePrivilegedAccessManagerSettings extends Resource {
  static const String tfType = 'google_privileged_access_manager_settings';

  GooglePrivilegedAccessManagerSettings({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> parent,
    TfArg<Map<String, dynamic>>? emailNotificationSettings,
    TfArg<Map<String, dynamic>>? serviceAccountApproverSettings,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'location': location,
           'parent': parent,
           if (emailNotificationSettings != null)
             'email_notification_settings': emailNotificationSettings,
           if (serviceAccountApproverSettings != null)
             'service_account_approver_settings':
                 serviceAccountApproverSettings,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivilegedAccessManagerSettingsSensitive;
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_notification_service_account`.
const Set<String> _googleSccNotificationServiceAccountSensitive = <String>{};

/// Factory wrapper for `google_scc_notification_service_account`.
final class GoogleSccNotificationServiceAccount extends Resource {
  static const String tfType = 'google_scc_notification_service_account';

  GoogleSccNotificationServiceAccount({
    required super.localName,
    TfArg<String>? organization,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'organization': ?organization, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccNotificationServiceAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccNotificationServiceAccount>`.
  RefTo<GoogleSccNotificationServiceAccount> get ref => RefTo.of(this);
}

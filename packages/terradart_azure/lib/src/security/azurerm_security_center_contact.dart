// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_security_center_contact`.
const Set<String> _azurermSecurityCenterContactSensitive = <String>{};

/// Factory wrapper for `azurerm_security_center_contact`.
final class AzurermSecurityCenterContact extends Resource {
  static const String tfType = 'azurerm_security_center_contact';

  AzurermSecurityCenterContact(
    super.localName, {
    required TfArg<bool> alertNotifications,
    required TfArg<bool> alertsToAdmins,
    required TfArg<String> email,
    required TfArg<String> name,
    TfArg<String>? phone,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alert_notifications': alertNotifications,
           'alerts_to_admins': alertsToAdmins,
           'email': email,
           'name': name,
           'phone': ?phone,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSecurityCenterContactSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSecurityCenterContact>`.
  RefTo<AzurermSecurityCenterContact> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alert_notifications` attribute.
  TfRef<bool> get alertNotifications =>
      TfRef.attribute<bool>(this, 'alert_notifications');

  /// Reference to `alerts_to_admins` attribute.
  TfRef<bool> get alertsToAdmins =>
      TfRef.attribute<bool>(this, 'alerts_to_admins');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `phone` attribute.
  TfRef<String> get phone => TfRef.attribute<String>(this, 'phone');
}

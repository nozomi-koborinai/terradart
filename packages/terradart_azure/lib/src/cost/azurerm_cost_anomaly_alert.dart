// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cost_anomaly_alert`.
const Set<String> _azurermCostAnomalyAlertSensitive = <String>{};

/// Factory wrapper for `azurerm_cost_anomaly_alert`.
final class AzurermCostAnomalyAlert extends Resource {
  static const String tfType = 'azurerm_cost_anomaly_alert';

  AzurermCostAnomalyAlert(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<List<String>> emailAddresses,
    required TfArg<String> emailSubject,
    TfArg<String>? message,
    required TfArg<String> name,
    TfArg<String>? notificationEmail,
    TfArg<String>? subscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'email_addresses': emailAddresses,
           'email_subject': emailSubject,
           'message': ?message,
           'name': name,
           'notification_email': ?notificationEmail,
           'subscription_id': ?subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCostAnomalyAlertSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCostAnomalyAlert>`.
  RefTo<AzurermCostAnomalyAlert> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `email_addresses` attribute.
  TfRef<List<String>> get emailAddresses =>
      TfRef.attribute<List<String>>(this, 'email_addresses');

  /// Reference to `email_subject` attribute.
  TfRef<String> get emailSubject =>
      TfRef.attribute<String>(this, 'email_subject');

  /// Reference to `message` attribute.
  TfRef<String> get message => TfRef.attribute<String>(this, 'message');

  /// Reference to `notification_email` attribute.
  TfRef<String> get notificationEmail =>
      TfRef.attribute<String>(this, 'notification_email');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_datadog_monitor`.
const Set<String> _azurermDatadogMonitorSensitive = <String>{
  'datadog_organization.api_key',
  'datadog_organization.application_key',
  'datadog_organization.linking_auth_code',
  'datadog_organization.linking_client_id',
};

/// Typed helper for the `datadog_organization` block of
/// `azurerm_datadog_monitor` (derived from provider schema).
@immutable
final class DatadogMonitorDatadogOrganization {
  const DatadogMonitorDatadogOrganization({
    required this.apiKey,
    required this.applicationKey,
    this.enterpriseAppId,
    this.linkingAuthCode,
    this.linkingClientId,
    this.redirectUri,
  });

  final Sensitive<String> apiKey;

  final Sensitive<String> applicationKey;

  final TfArg<String>? enterpriseAppId;

  final Sensitive<String>? linkingAuthCode;

  final Sensitive<String>? linkingClientId;

  final TfArg<String>? redirectUri;

  @internal
  Map<String, Object?> encode() => {
    'api_key': apiKey.toTfJson(),
    'application_key': applicationKey.toTfJson(),
    'enterprise_app_id': ?enterpriseAppId?.toTfJson(),
    'linking_auth_code': ?linkingAuthCode?.toTfJson(),
    'linking_client_id': ?linkingClientId?.toTfJson(),
    'redirect_uri': ?redirectUri?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_datadog_monitor` (derived from provider schema).
@immutable
final class DatadogMonitorIdentity {
  const DatadogMonitorIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `user` block of
/// `azurerm_datadog_monitor` (derived from provider schema).
@immutable
final class DatadogMonitorUser {
  const DatadogMonitorUser({
    required this.email,
    required this.name,
    this.phoneNumber,
  });

  final TfArg<String> email;

  final TfArg<String> name;

  final TfArg<String>? phoneNumber;

  @internal
  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'name': name.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_datadog_monitor`.
final class AzurermDatadogMonitor extends Resource {
  static const String tfType = 'azurerm_datadog_monitor';

  AzurermDatadogMonitor(
    super.localName, {
    required TfArg<String> location,
    TfArg<bool>? monitoringEnabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    required DatadogMonitorDatadogOrganization datadogOrganization,
    DatadogMonitorIdentity? identity,
    required DatadogMonitorUser user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'monitoring_enabled': ?monitoringEnabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           'datadog_organization': TfArg.literal(datadogOrganization.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'user': TfArg.literal(user.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDatadogMonitorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDatadogMonitor>`.
  RefTo<AzurermDatadogMonitor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `marketplace_subscription_status` attribute.
  TfRef<String> get marketplaceSubscriptionStatus =>
      TfRef.attribute<String>(this, 'marketplace_subscription_status');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `monitoring_enabled` attribute.
  TfRef<bool> get monitoringEnabled =>
      TfRef.attribute<bool>(this, 'monitoring_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

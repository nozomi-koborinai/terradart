// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_servicebus_namespace`.
const Set<String> _azurermServicebusNamespaceSensitive = <String>{
  'default_primary_connection_string',
  'default_primary_key',
  'default_secondary_connection_string',
  'default_secondary_key',
};

/// Servicebus Namespace Minimum Tls enum for `minimum_tls_version`.
extension type const ServicebusNamespaceMinimumTlsVersion._(TfArg<String> _)
    implements TfArg<String> {
  ServicebusNamespaceMinimumTlsVersion.variable(String name)
    : this._(TfArg.variable(name));
  ServicebusNamespaceMinimumTlsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const ServicebusNamespaceMinimumTlsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p2 = ServicebusNamespaceMinimumTlsVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p3 = ServicebusNamespaceMinimumTlsVersion._(
    TfArgLiteral('1.3'),
  );

  static const List<ServicebusNamespaceMinimumTlsVersion> values = [v1p2, v1p3];
}

/// Servicebus Namespace enum for `sku`.
extension type const ServicebusNamespaceSku._(TfArg<String> _)
    implements TfArg<String> {
  ServicebusNamespaceSku.variable(String name) : this._(TfArg.variable(name));
  ServicebusNamespaceSku.expression(String template)
    : this._(TfArg.expression(template));
  const ServicebusNamespaceSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = ServicebusNamespaceSku._(TfArgLiteral('Basic'));
  static const premium = ServicebusNamespaceSku._(TfArgLiteral('Premium'));
  static const standard = ServicebusNamespaceSku._(TfArgLiteral('Standard'));

  static const List<ServicebusNamespaceSku> values = [basic, premium, standard];
}

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_servicebus_namespace` (derived from provider schema).
@immutable
final class ServicebusNamespaceCustomerManagedKey {
  const ServicebusNamespaceCustomerManagedKey({
    required this.identityId,
    this.infrastructureEncryptionEnabled,
    required this.keyVaultKeyId,
  });

  final TfArg<String> identityId;

  final TfArg<bool>? infrastructureEncryptionEnabled;

  final TfArg<String> keyVaultKeyId;

  @internal
  Map<String, Object?> encode() => {
    'identity_id': identityId.toTfJson(),
    'infrastructure_encryption_enabled': ?infrastructureEncryptionEnabled
        ?.toTfJson(),
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_servicebus_namespace` (derived from provider schema).
@immutable
final class ServicebusNamespaceIdentity {
  const ServicebusNamespaceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `network_rule_set` block of
/// `azurerm_servicebus_namespace` (derived from provider schema).
@immutable
final class ServicebusNamespaceNetworkRuleSet {
  const ServicebusNamespaceNetworkRuleSet({
    this.defaultAction,
    this.ipRules,
    this.publicNetworkAccessEnabled,
    this.trustedServicesAllowed,
    this.networkRules,
  });

  final ServicebusNamespaceDefaultAction? defaultAction;

  final TfArg<List<String>>? ipRules;

  final TfArg<bool>? publicNetworkAccessEnabled;

  final TfArg<bool>? trustedServicesAllowed;

  final List<ServicebusNamespaceNetworkRules>? networkRules;

  @internal
  Map<String, Object?> encode() => {
    'default_action': ?defaultAction?.toTfJson(),
    'ip_rules': ?ipRules?.toTfJson(),
    'public_network_access_enabled': ?publicNetworkAccessEnabled?.toTfJson(),
    'trusted_services_allowed': ?trustedServicesAllowed?.toTfJson(),
    if (networkRules != null)
      'network_rules': [for (final e in networkRules!) e.encode()],
  };
}

/// `default_action` — derived from the provider schema description.
extension type const ServicebusNamespaceDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  ServicebusNamespaceDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  ServicebusNamespaceDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const ServicebusNamespaceDefaultAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = ServicebusNamespaceDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = ServicebusNamespaceDefaultAction._(TfArgLiteral('Deny'));

  static const List<ServicebusNamespaceDefaultAction> values = [allow, deny];
}

/// Typed helper for the `network_rule_set.network_rules` block of
/// `azurerm_servicebus_namespace` (derived from provider schema).
@immutable
final class ServicebusNamespaceNetworkRules {
  const ServicebusNamespaceNetworkRules({
    this.ignoreMissingVnetServiceEndpoint,
    required this.subnetId,
  });

  final TfArg<bool>? ignoreMissingVnetServiceEndpoint;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'ignore_missing_vnet_service_endpoint': ?ignoreMissingVnetServiceEndpoint
        ?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_servicebus_namespace`.
final class AzurermServicebusNamespace extends Resource {
  static const String tfType = 'azurerm_servicebus_namespace';

  AzurermServicebusNamespace(
    super.localName, {
    TfArg<num>? capacity,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    ServicebusNamespaceMinimumTlsVersion? minimumTlsVersion,
    required TfArg<String> name,
    TfArg<num>? premiumMessagingPartitions,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required ServicebusNamespaceSku sku,
    TfArg<Map<String, String>>? tags,
    ServicebusNamespaceCustomerManagedKey? customerManagedKey,
    ServicebusNamespaceIdentity? identity,
    ServicebusNamespaceNetworkRuleSet? networkRuleSet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity': ?capacity,
           'local_auth_enabled': ?localAuthEnabled,
           'location': location,
           'minimum_tls_version': ?minimumTlsVersion,
           'name': name,
           'premium_messaging_partitions': ?premiumMessagingPartitions,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (networkRuleSet != null)
             'network_rule_set': TfArg.literal(networkRuleSet.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermServicebusNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermServicebusNamespace>`.
  RefTo<AzurermServicebusNamespace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_primary_connection_string` attribute.
  TfRef<String> get defaultPrimaryConnectionString =>
      TfRef.attribute<String>(this, 'default_primary_connection_string');

  /// Reference to `default_primary_key` attribute.
  TfRef<String> get defaultPrimaryKey =>
      TfRef.attribute<String>(this, 'default_primary_key');

  /// Reference to `default_secondary_connection_string` attribute.
  TfRef<String> get defaultSecondaryConnectionString =>
      TfRef.attribute<String>(this, 'default_secondary_connection_string');

  /// Reference to `default_secondary_key` attribute.
  TfRef<String> get defaultSecondaryKey =>
      TfRef.attribute<String>(this, 'default_secondary_key');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `minimum_tls_version` attribute.
  TfRef<String> get minimumTlsVersion =>
      TfRef.attribute<String>(this, 'minimum_tls_version');

  /// Reference to `premium_messaging_partitions` attribute.
  TfRef<num> get premiumMessagingPartitions =>
      TfRef.attribute<num>(this, 'premium_messaging_partitions');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_account_network_rules`.
const Set<String> _azurermStorageAccountNetworkRulesSensitive = <String>{};

/// Storage Account Network Rules enum for `bypass`.
extension type const StorageAccountNetworkRulesBypass._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountNetworkRulesBypass.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountNetworkRulesBypass.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountNetworkRulesBypass.arg(TfArg<String> arg) : this._(arg);

  static const azureservices = StorageAccountNetworkRulesBypass._(
    TfArgLiteral('AzureServices'),
  );
  static const logging = StorageAccountNetworkRulesBypass._(
    TfArgLiteral('Logging'),
  );
  static const metrics = StorageAccountNetworkRulesBypass._(
    TfArgLiteral('Metrics'),
  );
  static const none = StorageAccountNetworkRulesBypass._(TfArgLiteral('None'));

  static const List<StorageAccountNetworkRulesBypass> values = [
    azureservices,
    logging,
    metrics,
    none,
  ];
}

/// Storage Account Network Rules Default enum for `default_action`.
extension type const StorageAccountNetworkRulesDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  StorageAccountNetworkRulesDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  StorageAccountNetworkRulesDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const StorageAccountNetworkRulesDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = StorageAccountNetworkRulesDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = StorageAccountNetworkRulesDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<StorageAccountNetworkRulesDefaultAction> values = [
    allow,
    deny,
  ];
}

/// Typed helper for the `private_link_access` block of
/// `azurerm_storage_account_network_rules` (derived from provider schema).
@immutable
final class StorageAccountNetworkRulesPrivateLinkAccess {
  const StorageAccountNetworkRulesPrivateLinkAccess({
    required this.endpointResourceId,
    this.endpointTenantId,
  });

  final TfArg<String> endpointResourceId;

  final TfArg<String>? endpointTenantId;

  @internal
  Map<String, Object?> encode() => {
    'endpoint_resource_id': endpointResourceId.toTfJson(),
    'endpoint_tenant_id': ?endpointTenantId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_storage_account_network_rules`.
final class AzurermStorageAccountNetworkRules extends Resource {
  static const String tfType = 'azurerm_storage_account_network_rules';

  AzurermStorageAccountNetworkRules(
    super.localName, {
    EnumList<StorageAccountNetworkRulesBypass>? bypass,
    required StorageAccountNetworkRulesDefaultAction defaultAction,
    TfArg<List<String>>? ipRules,
    required RefTo<AzurermStorageAccount> storageAccountId,
    TfArg<List<String>>? virtualNetworkSubnetIds,
    List<StorageAccountNetworkRulesPrivateLinkAccess>? privateLinkAccess,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bypass': ?bypass,
           'default_action': defaultAction,
           'ip_rules': ?ipRules,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'virtual_network_subnet_ids': ?virtualNetworkSubnetIds,
           if (privateLinkAccess != null)
             'private_link_access': TfArg.literal([
               for (final e in privateLinkAccess) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageAccountNetworkRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageAccountNetworkRules>`.
  RefTo<AzurermStorageAccountNetworkRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bypass` attribute.
  TfRef<List<String>> get bypass =>
      TfRef.attribute<List<String>>(this, 'bypass');

  /// Reference to `default_action` attribute.
  TfRef<String> get defaultAction =>
      TfRef.attribute<String>(this, 'default_action');

  /// Reference to `ip_rules` attribute.
  TfRef<List<String>> get ipRules =>
      TfRef.attribute<List<String>>(this, 'ip_rules');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `virtual_network_subnet_ids` attribute.
  TfRef<List<String>> get virtualNetworkSubnetIds =>
      TfRef.attribute<List<String>>(this, 'virtual_network_subnet_ids');
}

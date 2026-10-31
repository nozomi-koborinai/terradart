// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_search_service`.
const Set<String> _azurermSearchServiceSensitive = <String>{
  'primary_key',
  'secondary_key',
};

/// Search Service Authentication Failure enum for `authentication_failure_mode`.
extension type const SearchServiceAuthenticationFailureMode._(TfArg<String> _)
    implements TfArg<String> {
  SearchServiceAuthenticationFailureMode.variable(String name)
    : this._(TfArg.variable(name));
  SearchServiceAuthenticationFailureMode.expression(String template)
    : this._(TfArg.expression(template));
  const SearchServiceAuthenticationFailureMode.arg(TfArg<String> arg)
    : this._(arg);

  static const http401withbearerchallenge =
      SearchServiceAuthenticationFailureMode._(
        TfArgLiteral('http401WithBearerChallenge'),
      );
  static const http403 = SearchServiceAuthenticationFailureMode._(
    TfArgLiteral('http403'),
  );

  static const List<SearchServiceAuthenticationFailureMode> values = [
    http401withbearerchallenge,
    http403,
  ];
}

/// Search Service Hosting enum for `hosting_mode`.
extension type const SearchServiceHostingMode._(TfArg<String> _)
    implements TfArg<String> {
  SearchServiceHostingMode.variable(String name) : this._(TfArg.variable(name));
  SearchServiceHostingMode.expression(String template)
    : this._(TfArg.expression(template));
  const SearchServiceHostingMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = SearchServiceHostingMode._(
    TfArgLiteral('Default'),
  );
  static const highdensity = SearchServiceHostingMode._(
    TfArgLiteral('HighDensity'),
  );

  static const List<SearchServiceHostingMode> values = [
    defaultCase,
    highdensity,
  ];
}

/// Search Service Network Rule Bypass enum for `network_rule_bypass_option`.
extension type const SearchServiceNetworkRuleBypassOption._(TfArg<String> _)
    implements TfArg<String> {
  SearchServiceNetworkRuleBypassOption.variable(String name)
    : this._(TfArg.variable(name));
  SearchServiceNetworkRuleBypassOption.expression(String template)
    : this._(TfArg.expression(template));
  const SearchServiceNetworkRuleBypassOption.arg(TfArg<String> arg)
    : this._(arg);

  static const azureservices = SearchServiceNetworkRuleBypassOption._(
    TfArgLiteral('AzureServices'),
  );
  static const none = SearchServiceNetworkRuleBypassOption._(
    TfArgLiteral('None'),
  );

  static const List<SearchServiceNetworkRuleBypassOption> values = [
    azureservices,
    none,
  ];
}

/// Search Service Semantic Search enum for `semantic_search_sku`.
extension type const SearchServiceSemanticSearchSku._(TfArg<String> _)
    implements TfArg<String> {
  SearchServiceSemanticSearchSku.variable(String name)
    : this._(TfArg.variable(name));
  SearchServiceSemanticSearchSku.expression(String template)
    : this._(TfArg.expression(template));
  const SearchServiceSemanticSearchSku.arg(TfArg<String> arg) : this._(arg);

  static const free = SearchServiceSemanticSearchSku._(TfArgLiteral('free'));
  static const standard = SearchServiceSemanticSearchSku._(
    TfArgLiteral('standard'),
  );

  static const List<SearchServiceSemanticSearchSku> values = [free, standard];
}

/// Search Service enum for `sku`.
extension type const SearchServiceSku._(TfArg<String> _)
    implements TfArg<String> {
  SearchServiceSku.variable(String name) : this._(TfArg.variable(name));
  SearchServiceSku.expression(String template)
    : this._(TfArg.expression(template));
  const SearchServiceSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = SearchServiceSku._(TfArgLiteral('basic'));
  static const free = SearchServiceSku._(TfArgLiteral('free'));
  static const standard = SearchServiceSku._(TfArgLiteral('standard'));
  static const standard3 = SearchServiceSku._(TfArgLiteral('standard3'));
  static const standard2 = SearchServiceSku._(TfArgLiteral('standard2'));
  static const storageOptimizedL1 = SearchServiceSku._(
    TfArgLiteral('storage_optimized_l1'),
  );
  static const storageOptimizedL2 = SearchServiceSku._(
    TfArgLiteral('storage_optimized_l2'),
  );

  static const List<SearchServiceSku> values = [
    basic,
    free,
    standard,
    standard3,
    standard2,
    storageOptimizedL1,
    storageOptimizedL2,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_search_service` (derived from provider schema).
@immutable
final class SearchServiceIdentity {
  const SearchServiceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_search_service`.
final class AzurermSearchService extends Resource {
  static const String tfType = 'azurerm_search_service';

  AzurermSearchService(
    super.localName, {
    TfArg<List<String>>? allowedIps,
    SearchServiceAuthenticationFailureMode? authenticationFailureMode,
    TfArg<bool>? customerManagedKeyEnforcementEnabled,
    SearchServiceHostingMode? hostingMode,
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    SearchServiceNetworkRuleBypassOption? networkRuleBypassOption,
    TfArg<num>? partitionCount,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<num>? replicaCount,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    SearchServiceSemanticSearchSku? semanticSearchSku,
    required SearchServiceSku sku,
    TfArg<Map<String, String>>? tags,
    SearchServiceIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_ips': ?allowedIps,
           'authentication_failure_mode': ?authenticationFailureMode,
           'customer_managed_key_enforcement_enabled':
               ?customerManagedKeyEnforcementEnabled,
           'hosting_mode': ?hostingMode,
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'name': name,
           'network_rule_bypass_option': ?networkRuleBypassOption,
           'partition_count': ?partitionCount,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'replica_count': ?replicaCount,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'semantic_search_sku': ?semanticSearchSku,
           'sku': sku,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSearchServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSearchService>`.
  RefTo<AzurermSearchService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer_managed_key_encryption_compliance_status` attribute.
  TfRef<String> get customerManagedKeyEncryptionComplianceStatus =>
      TfRef.attribute<String>(
        this,
        'customer_managed_key_encryption_compliance_status',
      );

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `query_keys` attribute.
  TfRef<List<Map<String, Object?>>> get queryKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'query_keys');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `allowed_ips` attribute.
  TfRef<List<String>> get allowedIps =>
      TfRef.attribute<List<String>>(this, 'allowed_ips');

  /// Reference to `authentication_failure_mode` attribute.
  TfRef<String> get authenticationFailureMode =>
      TfRef.attribute<String>(this, 'authentication_failure_mode');

  /// Reference to `customer_managed_key_enforcement_enabled` attribute.
  TfRef<bool> get customerManagedKeyEnforcementEnabled =>
      TfRef.attribute<bool>(this, 'customer_managed_key_enforcement_enabled');

  /// Reference to `hosting_mode` attribute.
  TfRef<String> get hostingMode =>
      TfRef.attribute<String>(this, 'hosting_mode');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_rule_bypass_option` attribute.
  TfRef<String> get networkRuleBypassOption =>
      TfRef.attribute<String>(this, 'network_rule_bypass_option');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCount =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `replica_count` attribute.
  TfRef<num> get replicaCount => TfRef.attribute<num>(this, 'replica_count');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `semantic_search_sku` attribute.
  TfRef<String> get semanticSearchSku =>
      TfRef.attribute<String>(this, 'semantic_search_sku');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

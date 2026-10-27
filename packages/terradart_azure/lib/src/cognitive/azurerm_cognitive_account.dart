// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cognitive_account`.
const Set<String> _azurermCognitiveAccountSensitive = <String>{
  'custom_question_answering_search_service_key',
  'primary_access_key',
  'secondary_access_key',
};

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_cognitive_account` (derived from provider schema).
@immutable
final class CognitiveAccountCustomerManagedKey {
  const CognitiveAccountCustomerManagedKey({
    this.identityClientId,
    required this.keyVaultKeyId,
  });

  final TfArg<String>? identityClientId;

  final TfArg<String> keyVaultKeyId;

  @internal
  Map<String, Object?> encode() => {
    'identity_client_id': ?identityClientId?.toTfJson(),
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_cognitive_account` (derived from provider schema).
@immutable
final class CognitiveAccountIdentity {
  const CognitiveAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `network_acls` block of
/// `azurerm_cognitive_account` (derived from provider schema).
@immutable
final class CognitiveAccountNetworkAcls {
  const CognitiveAccountNetworkAcls({
    this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.virtualNetworkRules,
  });

  final TfArg<String>? bypass;

  final TfArg<String> defaultAction;

  final TfArg<List<String>>? ipRules;

  final List<CognitiveAccountVirtualNetworkRules>? virtualNetworkRules;

  @internal
  Map<String, Object?> encode() => {
    'bypass': ?bypass?.toTfJson(),
    'default_action': defaultAction.toTfJson(),
    'ip_rules': ?ipRules?.toTfJson(),
    if (virtualNetworkRules != null)
      'virtual_network_rules': [
        for (final e in virtualNetworkRules!) e.encode(),
      ],
  };
}

/// Typed helper for the `network_acls.virtual_network_rules` block of
/// `azurerm_cognitive_account` (derived from provider schema).
@immutable
final class CognitiveAccountVirtualNetworkRules {
  const CognitiveAccountVirtualNetworkRules({
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

/// Typed helper for the `network_injection` block of
/// `azurerm_cognitive_account` (derived from provider schema).
@immutable
final class CognitiveAccountNetworkInjection {
  const CognitiveAccountNetworkInjection({
    required this.scenario,
    required this.subnetId,
  });

  final TfArg<String> scenario;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'scenario': scenario.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Typed helper for the `storage` block of
/// `azurerm_cognitive_account` (derived from provider schema).
@immutable
final class CognitiveAccountStorage {
  const CognitiveAccountStorage({
    this.identityClientId,
    required this.storageAccountId,
  });

  final TfArg<String>? identityClientId;

  final TfArg<String> storageAccountId;

  @internal
  Map<String, Object?> encode() => {
    'identity_client_id': ?identityClientId?.toTfJson(),
    'storage_account_id': storageAccountId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cognitive_account`.
final class AzurermCognitiveAccount extends Resource {
  static const String tfType = 'azurerm_cognitive_account';

  AzurermCognitiveAccount(
    super.localName, {
    TfArg<String>? customQuestionAnsweringSearchServiceId,
    Sensitive<String>? customQuestionAnsweringSearchServiceKey,
    TfArg<String>? customSubdomainName,
    TfArg<bool>? dynamicThrottlingEnabled,
    TfArg<List<String>>? fqdns,
    required TfArg<String> kind,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    TfArg<String>? metricsAdvisorAadClientId,
    TfArg<String>? metricsAdvisorAadTenantId,
    TfArg<String>? metricsAdvisorSuperUserName,
    TfArg<String>? metricsAdvisorWebsiteName,
    required TfArg<String> name,
    TfArg<bool>? outboundNetworkAccessRestricted,
    TfArg<bool>? projectManagementEnabled,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<String>? qnaRuntimeEndpoint,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    CognitiveAccountCustomerManagedKey? customerManagedKey,
    CognitiveAccountIdentity? identity,
    CognitiveAccountNetworkAcls? networkAcls,
    CognitiveAccountNetworkInjection? networkInjection,
    List<CognitiveAccountStorage>? storage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_question_answering_search_service_id':
               ?customQuestionAnsweringSearchServiceId,
           'custom_question_answering_search_service_key':
               ?customQuestionAnsweringSearchServiceKey,
           'custom_subdomain_name': ?customSubdomainName,
           'dynamic_throttling_enabled': ?dynamicThrottlingEnabled,
           'fqdns': ?fqdns,
           'kind': kind,
           'local_auth_enabled': ?localAuthEnabled,
           'location': location,
           'metrics_advisor_aad_client_id': ?metricsAdvisorAadClientId,
           'metrics_advisor_aad_tenant_id': ?metricsAdvisorAadTenantId,
           'metrics_advisor_super_user_name': ?metricsAdvisorSuperUserName,
           'metrics_advisor_website_name': ?metricsAdvisorWebsiteName,
           'name': name,
           'outbound_network_access_restricted':
               ?outboundNetworkAccessRestricted,
           'project_management_enabled': ?projectManagementEnabled,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'qna_runtime_endpoint': ?qnaRuntimeEndpoint,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (networkAcls != null)
             'network_acls': TfArg.literal(networkAcls.encode()),
           if (networkInjection != null)
             'network_injection': TfArg.literal(networkInjection.encode()),
           if (storage != null)
             'storage': TfArg.literal([for (final e in storage) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCognitiveAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccount>`.
  RefTo<AzurermCognitiveAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `custom_question_answering_search_service_id` attribute.
  TfRef<String> get customQuestionAnsweringSearchServiceId =>
      TfRef.attribute<String>(
        this,
        'custom_question_answering_search_service_id',
      );

  /// Reference to `custom_question_answering_search_service_key` attribute.
  TfRef<String> get customQuestionAnsweringSearchServiceKey =>
      TfRef.attribute<String>(
        this,
        'custom_question_answering_search_service_key',
      );

  /// Reference to `custom_subdomain_name` attribute.
  TfRef<String> get customSubdomainName =>
      TfRef.attribute<String>(this, 'custom_subdomain_name');

  /// Reference to `dynamic_throttling_enabled` attribute.
  TfRef<bool> get dynamicThrottlingEnabled =>
      TfRef.attribute<bool>(this, 'dynamic_throttling_enabled');

  /// Reference to `fqdns` attribute.
  TfRef<List<String>> get fqdns => TfRef.attribute<List<String>>(this, 'fqdns');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `metrics_advisor_aad_client_id` attribute.
  TfRef<String> get metricsAdvisorAadClientId =>
      TfRef.attribute<String>(this, 'metrics_advisor_aad_client_id');

  /// Reference to `metrics_advisor_aad_tenant_id` attribute.
  TfRef<String> get metricsAdvisorAadTenantId =>
      TfRef.attribute<String>(this, 'metrics_advisor_aad_tenant_id');

  /// Reference to `metrics_advisor_super_user_name` attribute.
  TfRef<String> get metricsAdvisorSuperUserName =>
      TfRef.attribute<String>(this, 'metrics_advisor_super_user_name');

  /// Reference to `metrics_advisor_website_name` attribute.
  TfRef<String> get metricsAdvisorWebsiteName =>
      TfRef.attribute<String>(this, 'metrics_advisor_website_name');

  /// Reference to `outbound_network_access_restricted` attribute.
  TfRef<bool> get outboundNetworkAccessRestricted =>
      TfRef.attribute<bool>(this, 'outbound_network_access_restricted');

  /// Reference to `project_management_enabled` attribute.
  TfRef<bool> get projectManagementEnabled =>
      TfRef.attribute<bool>(this, 'project_management_enabled');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `qna_runtime_endpoint` attribute.
  TfRef<String> get qnaRuntimeEndpoint =>
      TfRef.attribute<String>(this, 'qna_runtime_endpoint');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cognitive/azurerm_cognitive_account.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cognitive_account`.
const Set<String> _azurermCognitiveAccountSensitive = <String>{
  'primary_access_key',
  'secondary_access_key',
};

/// Factory wrapper for `azurerm_cognitive_account`.
final class DataAzurermCognitiveAccount extends Data {
  static const String tfType = 'azurerm_cognitive_account';

  DataAzurermCognitiveAccount(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCognitiveAccountSensitive;

  /// A reference to the `azurerm_cognitive_account` this data source reads, for
  /// arguments typed `RefTo<AzurermCognitiveAccount>`.
  RefTo<AzurermCognitiveAccount> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_question_answering_search_service_id` attribute.
  TfRef<String> get customQuestionAnsweringSearchServiceId =>
      TfRef.attribute<String>(
        this,
        'custom_question_answering_search_service_id',
      );

  /// Reference to `custom_subdomain_name` attribute.
  TfRef<String> get customSubdomainName =>
      TfRef.attribute<String>(this, 'custom_subdomain_name');

  /// Reference to `customer_managed_key` attribute.
  TfRef<List<Map<String, Object?>>> get customerManagedKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'customer_managed_key');

  /// Reference to `dynamic_throttling_enabled` attribute.
  TfRef<bool> get dynamicThrottlingEnabled =>
      TfRef.attribute<bool>(this, 'dynamic_throttling_enabled');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `fqdns` attribute.
  TfRef<List<String>> get fqdns => TfRef.attribute<List<String>>(this, 'fqdns');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

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

  /// Reference to `network_acls` attribute.
  TfRef<List<Map<String, Object?>>> get networkAcls =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_acls');

  /// Reference to `network_injection` attribute.
  TfRef<List<Map<String, Object?>>> get networkInjection =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_injection');

  /// Reference to `outbound_network_access_restricted` attribute.
  TfRef<bool> get outboundNetworkAccessRestricted =>
      TfRef.attribute<bool>(this, 'outbound_network_access_restricted');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `project_management_enabled` attribute.
  TfRef<bool> get projectManagementEnabled =>
      TfRef.attribute<bool>(this, 'project_management_enabled');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `qna_runtime_endpoint` attribute.
  TfRef<String> get qnaRuntimeEndpoint =>
      TfRef.attribute<String>(this, 'qna_runtime_endpoint');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage` attribute.
  TfRef<List<Map<String, Object?>>> get storage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

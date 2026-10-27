// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../app_service/azurerm_service_plan.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_service_plan`.
const Set<String> _azurermServicePlanSensitive = <String>{};

/// Factory wrapper for `azurerm_service_plan`.
final class DataAzurermServicePlan extends Data {
  static const String tfType = 'azurerm_service_plan';

  DataAzurermServicePlan(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermServicePlanSensitive;

  /// A reference to the `azurerm_service_plan` this data source reads, for
  /// arguments typed `RefTo<AzurermServicePlan>`.
  RefTo<AzurermServicePlan> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_service_environment_id` attribute.
  TfRef<String> get appServiceEnvironmentId =>
      TfRef.attribute<String>(this, 'app_service_environment_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_elastic_worker_count` attribute.
  TfRef<num> get maximumElasticWorkerCount =>
      TfRef.attribute<num>(this, 'maximum_elastic_worker_count');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `per_site_scaling_enabled` attribute.
  TfRef<bool> get perSiteScalingEnabled =>
      TfRef.attribute<bool>(this, 'per_site_scaling_enabled');

  /// Reference to `premium_plan_auto_scale_enabled` attribute.
  TfRef<bool> get premiumPlanAutoScaleEnabled =>
      TfRef.attribute<bool>(this, 'premium_plan_auto_scale_enabled');

  /// Reference to `reserved` attribute.
  TfRef<bool> get reserved => TfRef.attribute<bool>(this, 'reserved');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `worker_count` attribute.
  TfRef<num> get workerCount => TfRef.attribute<num>(this, 'worker_count');

  /// Reference to `zone_balancing_enabled` attribute.
  TfRef<bool> get zoneBalancingEnabled =>
      TfRef.attribute<bool>(this, 'zone_balancing_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

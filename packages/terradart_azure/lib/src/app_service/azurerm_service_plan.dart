// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_service_plan`.
const Set<String> _azurermServicePlanSensitive = <String>{};

/// Service Plan Os enum for `os_type`.
extension type const ServicePlanOsType._(TfArg<String> _)
    implements TfArg<String> {
  ServicePlanOsType.variable(String name) : this._(TfArg.variable(name));
  ServicePlanOsType.expression(String template)
    : this._(TfArg.expression(template));
  const ServicePlanOsType.arg(TfArg<String> arg) : this._(arg);

  static const linux = ServicePlanOsType._(TfArgLiteral('Linux'));
  static const windows = ServicePlanOsType._(TfArgLiteral('Windows'));
  static const windowscontainer = ServicePlanOsType._(
    TfArgLiteral('WindowsContainer'),
  );

  static const List<ServicePlanOsType> values = [
    linux,
    windows,
    windowscontainer,
  ];
}

/// Factory wrapper for `azurerm_service_plan`.
final class AzurermServicePlan extends Resource {
  static const String tfType = 'azurerm_service_plan';

  AzurermServicePlan(
    super.localName, {
    TfArg<String>? appServiceEnvironmentId,
    required TfArg<String> location,
    TfArg<num>? maximumElasticWorkerCount,
    required TfArg<String> name,
    required ServicePlanOsType osType,
    TfArg<bool>? perSiteScalingEnabled,
    TfArg<bool>? premiumPlanAutoScaleEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? workerCount,
    TfArg<bool>? zoneBalancingEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_environment_id': ?appServiceEnvironmentId,
           'location': location,
           'maximum_elastic_worker_count': ?maximumElasticWorkerCount,
           'name': name,
           'os_type': osType,
           'per_site_scaling_enabled': ?perSiteScalingEnabled,
           'premium_plan_auto_scale_enabled': ?premiumPlanAutoScaleEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           'worker_count': ?workerCount,
           'zone_balancing_enabled': ?zoneBalancingEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermServicePlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermServicePlan>`.
  RefTo<AzurermServicePlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `reserved` attribute.
  TfRef<bool> get reserved => TfRef.attribute<bool>(this, 'reserved');

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

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

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
}

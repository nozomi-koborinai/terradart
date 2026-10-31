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

/// Service Plan Sku enum for `sku_name`.
extension type const ServicePlanSkuName._(TfArg<String> _)
    implements TfArg<String> {
  ServicePlanSkuName.variable(String name) : this._(TfArg.variable(name));
  ServicePlanSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const ServicePlanSkuName.arg(TfArg<String> arg) : this._(arg);

  static const b1 = ServicePlanSkuName._(TfArgLiteral('B1'));
  static const b2 = ServicePlanSkuName._(TfArgLiteral('B2'));
  static const b3 = ServicePlanSkuName._(TfArgLiteral('B3'));
  static const s1 = ServicePlanSkuName._(TfArgLiteral('S1'));
  static const s2 = ServicePlanSkuName._(TfArgLiteral('S2'));
  static const s3 = ServicePlanSkuName._(TfArgLiteral('S3'));
  static const y1 = ServicePlanSkuName._(TfArgLiteral('Y1'));
  static const ep1 = ServicePlanSkuName._(TfArgLiteral('EP1'));
  static const ep2 = ServicePlanSkuName._(TfArgLiteral('EP2'));
  static const ep3 = ServicePlanSkuName._(TfArgLiteral('EP3'));
  static const fc1 = ServicePlanSkuName._(TfArgLiteral('FC1'));
  static const f1 = ServicePlanSkuName._(TfArgLiteral('F1'));
  static const i1 = ServicePlanSkuName._(TfArgLiteral('I1'));
  static const i2 = ServicePlanSkuName._(TfArgLiteral('I2'));
  static const i3 = ServicePlanSkuName._(TfArgLiteral('I3'));
  static const i1v2 = ServicePlanSkuName._(TfArgLiteral('I1v2'));
  static const i2v2 = ServicePlanSkuName._(TfArgLiteral('I2v2'));
  static const i3v2 = ServicePlanSkuName._(TfArgLiteral('I3v2'));
  static const i4v2 = ServicePlanSkuName._(TfArgLiteral('I4v2'));
  static const i5v2 = ServicePlanSkuName._(TfArgLiteral('I5v2'));
  static const i6v2 = ServicePlanSkuName._(TfArgLiteral('I6v2'));
  static const i1mv2 = ServicePlanSkuName._(TfArgLiteral('I1mv2'));
  static const i2mv2 = ServicePlanSkuName._(TfArgLiteral('I2mv2'));
  static const i3mv2 = ServicePlanSkuName._(TfArgLiteral('I3mv2'));
  static const i4mv2 = ServicePlanSkuName._(TfArgLiteral('I4mv2'));
  static const i5mv2 = ServicePlanSkuName._(TfArgLiteral('I5mv2'));
  static const p1v2 = ServicePlanSkuName._(TfArgLiteral('P1v2'));
  static const p2v2 = ServicePlanSkuName._(TfArgLiteral('P2v2'));
  static const p3v2 = ServicePlanSkuName._(TfArgLiteral('P3v2'));
  static const p0v3 = ServicePlanSkuName._(TfArgLiteral('P0v3'));
  static const p1v3 = ServicePlanSkuName._(TfArgLiteral('P1v3'));
  static const p2v3 = ServicePlanSkuName._(TfArgLiteral('P2v3'));
  static const p3v3 = ServicePlanSkuName._(TfArgLiteral('P3v3'));
  static const p1mv3 = ServicePlanSkuName._(TfArgLiteral('P1mv3'));
  static const p2mv3 = ServicePlanSkuName._(TfArgLiteral('P2mv3'));
  static const p3mv3 = ServicePlanSkuName._(TfArgLiteral('P3mv3'));
  static const p4mv3 = ServicePlanSkuName._(TfArgLiteral('P4mv3'));
  static const p5mv3 = ServicePlanSkuName._(TfArgLiteral('P5mv3'));
  static const p0v4 = ServicePlanSkuName._(TfArgLiteral('P0v4'));
  static const p1v4 = ServicePlanSkuName._(TfArgLiteral('P1v4'));
  static const p2v4 = ServicePlanSkuName._(TfArgLiteral('P2v4'));
  static const p3v4 = ServicePlanSkuName._(TfArgLiteral('P3v4'));
  static const p1mv4 = ServicePlanSkuName._(TfArgLiteral('P1mv4'));
  static const p2mv4 = ServicePlanSkuName._(TfArgLiteral('P2mv4'));
  static const p3mv4 = ServicePlanSkuName._(TfArgLiteral('P3mv4'));
  static const p4mv4 = ServicePlanSkuName._(TfArgLiteral('P4mv4'));
  static const p5mv4 = ServicePlanSkuName._(TfArgLiteral('P5mv4'));
  static const d1 = ServicePlanSkuName._(TfArgLiteral('D1'));
  static const shared = ServicePlanSkuName._(TfArgLiteral('SHARED'));
  static const ws1 = ServicePlanSkuName._(TfArgLiteral('WS1'));
  static const ws2 = ServicePlanSkuName._(TfArgLiteral('WS2'));
  static const ws3 = ServicePlanSkuName._(TfArgLiteral('WS3'));

  static const List<ServicePlanSkuName> values = [
    b1,
    b2,
    b3,
    s1,
    s2,
    s3,
    y1,
    ep1,
    ep2,
    ep3,
    fc1,
    f1,
    i1,
    i2,
    i3,
    i1v2,
    i2v2,
    i3v2,
    i4v2,
    i5v2,
    i6v2,
    i1mv2,
    i2mv2,
    i3mv2,
    i4mv2,
    i5mv2,
    p1v2,
    p2v2,
    p3v2,
    p0v3,
    p1v3,
    p2v3,
    p3v3,
    p1mv3,
    p2mv3,
    p3mv3,
    p4mv3,
    p5mv3,
    p0v4,
    p1v4,
    p2v4,
    p3v4,
    p1mv4,
    p2mv4,
    p3mv4,
    p4mv4,
    p5mv4,
    d1,
    shared,
    ws1,
    ws2,
    ws3,
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
    required ServicePlanSkuName skuName,
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

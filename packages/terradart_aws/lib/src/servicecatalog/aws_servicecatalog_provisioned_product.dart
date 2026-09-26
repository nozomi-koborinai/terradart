// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_provisioned_product`.
const Set<String> _awsServicecatalogProvisionedProductSensitive = <String>{};

/// Typed helper for the `provisioning_parameters` block of
/// `aws_servicecatalog_provisioned_product` (derived from provider schema).
@immutable
final class ServicecatalogProvisionedProductProvisioningParameters {
  const ServicecatalogProvisionedProductProvisioningParameters({
    required this.key,
    this.usePreviousValue,
    this.value,
  });

  final TfArg<String> key;

  final TfArg<bool>? usePreviousValue;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (usePreviousValue != null)
      'use_previous_value': usePreviousValue!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `stack_set_provisioning_preferences` block of
/// `aws_servicecatalog_provisioned_product` (derived from provider schema).
@immutable
final class ServicecatalogProvisionedProductStackSetProvisioningPreferences {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferences({
    this.accounts,
    this.failureToleranceCount,
    this.failureTolerancePercentage,
    this.maxConcurrencyCount,
    this.maxConcurrencyPercentage,
    this.regions,
  });

  final TfArg<List<Object?>>? accounts;

  final TfArg<num>? failureToleranceCount;

  final TfArg<num>? failureTolerancePercentage;

  final TfArg<num>? maxConcurrencyCount;

  final TfArg<num>? maxConcurrencyPercentage;

  final TfArg<List<Object?>>? regions;

  Map<String, Object?> encode() => {
    if (accounts != null) 'accounts': accounts!.toTfJson(),
    if (failureToleranceCount != null)
      'failure_tolerance_count': failureToleranceCount!.toTfJson(),
    if (failureTolerancePercentage != null)
      'failure_tolerance_percentage': failureTolerancePercentage!.toTfJson(),
    if (maxConcurrencyCount != null)
      'max_concurrency_count': maxConcurrencyCount!.toTfJson(),
    if (maxConcurrencyPercentage != null)
      'max_concurrency_percentage': maxConcurrencyPercentage!.toTfJson(),
    if (regions != null) 'regions': regions!.toTfJson(),
  };
}

/// Factory wrapper for `aws_servicecatalog_provisioned_product`.
final class AwsServicecatalogProvisionedProduct extends Resource {
  static const String tfType = 'aws_servicecatalog_provisioned_product';

  AwsServicecatalogProvisionedProduct({
    required super.localName,
    TfArg<String>? acceptLanguage,
    TfArg<bool>? ignoreErrors,
    required TfArg<String> name,
    TfArg<List<String>>? notificationArns,
    TfArg<String>? pathId,
    TfArg<String>? pathName,
    TfArg<String>? productId,
    TfArg<String>? productName,
    TfArg<String>? provisioningArtifactId,
    TfArg<String>? provisioningArtifactName,
    TfArg<String>? region,
    TfArg<bool>? retainPhysicalResources,
    TfArg<Map<String, String>>? tags,
    List<ServicecatalogProvisionedProductProvisioningParameters>?
    provisioningParameters,
    ServicecatalogProvisionedProductStackSetProvisioningPreferences?
    stackSetProvisioningPreferences,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           if (ignoreErrors != null) 'ignore_errors': ignoreErrors,
           'name': name,
           if (notificationArns != null) 'notification_arns': notificationArns,
           if (pathId != null) 'path_id': pathId,
           if (pathName != null) 'path_name': pathName,
           if (productId != null) 'product_id': productId,
           if (productName != null) 'product_name': productName,
           if (provisioningArtifactId != null)
             'provisioning_artifact_id': provisioningArtifactId,
           if (provisioningArtifactName != null)
             'provisioning_artifact_name': provisioningArtifactName,
           if (region != null) 'region': region,
           if (retainPhysicalResources != null)
             'retain_physical_resources': retainPhysicalResources,
           if (tags != null) 'tags': tags,
           if (provisioningParameters != null)
             'provisioning_parameters': TfArg.literal([
               for (final e in provisioningParameters) e.encode(),
             ]),
           if (stackSetProvisioningPreferences != null)
             'stack_set_provisioning_preferences': TfArg.literal(
               stackSetProvisioningPreferences.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogProvisionedProductSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cloudwatch_dashboard_names` attribute.
  TfRef<List<String>> get cloudwatchDashboardNames =>
      TfRef.attribute<List<String>>(this, 'cloudwatch_dashboard_names');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `last_provisioning_record_id` attribute.
  TfRef<String> get lastProvisioningRecordId =>
      TfRef.attribute<String>(this, 'last_provisioning_record_id');

  /// Reference to `last_record_id` attribute.
  TfRef<String> get lastRecordId =>
      TfRef.attribute<String>(this, 'last_record_id');

  /// Reference to `last_successful_provisioning_record_id` attribute.
  TfRef<String> get lastSuccessfulProvisioningRecordId =>
      TfRef.attribute<String>(this, 'last_successful_provisioning_record_id');

  /// Reference to `launch_role_arn` attribute.
  TfRef<String> get launchRoleArn =>
      TfRef.attribute<String>(this, 'launch_role_arn');

  /// Reference to `outputs` attribute.
  TfRef<List<Map<String, Object?>>> get outputs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'outputs');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

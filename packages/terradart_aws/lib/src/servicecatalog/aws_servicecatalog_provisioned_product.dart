// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_provisioned_product`.
const Set<String> _awsServicecatalogProvisionedProductSensitive = <String>{};

/// Servicecatalog Provisioned Product Accept enum for `accept_language`.
enum ServicecatalogProvisionedProductAcceptLanguage implements TerraformEnum {
  en('en'),
  jp('jp'),
  zh('zh');

  const ServicecatalogProvisionedProductAcceptLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `product_id`, `product_name` on `aws_servicecatalog_provisioned_product`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class ServicecatalogProvisionedProductProductIdOrProductName {
  const ServicecatalogProvisionedProductProductIdOrProductName();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `product_id` (one of the [ServicecatalogProvisionedProductProductIdOrProductName] choices).
final class ServicecatalogProvisionedProductProductIdOption
    extends ServicecatalogProvisionedProductProductIdOrProductName {
  const ServicecatalogProvisionedProductProductIdOption({
    required this.productId,
  });

  final TfArg<String> productId;

  @override
  String get blockKey => 'product_id';

  @override
  Map<String, Object?> encode() => {'product_id': productId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'product_id': productId};
}

/// Sets `product_name` (one of the [ServicecatalogProvisionedProductProductIdOrProductName] choices).
final class ServicecatalogProvisionedProductProductNameOption
    extends ServicecatalogProvisionedProductProductIdOrProductName {
  const ServicecatalogProvisionedProductProductNameOption({
    required this.productName,
  });

  final TfArg<String> productName;

  @override
  String get blockKey => 'product_name';

  @override
  Map<String, Object?> encode() => {'product_name': productName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'product_name': productName};
}

/// Exactly one of `provisioning_artifact_id`, `provisioning_artifact_name` on `aws_servicecatalog_provisioned_product`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName {
  const ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `provisioning_artifact_id` (one of the [ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName] choices).
final class ServicecatalogProvisionedProductProvisioningArtifactIdOption
    extends
        ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName {
  const ServicecatalogProvisionedProductProvisioningArtifactIdOption({
    required this.provisioningArtifactId,
  });

  final TfArg<String> provisioningArtifactId;

  @override
  String get blockKey => 'provisioning_artifact_id';

  @override
  Map<String, Object?> encode() => {
    'provisioning_artifact_id': provisioningArtifactId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'provisioning_artifact_id': provisioningArtifactId,
  };
}

/// Sets `provisioning_artifact_name` (one of the [ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName] choices).
final class ServicecatalogProvisionedProductProvisioningArtifactNameOption
    extends
        ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName {
  const ServicecatalogProvisionedProductProvisioningArtifactNameOption({
    required this.provisioningArtifactName,
  });

  final TfArg<String> provisioningArtifactName;

  @override
  String get blockKey => 'provisioning_artifact_name';

  @override
  Map<String, Object?> encode() => {
    'provisioning_artifact_name': provisioningArtifactName.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'provisioning_artifact_name': provisioningArtifactName,
  };
}

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
    required this.failureToleranceCountOrFailureTolerancePercentage,
    required this.maxConcurrencyCountOrMaxConcurrencyPercentage,
    this.regions,
  });

  final TfArg<List<Object?>>? accounts;

  final ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage
  failureToleranceCountOrFailureTolerancePercentage;

  final ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage
  maxConcurrencyCountOrMaxConcurrencyPercentage;

  final TfArg<List<Object?>>? regions;

  Map<String, Object?> encode() => {
    if (accounts != null) 'accounts': accounts!.toTfJson(),
    ...failureToleranceCountOrFailureTolerancePercentage.encode(),
    ...maxConcurrencyCountOrMaxConcurrencyPercentage.encode(),
    if (regions != null) 'regions': regions!.toTfJson(),
  };
}

/// Exactly one of `failure_tolerance_count`, `failure_tolerance_percentage` on the `stack_set_provisioning_preferences` block of `aws_servicecatalog_provisioned_product`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `failure_tolerance_count` (one of the [ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage] choices).
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOption
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOption({
    required this.failureToleranceCount,
  });

  final TfArg<num> failureToleranceCount;

  @override
  String get blockKey => 'failure_tolerance_count';

  @override
  Map<String, Object?> encode() => {
    'failure_tolerance_count': failureToleranceCount.toTfJson(),
  };
}

/// Sets `failure_tolerance_percentage` (one of the [ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage] choices).
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerancePercentageOption
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerancePercentageOption({
    required this.failureTolerancePercentage,
  });

  final TfArg<num> failureTolerancePercentage;

  @override
  String get blockKey => 'failure_tolerance_percentage';

  @override
  Map<String, Object?> encode() => {
    'failure_tolerance_percentage': failureTolerancePercentage.toTfJson(),
  };
}

/// Exactly one of `max_concurrency_count`, `max_concurrency_percentage` on the `stack_set_provisioning_preferences` block of `aws_servicecatalog_provisioned_product`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `max_concurrency_count` (one of the [ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage] choices).
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOption
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOption({
    required this.maxConcurrencyCount,
  });

  final TfArg<num> maxConcurrencyCount;

  @override
  String get blockKey => 'max_concurrency_count';

  @override
  Map<String, Object?> encode() => {
    'max_concurrency_count': maxConcurrencyCount.toTfJson(),
  };
}

/// Sets `max_concurrency_percentage` (one of the [ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage] choices).
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyPercentageOption
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyPercentageOption({
    required this.maxConcurrencyPercentage,
  });

  final TfArg<num> maxConcurrencyPercentage;

  @override
  String get blockKey => 'max_concurrency_percentage';

  @override
  Map<String, Object?> encode() => {
    'max_concurrency_percentage': maxConcurrencyPercentage.toTfJson(),
  };
}

/// Factory wrapper for `aws_servicecatalog_provisioned_product`.
final class AwsServicecatalogProvisionedProduct extends Resource {
  static const String tfType = 'aws_servicecatalog_provisioned_product';

  AwsServicecatalogProvisionedProduct({
    required super.localName,
    TfArg<ServicecatalogProvisionedProductAcceptLanguage>? acceptLanguage,
    TfArg<bool>? ignoreErrors,
    required TfArg<String> name,
    TfArg<List<String>>? notificationArns,
    TfArg<String>? pathId,
    TfArg<String>? pathName,
    required ServicecatalogProvisionedProductProductIdOrProductName
    productIdOrProductName,
    required ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName
    provisioningArtifactIdOrProvisioningArtifactName,
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
           ...productIdOrProductName.argMap,
           ...provisioningArtifactIdOrProvisioningArtifactName.argMap,
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

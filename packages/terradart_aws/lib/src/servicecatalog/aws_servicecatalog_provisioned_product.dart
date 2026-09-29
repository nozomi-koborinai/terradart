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
///
/// Pick one with a dot shorthand: `.productId(...)`.
sealed class ServicecatalogProvisionedProductProductIdOrProductName {
  const ServicecatalogProvisionedProductProductIdOrProductName();

  /// Sets `product_id`.
  const factory ServicecatalogProvisionedProductProductIdOrProductName.productId(
    TfArg<String> productId,
  ) = ServicecatalogProvisionedProductProductIdOrProductNameProductId;

  /// Sets `product_name`.
  const factory ServicecatalogProvisionedProductProductIdOrProductName.productName(
    TfArg<String> productName,
  ) = ServicecatalogProvisionedProductProductIdOrProductNameProductName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ServicecatalogProvisionedProductProductIdOrProductName.productId] choice: sets `product_id`.
final class ServicecatalogProvisionedProductProductIdOrProductNameProductId
    extends ServicecatalogProvisionedProductProductIdOrProductName {
  const ServicecatalogProvisionedProductProductIdOrProductNameProductId(
    this.productId,
  );

  final TfArg<String> productId;

  @override
  String get blockKey => 'product_id';

  @override
  Map<String, Object?> encode() => {'product_id': productId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'product_id': productId};
}

/// The [ServicecatalogProvisionedProductProductIdOrProductName.productName] choice: sets `product_name`.
final class ServicecatalogProvisionedProductProductIdOrProductNameProductName
    extends ServicecatalogProvisionedProductProductIdOrProductName {
  const ServicecatalogProvisionedProductProductIdOrProductNameProductName(
    this.productName,
  );

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
///
/// Pick one with a dot shorthand: `.provisioningArtifactId(...)`.
sealed class ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName {
  const ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName();

  /// Sets `provisioning_artifact_id`.
  const factory ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName.provisioningArtifactId(
    TfArg<String> provisioningArtifactId,
  ) = ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactNameProvisioningArtifactId;

  /// Sets `provisioning_artifact_name`.
  const factory ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName.provisioningArtifactName(
    TfArg<String> provisioningArtifactName,
  ) = ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactNameProvisioningArtifactName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName.provisioningArtifactId] choice: sets `provisioning_artifact_id`.
final class ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactNameProvisioningArtifactId
    extends
        ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName {
  const ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactNameProvisioningArtifactId(
    this.provisioningArtifactId,
  );

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

/// The [ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName.provisioningArtifactName] choice: sets `provisioning_artifact_name`.
final class ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactNameProvisioningArtifactName
    extends
        ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactName {
  const ServicecatalogProvisionedProductProvisioningArtifactIdOrProvisioningArtifactNameProvisioningArtifactName(
    this.provisioningArtifactName,
  );

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

/// At most one of `path_id`, `path_name` on `aws_servicecatalog_provisioned_product`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.pathId(...)`.
sealed class ServicecatalogProvisionedProductPathIdOrPathName {
  const ServicecatalogProvisionedProductPathIdOrPathName();

  /// Sets `path_id`.
  const factory ServicecatalogProvisionedProductPathIdOrPathName.pathId(
    TfArg<String> pathId,
  ) = ServicecatalogProvisionedProductPathIdOrPathNamePathId;

  /// Sets `path_name`.
  const factory ServicecatalogProvisionedProductPathIdOrPathName.pathName(
    TfArg<String> pathName,
  ) = ServicecatalogProvisionedProductPathIdOrPathNamePathName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ServicecatalogProvisionedProductPathIdOrPathName.pathId] choice: sets `path_id`.
final class ServicecatalogProvisionedProductPathIdOrPathNamePathId
    extends ServicecatalogProvisionedProductPathIdOrPathName {
  const ServicecatalogProvisionedProductPathIdOrPathNamePathId(this.pathId);

  final TfArg<String> pathId;

  @override
  String get blockKey => 'path_id';

  @override
  Map<String, Object?> encode() => {'path_id': pathId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'path_id': pathId};
}

/// The [ServicecatalogProvisionedProductPathIdOrPathName.pathName] choice: sets `path_name`.
final class ServicecatalogProvisionedProductPathIdOrPathNamePathName
    extends ServicecatalogProvisionedProductPathIdOrPathName {
  const ServicecatalogProvisionedProductPathIdOrPathNamePathName(this.pathName);

  final TfArg<String> pathName;

  @override
  String get blockKey => 'path_name';

  @override
  Map<String, Object?> encode() => {'path_name': pathName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'path_name': pathName};
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
///
/// Pick one with a dot shorthand: `.failureToleranceCount(...)`.
sealed class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage();

  /// Sets `failure_tolerance_count`.
  const factory ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage.failureToleranceCount(
    TfArg<num> failureToleranceCount,
  ) = ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentageFailureToleranceCount;

  /// Sets `failure_tolerance_percentage`.
  const factory ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage.failureTolerancePercentage(
    TfArg<num> failureTolerancePercentage,
  ) = ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentageFailureTolerancePercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage.failureToleranceCount] choice: sets `failure_tolerance_count`.
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentageFailureToleranceCount
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentageFailureToleranceCount(
    this.failureToleranceCount,
  );

  final TfArg<num> failureToleranceCount;

  @override
  String get blockKey => 'failure_tolerance_count';

  @override
  Map<String, Object?> encode() => {
    'failure_tolerance_count': failureToleranceCount.toTfJson(),
  };
}

/// The [ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage.failureTolerancePercentage] choice: sets `failure_tolerance_percentage`.
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentageFailureTolerancePercentage
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCountOrFailureTolerancePercentageFailureTolerancePercentage(
    this.failureTolerancePercentage,
  );

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
///
/// Pick one with a dot shorthand: `.maxConcurrencyCount(...)`.
sealed class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage();

  /// Sets `max_concurrency_count`.
  const factory ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage.maxConcurrencyCount(
    TfArg<num> maxConcurrencyCount,
  ) = ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentageMaxConcurrencyCount;

  /// Sets `max_concurrency_percentage`.
  const factory ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage.maxConcurrencyPercentage(
    TfArg<num> maxConcurrencyPercentage,
  ) = ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentageMaxConcurrencyPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage.maxConcurrencyCount] choice: sets `max_concurrency_count`.
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentageMaxConcurrencyCount
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentageMaxConcurrencyCount(
    this.maxConcurrencyCount,
  );

  final TfArg<num> maxConcurrencyCount;

  @override
  String get blockKey => 'max_concurrency_count';

  @override
  Map<String, Object?> encode() => {
    'max_concurrency_count': maxConcurrencyCount.toTfJson(),
  };
}

/// The [ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage.maxConcurrencyPercentage] choice: sets `max_concurrency_percentage`.
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentageMaxConcurrencyPercentage
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentage {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCountOrMaxConcurrencyPercentageMaxConcurrencyPercentage(
    this.maxConcurrencyPercentage,
  );

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
    ServicecatalogProvisionedProductPathIdOrPathName? pathIdOrPathName,
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
           ...?pathIdOrPathName?.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogProvisionedProduct>`.
  RefTo<AwsServicecatalogProvisionedProduct> get ref => RefTo.of(this);

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

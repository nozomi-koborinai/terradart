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
sealed class ServicecatalogProvisionedProductIdentifier {
  const ServicecatalogProvisionedProductIdentifier();

  /// Sets `product_id`.
  const factory ServicecatalogProvisionedProductIdentifier.productId(
    TfArg<String> productId,
  ) = ServicecatalogProvisionedProductIdentifierProductId;

  /// Sets `product_name`.
  const factory ServicecatalogProvisionedProductIdentifier.productName(
    TfArg<String> productName,
  ) = ServicecatalogProvisionedProductIdentifierProductName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ServicecatalogProvisionedProductIdentifier.productId] choice: sets `product_id`.
final class ServicecatalogProvisionedProductIdentifierProductId
    extends ServicecatalogProvisionedProductIdentifier {
  const ServicecatalogProvisionedProductIdentifierProductId(this.productId);

  final TfArg<String> productId;

  @override
  String get blockKey => 'product_id';

  @override
  Map<String, Object?> encode() => {'product_id': productId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'product_id': productId};
}

/// The [ServicecatalogProvisionedProductIdentifier.productName] choice: sets `product_name`.
final class ServicecatalogProvisionedProductIdentifierProductName
    extends ServicecatalogProvisionedProductIdentifier {
  const ServicecatalogProvisionedProductIdentifierProductName(this.productName);

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
sealed class ServicecatalogProvisionedProductProvisioningArtifact {
  const ServicecatalogProvisionedProductProvisioningArtifact();

  /// Sets `provisioning_artifact_id`.
  const factory ServicecatalogProvisionedProductProvisioningArtifact.provisioningArtifactId(
    TfArg<String> provisioningArtifactId,
  ) = ServicecatalogProvisionedProductProvisioningArtifactId;

  /// Sets `provisioning_artifact_name`.
  const factory ServicecatalogProvisionedProductProvisioningArtifact.provisioningArtifactName(
    TfArg<String> provisioningArtifactName,
  ) = ServicecatalogProvisionedProductProvisioningArtifactName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ServicecatalogProvisionedProductProvisioningArtifact.provisioningArtifactId] choice: sets `provisioning_artifact_id`.
final class ServicecatalogProvisionedProductProvisioningArtifactId
    extends ServicecatalogProvisionedProductProvisioningArtifact {
  const ServicecatalogProvisionedProductProvisioningArtifactId(
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

/// The [ServicecatalogProvisionedProductProvisioningArtifact.provisioningArtifactName] choice: sets `provisioning_artifact_name`.
final class ServicecatalogProvisionedProductProvisioningArtifactName
    extends ServicecatalogProvisionedProductProvisioningArtifact {
  const ServicecatalogProvisionedProductProvisioningArtifactName(
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
sealed class ServicecatalogProvisionedProductPath {
  const ServicecatalogProvisionedProductPath();

  /// Sets `path_id`.
  const factory ServicecatalogProvisionedProductPath.pathId(
    TfArg<String> pathId,
  ) = ServicecatalogProvisionedProductPathId;

  /// Sets `path_name`.
  const factory ServicecatalogProvisionedProductPath.pathName(
    TfArg<String> pathName,
  ) = ServicecatalogProvisionedProductPathName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ServicecatalogProvisionedProductPath.pathId] choice: sets `path_id`.
final class ServicecatalogProvisionedProductPathId
    extends ServicecatalogProvisionedProductPath {
  const ServicecatalogProvisionedProductPathId(this.pathId);

  final TfArg<String> pathId;

  @override
  String get blockKey => 'path_id';

  @override
  Map<String, Object?> encode() => {'path_id': pathId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'path_id': pathId};
}

/// The [ServicecatalogProvisionedProductPath.pathName] choice: sets `path_name`.
final class ServicecatalogProvisionedProductPathName
    extends ServicecatalogProvisionedProductPath {
  const ServicecatalogProvisionedProductPathName(this.pathName);

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
    required this.failureTolerance,
    required this.maxConcurrency,
    this.regions,
  });

  final TfArg<List<Object?>>? accounts;

  final ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance
  failureTolerance;

  final ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency
  maxConcurrency;

  final TfArg<List<Object?>>? regions;

  Map<String, Object?> encode() => {
    if (accounts != null) 'accounts': accounts!.toTfJson(),
    ...failureTolerance.encode(),
    ...maxConcurrency.encode(),
    if (regions != null) 'regions': regions!.toTfJson(),
  };
}

/// Exactly one of `failure_tolerance_count`, `failure_tolerance_percentage` on the `stack_set_provisioning_preferences` block of `aws_servicecatalog_provisioned_product`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.failureToleranceCount(...)`.
sealed class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance();

  /// Sets `failure_tolerance_count`.
  const factory ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance.failureToleranceCount(
    TfArg<num> failureToleranceCount,
  ) = ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCount;

  /// Sets `failure_tolerance_percentage`.
  const factory ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance.failureTolerancePercentage(
    TfArg<num> failureTolerancePercentage,
  ) = ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerancePercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance.failureToleranceCount] choice: sets `failure_tolerance_count`.
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCount
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureToleranceCount(
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

/// The [ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance.failureTolerancePercentage] choice: sets `failure_tolerance_percentage`.
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerancePercentage
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerance {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesFailureTolerancePercentage(
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
sealed class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency();

  /// Sets `max_concurrency_count`.
  const factory ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency.maxConcurrencyCount(
    TfArg<num> maxConcurrencyCount,
  ) = ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCount;

  /// Sets `max_concurrency_percentage`.
  const factory ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency.maxConcurrencyPercentage(
    TfArg<num> maxConcurrencyPercentage,
  ) = ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency.maxConcurrencyCount] choice: sets `max_concurrency_count`.
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCount
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyCount(
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

/// The [ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency.maxConcurrencyPercentage] choice: sets `max_concurrency_percentage`.
final class ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyPercentage
    extends
        ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrency {
  const ServicecatalogProvisionedProductStackSetProvisioningPreferencesMaxConcurrencyPercentage(
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
    ServicecatalogProvisionedProductPath? path,
    required ServicecatalogProvisionedProductIdentifier identifier,
    required ServicecatalogProvisionedProductProvisioningArtifact
    provisioningArtifact,
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
           ...?path?.argMap,
           ...identifier.argMap,
           ...provisioningArtifact.argMap,
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

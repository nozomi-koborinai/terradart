// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_api_product`.
const Set<String> _googleApigeeApiProductSensitive = <String>{};

/// Apigee Api Product Approval enum for `approval_type`.
extension type const ApigeeApiProductApprovalType._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeApiProductApprovalType.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeApiProductApprovalType.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeApiProductApprovalType.arg(TfArg<String> arg) : this._(arg);

  static const auto = ApigeeApiProductApprovalType._(TfArgLiteral('auto'));
  static const manual = ApigeeApiProductApprovalType._(TfArgLiteral('manual'));

  static const List<ApigeeApiProductApprovalType> values = [auto, manual];
}

/// Apigee Api Product Quota Counter enum for `quota_counter_scope`.
extension type const ApigeeApiProductQuotaCounterScope._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeApiProductQuotaCounterScope.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeApiProductQuotaCounterScope.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeApiProductQuotaCounterScope.arg(TfArg<String> arg) : this._(arg);

  static const quotaCounterScopeUnspecified =
      ApigeeApiProductQuotaCounterScope._(
        TfArgLiteral('QUOTA_COUNTER_SCOPE_UNSPECIFIED'),
      );
  static const proxy = ApigeeApiProductQuotaCounterScope._(
    TfArgLiteral('PROXY'),
  );
  static const operation = ApigeeApiProductQuotaCounterScope._(
    TfArgLiteral('OPERATION'),
  );

  static const List<ApigeeApiProductQuotaCounterScope> values = [
    quotaCounterScopeUnspecified,
    proxy,
    operation,
  ];
}

/// Typed helper for the `attributes` block of
/// `google_apigee_api_product` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApigeeApiProductAttributes {
  const ApigeeApiProductAttributes({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `graphql_operation_group` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGraphqlOperationGroup {
  const ApigeeApiProductGraphqlOperationGroup({
    this.operationConfigType,
    this.operationConfigs,
  });

  final ApigeeApiProductOperationConfigType? operationConfigType;

  final List<ApigeeApiProductGraphqlOperationGroupOperationConfigs>?
  operationConfigs;

  Map<String, Object?> encode() => {
    'operation_config_type': ?operationConfigType?.toTfJson(),
    if (operationConfigs != null)
      'operation_configs': [for (final e in operationConfigs!) e.encode()],
  };
}

/// `operation_config_type` — derived from the provider schema description.
extension type const ApigeeApiProductOperationConfigType._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeApiProductOperationConfigType.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeApiProductOperationConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeApiProductOperationConfigType.arg(TfArg<String> arg)
    : this._(arg);

  static const proxy = ApigeeApiProductOperationConfigType._(
    TfArgLiteral('proxy'),
  );
  static const remoteservice = ApigeeApiProductOperationConfigType._(
    TfArgLiteral('remoteservice'),
  );

  static const List<ApigeeApiProductOperationConfigType> values = [
    proxy,
    remoteservice,
  ];
}

/// Typed helper for the `graphql_operation_group.operation_configs` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGraphqlOperationGroupOperationConfigs {
  const ApigeeApiProductGraphqlOperationGroupOperationConfigs({
    this.apiSource,
    this.attributes,
    this.operations,
    this.quota,
  });

  final TfArg<String>? apiSource;

  final List<ApigeeApiProductAttributes>? attributes;

  final List<ApigeeApiProductGraphqlOperationGroupOperations>? operations;

  final ApigeeApiProductOperationConfigsQuota? quota;

  Map<String, Object?> encode() => {
    'api_source': ?apiSource?.toTfJson(),
    if (attributes != null)
      'attributes': [for (final e in attributes!) e.encode()],
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
    'quota': ?quota?.encode(),
  };
}

/// Typed helper for the `graphql_operation_group.operation_configs.operations` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGraphqlOperationGroupOperations {
  const ApigeeApiProductGraphqlOperationGroupOperations({
    this.operation,
    this.operationTypes,
  });

  final TfArg<String>? operation;

  final TfArg<List<String>>? operationTypes;

  Map<String, Object?> encode() => {
    'operation': ?operation?.toTfJson(),
    'operation_types': ?operationTypes?.toTfJson(),
  };
}

/// Typed helper for the `graphql_operation_group.operation_configs.quota` block of
/// `google_apigee_api_product` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApigeeApiProductOperationConfigsQuota {
  const ApigeeApiProductOperationConfigsQuota({
    this.interval,
    this.limit,
    this.timeUnit,
  });

  final TfArg<String>? interval;

  final TfArg<String>? limit;

  final TfArg<String>? timeUnit;

  Map<String, Object?> encode() => {
    'interval': ?interval?.toTfJson(),
    'limit': ?limit?.toTfJson(),
    'time_unit': ?timeUnit?.toTfJson(),
  };
}

/// Typed helper for the `grpc_operation_group` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGrpcOperationGroup {
  const ApigeeApiProductGrpcOperationGroup({this.operationConfigs});

  final List<ApigeeApiProductGrpcOperationGroupOperationConfigs>?
  operationConfigs;

  Map<String, Object?> encode() => {
    if (operationConfigs != null)
      'operation_configs': [for (final e in operationConfigs!) e.encode()],
  };
}

/// Typed helper for the `grpc_operation_group.operation_configs` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGrpcOperationGroupOperationConfigs {
  const ApigeeApiProductGrpcOperationGroupOperationConfigs({
    this.apiSource,
    this.methods,
    this.service,
    this.attributes,
    this.quota,
  });

  final TfArg<String>? apiSource;

  final TfArg<List<String>>? methods;

  final TfArg<String>? service;

  final List<ApigeeApiProductAttributes>? attributes;

  final ApigeeApiProductOperationConfigsQuota? quota;

  Map<String, Object?> encode() => {
    'api_source': ?apiSource?.toTfJson(),
    'methods': ?methods?.toTfJson(),
    'service': ?service?.toTfJson(),
    if (attributes != null)
      'attributes': [for (final e in attributes!) e.encode()],
    'quota': ?quota?.encode(),
  };
}

/// Typed helper for the `operation_group` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductOperationGroup {
  const ApigeeApiProductOperationGroup({
    this.operationConfigType,
    this.operationConfigs,
  });

  final ApigeeApiProductOperationConfigType? operationConfigType;

  final List<ApigeeApiProductOperationGroupOperationConfigs>? operationConfigs;

  Map<String, Object?> encode() => {
    'operation_config_type': ?operationConfigType?.toTfJson(),
    if (operationConfigs != null)
      'operation_configs': [for (final e in operationConfigs!) e.encode()],
  };
}

/// Typed helper for the `operation_group.operation_configs` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductOperationGroupOperationConfigs {
  const ApigeeApiProductOperationGroupOperationConfigs({
    this.apiSource,
    this.attributes,
    this.operations,
    this.quota,
  });

  final TfArg<String>? apiSource;

  final List<ApigeeApiProductAttributes>? attributes;

  final List<ApigeeApiProductOperationGroupOperations>? operations;

  final ApigeeApiProductOperationConfigsQuota? quota;

  Map<String, Object?> encode() => {
    'api_source': ?apiSource?.toTfJson(),
    if (attributes != null)
      'attributes': [for (final e in attributes!) e.encode()],
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
    'quota': ?quota?.encode(),
  };
}

/// Typed helper for the `operation_group.operation_configs.operations` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductOperationGroupOperations {
  const ApigeeApiProductOperationGroupOperations({this.methods, this.resource});

  final TfArg<List<String>>? methods;

  final TfArg<String>? resource;

  Map<String, Object?> encode() => {
    'methods': ?methods?.toTfJson(),
    'resource': ?resource?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_api_product`.
///
/// An `ApiProduct` in Apigee.
///
/// Apigee **API product** — bundle of proxies/resources with quota and
/// approval settings.
///
/// **Cost / apply:** gcp-cost: no Product SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Product → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeOrganization] (Gateway Node Hours
/// `0136-18C1-DD41` **$1.025/h**). Debt-only on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GoogleApigeeApiProduct extends Resource {
  static const String tfType = 'google_apigee_api_product';

  GoogleApigeeApiProduct(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> orgId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    ApigeeApiProductApprovalType? approvalType,
    TfArg<List<String>>? apiResources,
    TfArg<List<String>>? environments,
    TfArg<List<String>>? proxies,
    TfArg<List<String>>? scopes,
    TfArg<String>? space,
    TfArg<String>? quota,
    TfArg<String>? quotaInterval,
    TfArg<String>? quotaTimeUnit,
    ApigeeApiProductQuotaCounterScope? quotaCounterScope,
    List<ApigeeApiProductAttributes>? attributes,
    ApigeeApiProductOperationGroup? operationGroup,
    ApigeeApiProductGraphqlOperationGroup? graphqlOperationGroup,
    ApigeeApiProductGrpcOperationGroup? grpcOperationGroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'display_name': displayName,
           'description': ?description,
           'approval_type': ?approvalType,
           'api_resources': ?apiResources,
           'environments': ?environments,
           'proxies': ?proxies,
           'scopes': ?scopes,
           'space': ?space,
           'quota': ?quota,
           'quota_interval': ?quotaInterval,
           'quota_time_unit': ?quotaTimeUnit,
           'quota_counter_scope': ?quotaCounterScope,
           if (attributes != null)
             'attributes': TfArg.literal([
               for (final e in attributes) e.encode(),
             ]),
           if (operationGroup != null)
             'operation_group': TfArg.literal(operationGroup.encode()),
           if (graphqlOperationGroup != null)
             'graphql_operation_group': TfArg.literal(
               graphqlOperationGroup.encode(),
             ),
           if (grpcOperationGroup != null)
             'grpc_operation_group': TfArg.literal(grpcOperationGroup.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeApiProductSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeApiProduct>`.
  RefTo<GoogleApigeeApiProduct> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified_at` attribute.
  TfRef<String> get lastModifiedAt =>
      TfRef.attribute<String>(this, 'last_modified_at');

  /// Reference to `api_resources` attribute.
  TfRef<List<String>> get apiResources =>
      TfRef.attribute<List<String>>(this, 'api_resources');

  /// Reference to `approval_type` attribute.
  TfRef<String> get approvalType =>
      TfRef.attribute<String>(this, 'approval_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `environments` attribute.
  TfRef<List<String>> get environments =>
      TfRef.attribute<List<String>>(this, 'environments');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `proxies` attribute.
  TfRef<List<String>> get proxies =>
      TfRef.attribute<List<String>>(this, 'proxies');

  /// Reference to `quota` attribute.
  TfRef<String> get quota => TfRef.attribute<String>(this, 'quota');

  /// Reference to `quota_counter_scope` attribute.
  TfRef<String> get quotaCounterScope =>
      TfRef.attribute<String>(this, 'quota_counter_scope');

  /// Reference to `quota_interval` attribute.
  TfRef<String> get quotaInterval =>
      TfRef.attribute<String>(this, 'quota_interval');

  /// Reference to `quota_time_unit` attribute.
  TfRef<String> get quotaTimeUnit =>
      TfRef.attribute<String>(this, 'quota_time_unit');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `space` attribute.
  TfRef<String> get space => TfRef.attribute<String>(this, 'space');
}

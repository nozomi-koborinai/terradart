// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_api_product`.
const Set<String> _googleApigeeApiProductSensitive = <String>{};

/// Apigee Api Product Approval enum for `approval_type`.
enum ApigeeApiProductApprovalType implements TerraformEnum {
  auto('auto'),
  manual('manual');

  const ApigeeApiProductApprovalType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigee Api Product Quota Counter enum for `quota_counter_scope`.
enum ApigeeApiProductQuotaCounterScope implements TerraformEnum {
  quotaCounterScopeUnspecified('QUOTA_COUNTER_SCOPE_UNSPECIFIED'),
  proxy('PROXY'),
  operation('OPERATION');

  const ApigeeApiProductQuotaCounterScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductAttributes {
  const ApigeeApiProductAttributes({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  final TfArg<ApigeeApiProductGraphqlOperationGroupOperationConfigType>?
  operationConfigType;

  final List<ApigeeApiProductGraphqlOperationGroupOperationConfigs>?
  operationConfigs;

  Map<String, Object?> encode() => {
    if (operationConfigType != null)
      'operation_config_type': operationConfigType!.toTfJson(),
    if (operationConfigs != null)
      'operation_configs': [for (final e in operationConfigs!) e.encode()],
  };
}

/// `operation_config_type` — derived from the provider schema description.
enum ApigeeApiProductGraphqlOperationGroupOperationConfigType
    implements TerraformEnum {
  proxy('proxy'),
  remoteservice('remoteservice');

  const ApigeeApiProductGraphqlOperationGroupOperationConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final List<ApigeeApiProductGraphqlOperationGroupOperationConfigsAttributes>?
  attributes;

  final List<ApigeeApiProductGraphqlOperationGroupOperationConfigsOperations>?
  operations;

  final ApigeeApiProductGraphqlOperationGroupOperationConfigsQuota? quota;

  Map<String, Object?> encode() => {
    if (apiSource != null) 'api_source': apiSource!.toTfJson(),
    if (attributes != null)
      'attributes': [for (final e in attributes!) e.encode()],
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
    if (quota != null) 'quota': quota!.encode(),
  };
}

/// Typed helper for the `graphql_operation_group.operation_configs.attributes` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGraphqlOperationGroupOperationConfigsAttributes {
  const ApigeeApiProductGraphqlOperationGroupOperationConfigsAttributes({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `graphql_operation_group.operation_configs.operations` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGraphqlOperationGroupOperationConfigsOperations {
  const ApigeeApiProductGraphqlOperationGroupOperationConfigsOperations({
    this.operation,
    this.operationTypes,
  });

  final TfArg<String>? operation;

  final TfArg<List<Object?>>? operationTypes;

  Map<String, Object?> encode() => {
    if (operation != null) 'operation': operation!.toTfJson(),
    if (operationTypes != null) 'operation_types': operationTypes!.toTfJson(),
  };
}

/// Typed helper for the `graphql_operation_group.operation_configs.quota` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGraphqlOperationGroupOperationConfigsQuota {
  const ApigeeApiProductGraphqlOperationGroupOperationConfigsQuota({
    this.interval,
    this.limit,
    this.timeUnit,
  });

  final TfArg<String>? interval;

  final TfArg<String>? limit;

  final TfArg<String>? timeUnit;

  Map<String, Object?> encode() => {
    if (interval != null) 'interval': interval!.toTfJson(),
    if (limit != null) 'limit': limit!.toTfJson(),
    if (timeUnit != null) 'time_unit': timeUnit!.toTfJson(),
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

  final TfArg<List<Object?>>? methods;

  final TfArg<String>? service;

  final List<ApigeeApiProductGrpcOperationGroupOperationConfigsAttributes>?
  attributes;

  final ApigeeApiProductGrpcOperationGroupOperationConfigsQuota? quota;

  Map<String, Object?> encode() => {
    if (apiSource != null) 'api_source': apiSource!.toTfJson(),
    if (methods != null) 'methods': methods!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
    if (attributes != null)
      'attributes': [for (final e in attributes!) e.encode()],
    if (quota != null) 'quota': quota!.encode(),
  };
}

/// Typed helper for the `grpc_operation_group.operation_configs.attributes` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGrpcOperationGroupOperationConfigsAttributes {
  const ApigeeApiProductGrpcOperationGroupOperationConfigsAttributes({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `grpc_operation_group.operation_configs.quota` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductGrpcOperationGroupOperationConfigsQuota {
  const ApigeeApiProductGrpcOperationGroupOperationConfigsQuota({
    this.interval,
    this.limit,
    this.timeUnit,
  });

  final TfArg<String>? interval;

  final TfArg<String>? limit;

  final TfArg<String>? timeUnit;

  Map<String, Object?> encode() => {
    if (interval != null) 'interval': interval!.toTfJson(),
    if (limit != null) 'limit': limit!.toTfJson(),
    if (timeUnit != null) 'time_unit': timeUnit!.toTfJson(),
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

  final TfArg<ApigeeApiProductOperationGroupOperationConfigType>?
  operationConfigType;

  final List<ApigeeApiProductOperationGroupOperationConfigs>? operationConfigs;

  Map<String, Object?> encode() => {
    if (operationConfigType != null)
      'operation_config_type': operationConfigType!.toTfJson(),
    if (operationConfigs != null)
      'operation_configs': [for (final e in operationConfigs!) e.encode()],
  };
}

/// `operation_config_type` — derived from the provider schema description.
enum ApigeeApiProductOperationGroupOperationConfigType
    implements TerraformEnum {
  proxy('proxy'),
  remoteservice('remoteservice');

  const ApigeeApiProductOperationGroupOperationConfigType(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<ApigeeApiProductOperationGroupOperationConfigsAttributes>?
  attributes;

  final List<ApigeeApiProductOperationGroupOperationConfigsOperations>?
  operations;

  final ApigeeApiProductOperationGroupOperationConfigsQuota? quota;

  Map<String, Object?> encode() => {
    if (apiSource != null) 'api_source': apiSource!.toTfJson(),
    if (attributes != null)
      'attributes': [for (final e in attributes!) e.encode()],
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
    if (quota != null) 'quota': quota!.encode(),
  };
}

/// Typed helper for the `operation_group.operation_configs.attributes` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductOperationGroupOperationConfigsAttributes {
  const ApigeeApiProductOperationGroupOperationConfigsAttributes({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `operation_group.operation_configs.operations` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductOperationGroupOperationConfigsOperations {
  const ApigeeApiProductOperationGroupOperationConfigsOperations({
    this.methods,
    this.resource,
  });

  final TfArg<List<Object?>>? methods;

  final TfArg<String>? resource;

  Map<String, Object?> encode() => {
    if (methods != null) 'methods': methods!.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
  };
}

/// Typed helper for the `operation_group.operation_configs.quota` block of
/// `google_apigee_api_product` (derived from provider schema).
@immutable
final class ApigeeApiProductOperationGroupOperationConfigsQuota {
  const ApigeeApiProductOperationGroupOperationConfigsQuota({
    this.interval,
    this.limit,
    this.timeUnit,
  });

  final TfArg<String>? interval;

  final TfArg<String>? limit;

  final TfArg<String>? timeUnit;

  Map<String, Object?> encode() => {
    if (interval != null) 'interval': interval!.toTfJson(),
    if (limit != null) 'limit': limit!.toTfJson(),
    if (timeUnit != null) 'time_unit': timeUnit!.toTfJson(),
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

  GoogleApigeeApiProduct({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> orgId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<ApigeeApiProductApprovalType>? approvalType,
    TfArg<List<String>>? apiResources,
    TfArg<List<String>>? environments,
    TfArg<List<String>>? proxies,
    TfArg<List<String>>? scopes,
    TfArg<String>? space,
    TfArg<String>? quota,
    TfArg<String>? quotaInterval,
    TfArg<String>? quotaTimeUnit,
    TfArg<ApigeeApiProductQuotaCounterScope>? quotaCounterScope,
    List<ApigeeApiProductAttributes>? attributes,
    ApigeeApiProductOperationGroup? operationGroup,
    ApigeeApiProductGraphqlOperationGroup? graphqlOperationGroup,
    ApigeeApiProductGrpcOperationGroup? grpcOperationGroup,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (approvalType != null) 'approval_type': approvalType,
           if (apiResources != null) 'api_resources': apiResources,
           if (environments != null) 'environments': environments,
           if (proxies != null) 'proxies': proxies,
           if (scopes != null) 'scopes': scopes,
           if (space != null) 'space': space,
           if (quota != null) 'quota': quota,
           if (quotaInterval != null) 'quota_interval': quotaInterval,
           if (quotaTimeUnit != null) 'quota_time_unit': quotaTimeUnit,
           if (quotaCounterScope != null)
             'quota_counter_scope': quotaCounterScope,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified_at` attribute.
  TfRef<String> get lastModifiedAt =>
      TfRef.attribute<String>(this, 'last_modified_at');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

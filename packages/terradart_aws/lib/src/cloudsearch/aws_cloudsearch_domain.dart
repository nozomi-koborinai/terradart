// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudsearch_domain`.
const Set<String> _awsCloudsearchDomainSensitive = <String>{};

/// Typed helper for the `endpoint_options` block of
/// `aws_cloudsearch_domain` (derived from provider schema).
@immutable
final class CloudsearchDomainEndpointOptions {
  const CloudsearchDomainEndpointOptions({
    this.enforceHttps,
    this.tlsSecurityPolicy,
  });

  final TfArg<bool>? enforceHttps;

  final TfArg<CloudsearchDomainEndpointOptionsTlsSecurityPolicy>?
  tlsSecurityPolicy;

  Map<String, Object?> encode() => {
    if (enforceHttps != null) 'enforce_https': enforceHttps!.toTfJson(),
    if (tlsSecurityPolicy != null)
      'tls_security_policy': tlsSecurityPolicy!.toTfJson(),
  };
}

/// `tls_security_policy` — derived from the provider schema description.
enum CloudsearchDomainEndpointOptionsTlsSecurityPolicy
    implements TerraformEnum {
  policyMinTls10201907('Policy-Min-TLS-1-0-2019-07'),
  policyMinTls12201907('Policy-Min-TLS-1-2-2019-07');

  const CloudsearchDomainEndpointOptionsTlsSecurityPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `index_field` block of
/// `aws_cloudsearch_domain` (derived from provider schema).
@immutable
final class CloudsearchDomainIndexField {
  const CloudsearchDomainIndexField({
    this.analysisScheme,
    this.defaultValue,
    this.facet,
    this.highlight,
    required this.name,
    this.returnCase,
    this.search,
    this.sort,
    this.sourceFields,
    required this.type,
  });

  final TfArg<String>? analysisScheme;

  final TfArg<String>? defaultValue;

  final TfArg<bool>? facet;

  final TfArg<bool>? highlight;

  final TfArg<String> name;

  final TfArg<bool>? returnCase;

  final TfArg<bool>? search;

  final TfArg<bool>? sort;

  final TfArg<String>? sourceFields;

  final TfArg<CloudsearchDomainIndexFieldType> type;

  Map<String, Object?> encode() => {
    if (analysisScheme != null) 'analysis_scheme': analysisScheme!.toTfJson(),
    if (defaultValue != null) 'default_value': defaultValue!.toTfJson(),
    if (facet != null) 'facet': facet!.toTfJson(),
    if (highlight != null) 'highlight': highlight!.toTfJson(),
    'name': name.toTfJson(),
    if (returnCase != null) 'return': returnCase!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
    if (sort != null) 'sort': sort!.toTfJson(),
    if (sourceFields != null) 'source_fields': sourceFields!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CloudsearchDomainIndexFieldType implements TerraformEnum {
  int('int'),
  double('double'),
  literal('literal'),
  text('text'),
  date('date'),
  latlon('latlon'),
  intArray('int-array'),
  doubleArray('double-array'),
  literalArray('literal-array'),
  textArray('text-array'),
  dateArray('date-array');

  const CloudsearchDomainIndexFieldType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scaling_parameters` block of
/// `aws_cloudsearch_domain` (derived from provider schema).
@immutable
final class CloudsearchDomainScalingParameters {
  const CloudsearchDomainScalingParameters({
    this.desiredInstanceType,
    this.desiredPartitionCount,
    this.desiredReplicationCount,
  });

  final TfArg<CloudsearchDomainScalingParametersDesiredInstanceType>?
  desiredInstanceType;

  final TfArg<num>? desiredPartitionCount;

  final TfArg<num>? desiredReplicationCount;

  Map<String, Object?> encode() => {
    if (desiredInstanceType != null)
      'desired_instance_type': desiredInstanceType!.toTfJson(),
    if (desiredPartitionCount != null)
      'desired_partition_count': desiredPartitionCount!.toTfJson(),
    if (desiredReplicationCount != null)
      'desired_replication_count': desiredReplicationCount!.toTfJson(),
  };
}

/// `desired_instance_type` — derived from the provider schema description.
enum CloudsearchDomainScalingParametersDesiredInstanceType
    implements TerraformEnum {
  searchM1Small('search.m1.small'),
  searchM1Large('search.m1.large'),
  searchM2Xlarge('search.m2.xlarge'),
  searchM2p2xlarge('search.m2.2xlarge'),
  searchM3Medium('search.m3.medium'),
  searchM3Large('search.m3.large'),
  searchM3Xlarge('search.m3.xlarge'),
  searchM3p2xlarge('search.m3.2xlarge'),
  searchSmall('search.small'),
  searchMedium('search.medium'),
  searchLarge('search.large'),
  searchXlarge('search.xlarge'),
  search2xlarge('search.2xlarge'),
  searchPreviousgenerationSmall('search.previousgeneration.small'),
  searchPreviousgenerationLarge('search.previousgeneration.large'),
  searchPreviousgenerationXlarge('search.previousgeneration.xlarge'),
  searchPreviousgeneration2xlarge('search.previousgeneration.2xlarge');

  const CloudsearchDomainScalingParametersDesiredInstanceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudsearch_domain`.
final class AwsCloudsearchDomain extends Resource {
  static const String tfType = 'aws_cloudsearch_domain';

  AwsCloudsearchDomain({
    required super.localName,
    TfArg<bool>? multiAz,
    required TfArg<String> name,
    TfArg<String>? region,
    CloudsearchDomainEndpointOptions? endpointOptions,
    List<CloudsearchDomainIndexField>? indexField,
    CloudsearchDomainScalingParameters? scalingParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (multiAz != null) 'multi_az': multiAz,
           'name': name,
           if (region != null) 'region': region,
           if (endpointOptions != null)
             'endpoint_options': TfArg.literal(endpointOptions.encode()),
           if (indexField != null)
             'index_field': TfArg.literal([
               for (final e in indexField) e.encode(),
             ]),
           if (scalingParameters != null)
             'scaling_parameters': TfArg.literal(scalingParameters.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudsearchDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudsearchDomain>`.
  RefTo<AwsCloudsearchDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `document_service_endpoint` attribute.
  TfRef<String> get documentServiceEndpoint =>
      TfRef.attribute<String>(this, 'document_service_endpoint');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `search_service_endpoint` attribute.
  TfRef<String> get searchServiceEndpoint =>
      TfRef.attribute<String>(this, 'search_service_endpoint');
}

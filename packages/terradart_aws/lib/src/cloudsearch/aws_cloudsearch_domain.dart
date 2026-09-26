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

  final TfArg<String>? tlsSecurityPolicy;

  Map<String, Object?> encode() => {
    if (enforceHttps != null) 'enforce_https': enforceHttps!.toTfJson(),
    if (tlsSecurityPolicy != null)
      'tls_security_policy': tlsSecurityPolicy!.toTfJson(),
  };
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

  final TfArg<String> type;

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

/// Typed helper for the `scaling_parameters` block of
/// `aws_cloudsearch_domain` (derived from provider schema).
@immutable
final class CloudsearchDomainScalingParameters {
  const CloudsearchDomainScalingParameters({
    this.desiredInstanceType,
    this.desiredPartitionCount,
    this.desiredReplicationCount,
  });

  final TfArg<String>? desiredInstanceType;

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

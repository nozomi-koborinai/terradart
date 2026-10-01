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

  final CloudsearchDomainTlsSecurityPolicy? tlsSecurityPolicy;

  Map<String, Object?> encode() => {
    'enforce_https': ?enforceHttps?.toTfJson(),
    'tls_security_policy': ?tlsSecurityPolicy?.toTfJson(),
  };
}

/// `tls_security_policy` — derived from the provider schema description.
extension type const CloudsearchDomainTlsSecurityPolicy._(TfArg<String> _)
    implements TfArg<String> {
  CloudsearchDomainTlsSecurityPolicy.variable(String name)
    : this._(TfArg.variable(name));
  CloudsearchDomainTlsSecurityPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const CloudsearchDomainTlsSecurityPolicy.arg(TfArg<String> arg) : this._(arg);

  static const policyMinTls10201907 = CloudsearchDomainTlsSecurityPolicy._(
    TfArgLiteral('Policy-Min-TLS-1-0-2019-07'),
  );
  static const policyMinTls12201907 = CloudsearchDomainTlsSecurityPolicy._(
    TfArgLiteral('Policy-Min-TLS-1-2-2019-07'),
  );

  static const List<CloudsearchDomainTlsSecurityPolicy> values = [
    policyMinTls10201907,
    policyMinTls12201907,
  ];
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

  final CloudsearchDomainType type;

  Map<String, Object?> encode() => {
    'analysis_scheme': ?analysisScheme?.toTfJson(),
    'default_value': ?defaultValue?.toTfJson(),
    'facet': ?facet?.toTfJson(),
    'highlight': ?highlight?.toTfJson(),
    'name': name.toTfJson(),
    'return': ?returnCase?.toTfJson(),
    'search': ?search?.toTfJson(),
    'sort': ?sort?.toTfJson(),
    'source_fields': ?sourceFields?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CloudsearchDomainType._(TfArg<String> _)
    implements TfArg<String> {
  CloudsearchDomainType.variable(String name) : this._(TfArg.variable(name));
  CloudsearchDomainType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudsearchDomainType.arg(TfArg<String> arg) : this._(arg);

  static const int = CloudsearchDomainType._(TfArgLiteral('int'));
  static const double = CloudsearchDomainType._(TfArgLiteral('double'));
  static const literal = CloudsearchDomainType._(TfArgLiteral('literal'));
  static const text = CloudsearchDomainType._(TfArgLiteral('text'));
  static const date = CloudsearchDomainType._(TfArgLiteral('date'));
  static const latlon = CloudsearchDomainType._(TfArgLiteral('latlon'));
  static const intArray = CloudsearchDomainType._(TfArgLiteral('int-array'));
  static const doubleArray = CloudsearchDomainType._(
    TfArgLiteral('double-array'),
  );
  static const literalArray = CloudsearchDomainType._(
    TfArgLiteral('literal-array'),
  );
  static const textArray = CloudsearchDomainType._(TfArgLiteral('text-array'));
  static const dateArray = CloudsearchDomainType._(TfArgLiteral('date-array'));

  static const List<CloudsearchDomainType> values = [
    int,
    double,
    literal,
    text,
    date,
    latlon,
    intArray,
    doubleArray,
    literalArray,
    textArray,
    dateArray,
  ];
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

  final CloudsearchDomainDesiredInstanceType? desiredInstanceType;

  final TfArg<num>? desiredPartitionCount;

  final TfArg<num>? desiredReplicationCount;

  Map<String, Object?> encode() => {
    'desired_instance_type': ?desiredInstanceType?.toTfJson(),
    'desired_partition_count': ?desiredPartitionCount?.toTfJson(),
    'desired_replication_count': ?desiredReplicationCount?.toTfJson(),
  };
}

/// `desired_instance_type` — derived from the provider schema description.
extension type const CloudsearchDomainDesiredInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  CloudsearchDomainDesiredInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  CloudsearchDomainDesiredInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudsearchDomainDesiredInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const searchM1Small = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.m1.small'),
  );
  static const searchM1Large = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.m1.large'),
  );
  static const searchM2Xlarge = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.m2.xlarge'),
  );
  static const searchM2p2xlarge = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.m2.2xlarge'),
  );
  static const searchM3Medium = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.m3.medium'),
  );
  static const searchM3Large = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.m3.large'),
  );
  static const searchM3Xlarge = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.m3.xlarge'),
  );
  static const searchM3p2xlarge = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.m3.2xlarge'),
  );
  static const searchSmall = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.small'),
  );
  static const searchMedium = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.medium'),
  );
  static const searchLarge = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.large'),
  );
  static const searchXlarge = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.xlarge'),
  );
  static const search2xlarge = CloudsearchDomainDesiredInstanceType._(
    TfArgLiteral('search.2xlarge'),
  );
  static const searchPreviousgenerationSmall =
      CloudsearchDomainDesiredInstanceType._(
        TfArgLiteral('search.previousgeneration.small'),
      );
  static const searchPreviousgenerationLarge =
      CloudsearchDomainDesiredInstanceType._(
        TfArgLiteral('search.previousgeneration.large'),
      );
  static const searchPreviousgenerationXlarge =
      CloudsearchDomainDesiredInstanceType._(
        TfArgLiteral('search.previousgeneration.xlarge'),
      );
  static const searchPreviousgeneration2xlarge =
      CloudsearchDomainDesiredInstanceType._(
        TfArgLiteral('search.previousgeneration.2xlarge'),
      );

  static const List<CloudsearchDomainDesiredInstanceType> values = [
    searchM1Small,
    searchM1Large,
    searchM2Xlarge,
    searchM2p2xlarge,
    searchM3Medium,
    searchM3Large,
    searchM3Xlarge,
    searchM3p2xlarge,
    searchSmall,
    searchMedium,
    searchLarge,
    searchXlarge,
    search2xlarge,
    searchPreviousgenerationSmall,
    searchPreviousgenerationLarge,
    searchPreviousgenerationXlarge,
    searchPreviousgeneration2xlarge,
  ];
}

/// Factory wrapper for `aws_cloudsearch_domain`.
final class AwsCloudsearchDomain extends Resource {
  static const String tfType = 'aws_cloudsearch_domain';

  AwsCloudsearchDomain(
    super.localName, {
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
           'multi_az': ?multiAz,
           'name': name,
           'region': ?region,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `multi_az` attribute.
  TfRef<bool> get multiAz => TfRef.attribute<bool>(this, 'multi_az');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

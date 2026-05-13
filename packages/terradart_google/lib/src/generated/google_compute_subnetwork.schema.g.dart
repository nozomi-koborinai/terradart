// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_compute_subnetwork.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class LogConfig {
  /// Creates a [LogConfig] from a JSON map.
  factory LogConfig.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  LogConfig._(this._json);

  LogConfig({
    String? aggregationInterval,
    String? filterExpr,
    num? flowSampling,
    String? metadata,
    List<String>? metadataFields,
  }) {
    _json = {
      'aggregation_interval': ?aggregationInterval,
      'filter_expr': ?filterExpr,
      'flow_sampling': ?flowSampling,
      'metadata': ?metadata,
      'metadata_fields': ?metadataFields,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [LogConfig].
  static const SchemanticType<LogConfig> $schema = _LogConfigTypeFactory();

  String? get aggregationInterval {
    return _json['aggregation_interval'] as String?;
  }

  set aggregationInterval(String? value) {
    if (value == null) {
      _json.remove('aggregation_interval');
    } else {
      _json['aggregation_interval'] = value;
    }
  }

  String? get filterExpr {
    return _json['filter_expr'] as String?;
  }

  set filterExpr(String? value) {
    if (value == null) {
      _json.remove('filter_expr');
    } else {
      _json['filter_expr'] = value;
    }
  }

  num? get flowSampling {
    return _json['flow_sampling'] as num?;
  }

  set flowSampling(num? value) {
    if (value == null) {
      _json.remove('flow_sampling');
    } else {
      _json['flow_sampling'] = value;
    }
  }

  String? get metadata {
    return _json['metadata'] as String?;
  }

  set metadata(String? value) {
    if (value == null) {
      _json.remove('metadata');
    } else {
      _json['metadata'] = value;
    }
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get metadataFields {
    return (_json['metadata_fields'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set metadataFields(List<String>? value) {
    if (value == null) {
      _json.remove('metadata_fields');
    } else {
      _json['metadata_fields'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [LogConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LogConfigTypeFactory extends SchemanticType<LogConfig> {
  const _LogConfigTypeFactory();

  @override
  LogConfig parse(Object? json) {
    return LogConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'LogConfig',
    definition: $Schema
        .object(
          properties: {
            'aggregation_interval': $Schema.string(
              description:
                  'Can only be specified if VPC flow logging for this subnetwork is enabled.\nToggles the aggregation interval for collecting flow logs. Increasing the\ninterval time will reduce the amount of generated flow logs for long\nlasting connections. Default is an interval of 5 seconds per connection. Default value: "INTERVAL_5_SEC" Possible values: ["INTERVAL_5_SEC", "INTERVAL_30_SEC", "INTERVAL_1_MIN", "INTERVAL_5_MIN", "INTERVAL_10_MIN", "INTERVAL_15_MIN"]',
            ),
            'filter_expr': $Schema.string(
              description:
                  'Export filter used to define which VPC flow logs should be logged, as as CEL expression. See\nhttps://cloud.google.com/vpc/docs/flow-logs#filtering for details on how to format this field.\nThe default value is \'true\', which evaluates to include everything.',
            ),
            'flow_sampling': $Schema.number(
              description:
                  'Can only be specified if VPC flow logging for this subnetwork is enabled.\nThe value of the field must be in [0, 1]. Set the sampling rate of VPC\nflow logs within the subnetwork where 1.0 means all collected logs are\nreported and 0.0 means no logs are reported. Default is 0.5 which means\nhalf of all collected logs are reported.',
            ),
            'metadata': $Schema.string(
              description:
                  'Can only be specified if VPC flow logging for this subnetwork is enabled.\nConfigures whether metadata fields should be added to the reported VPC\nflow logs. Default value: "INCLUDE_ALL_METADATA" Possible values: ["EXCLUDE_ALL_METADATA", "INCLUDE_ALL_METADATA", "CUSTOM_METADATA"]',
            ),
            'metadata_fields': $Schema.list(
              description:
                  'List of metadata fields that should be added to reported logs.\nCan only be specified if VPC flow logs for this subnetwork is enabled and "metadata" is set to CUSTOM_METADATA.',
              items: $Schema.string(),
            ),
          },
          description:
              'This field denotes the VPC flow logging options for this subnetwork. If\nlogging is enabled, logs are exported to Cloud Logging. Flow logging\nisn\'t supported if the subnet \'purpose\' field is set to subnetwork is\n\'REGIONAL_MANAGED_PROXY\' or \'GLOBAL_MANAGED_PROXY\'.',
        )
        .value,
    dependencies: [],
  );
}

base class Params {
  /// Creates a [Params] from a JSON map.
  factory Params.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Params._(this._json);

  Params({Map<String, String>? resourceManagerTags}) {
    _json = {'resource_manager_tags': ?resourceManagerTags};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Params].
  static const SchemanticType<Params> $schema = _ParamsTypeFactory();

  Map<String, String>? get resourceManagerTags {
    return (_json['resource_manager_tags'] as Map?)?.cast<String, String>();
  }

  set resourceManagerTags(Map<String, String>? value) {
    if (value == null) {
      _json.remove('resource_manager_tags');
    } else {
      _json['resource_manager_tags'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Params] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParamsTypeFactory extends SchemanticType<Params> {
  const _ParamsTypeFactory();

  @override
  Params parse(Object? json) {
    return Params._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Params',
    definition: $Schema
        .object(
          properties: {
            'resource_manager_tags': $Schema.object(
              description:
                  'Resource manager tags to be bound to the subnetwork. Tag keys and values have the\nsame definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},\nand values are in the format tagValues/456. The field is ignored when empty.\nThe field is immutable and causes resource replacement when mutated. This field is only\nset at create time and modifying this field after creation will trigger recreation.\nTo apply tags to an existing resource, see the google_tags_tag_binding resource.',
              additionalProperties: $Schema.string(),
            ),
          },
          description:
              'Additional params passed with the request, but not persisted as part of resource payload',
        )
        .value,
    dependencies: [],
  );
}

base class SecondaryIpRange {
  /// Creates a [SecondaryIpRange] from a JSON map.
  factory SecondaryIpRange.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SecondaryIpRange._(this._json);

  SecondaryIpRange({
    String? ipCidrRange,
    required String rangeName,
    String? reservedInternalRange,
  }) {
    _json = {
      'ip_cidr_range': ?ipCidrRange,
      'range_name': rangeName,
      'reserved_internal_range': ?reservedInternalRange,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SecondaryIpRange].
  static const SchemanticType<SecondaryIpRange> $schema =
      _SecondaryIpRangeTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get ipCidrRange {
    return _json['ip_cidr_range'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set ipCidrRange(String? value) {
    if (value == null) {
      _json.remove('ip_cidr_range');
    } else {
      _json['ip_cidr_range'] = value;
    }
  }

  String get rangeName {
    return _json['range_name'] as String;
  }

  set rangeName(String value) {
    _json['range_name'] = value;
  }

  String? get reservedInternalRange {
    return _json['reserved_internal_range'] as String?;
  }

  set reservedInternalRange(String? value) {
    if (value == null) {
      _json.remove('reserved_internal_range');
    } else {
      _json['reserved_internal_range'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SecondaryIpRange] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SecondaryIpRangeTypeFactory
    extends SchemanticType<SecondaryIpRange> {
  const _SecondaryIpRangeTypeFactory();

  @override
  SecondaryIpRange parse(Object? json) {
    return SecondaryIpRange._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SecondaryIpRange',
    definition: $Schema
        .object(
          properties: {
            'ip_cidr_range': $Schema.string(
              description:
                  'The range of IP addresses belonging to this subnetwork secondary\nrange. Provide this property when you create the subnetwork.\nRanges must be unique and non-overlapping with all primary and\nsecondary IP ranges within a network. Only IPv4 is supported.\nField is optional when \'reserved_internal_range\' is defined, otherwise required.',
            ),
            'range_name': $Schema.string(
              description:
                  'The name associated with this subnetwork secondary range, used\nwhen adding an alias IP range to a VM instance. The name must\nbe 1-63 characters long, and comply with RFC1035. The name\nmust be unique within the subnetwork.',
            ),
            'reserved_internal_range': $Schema.string(
              description:
                  'The ID of the reserved internal range. Must be prefixed with \'networkconnectivity.googleapis.com\'\nE.g. \'networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}\'',
            ),
          },
          required: ['range_name'],
          description:
              'An array of configurations for secondary IP ranges for VM instances\ncontained in this subnetwork. The primary IP of such VM must belong\nto the primary ipCidrRange of the subnetwork. The alias IPs may belong\nto either primary or secondary ranges.\n\n**Note**: This field uses [attr-as-block mode](https://developer.hashicorp.com/terraform/language/attr-as-blocks) to avoid\nbreaking users during the 0.12 upgrade. To explicitly send a list of zero objects,\nset \'send_secondary_ip_range_if_empty = true\'',
        )
        .value,
    dependencies: [],
  );
}

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? delete, String? update}) {
    _json = {'create': ?create, 'delete': ?delete, 'update': ?update};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Timeouts].
  static const SchemanticType<Timeouts> $schema = _TimeoutsTypeFactory();

  String? get create {
    return _json['create'] as String?;
  }

  set create(String? value) {
    if (value == null) {
      _json.remove('create');
    } else {
      _json['create'] = value;
    }
  }

  String? get delete {
    return _json['delete'] as String?;
  }

  set delete(String? value) {
    if (value == null) {
      _json.remove('delete');
    } else {
      _json['delete'] = value;
    }
  }

  String? get update {
    return _json['update'] as String?;
  }

  set update(String? value) {
    if (value == null) {
      _json.remove('update');
    } else {
      _json['update'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Timeouts] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TimeoutsTypeFactory extends SchemanticType<Timeouts> {
  const _TimeoutsTypeFactory();

  @override
  Timeouts parse(Object? json) {
    return Timeouts._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Timeouts',
    definition: $Schema
        .object(
          properties: {
            'create': $Schema.string(),
            'delete': $Schema.string(),
            'update': $Schema.string(),
          },
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleComputeSubnetwork {
  /// Creates a [GoogleComputeSubnetwork] from a JSON map.
  factory GoogleComputeSubnetwork.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleComputeSubnetwork._(this._json);

  GoogleComputeSubnetwork({
    bool? allowSubnetCidrRoutesOverlap,
    String? description,
    String? externalIpv6Prefix,
    String? id,
    String? internalIpv6Prefix,
    String? ipCidrRange,
    String? ipCollection,
    String? ipv6AccessType,
    required String name,
    required String network,
    bool? privateIpGoogleAccess,
    String? privateIpv6GoogleAccess,
    String? project,
    String? purpose,
    String? region,
    String? reservedInternalRange,
    String? resolveSubnetMask,
    String? role,
    bool? sendSecondaryIpRangeIfEmpty,
    String? stackType,
    LogConfig? logConfig,
    Params? params,
    List<SecondaryIpRange>? secondaryIpRange,
    Timeouts? timeouts,
  }) {
    _json = {
      'allow_subnet_cidr_routes_overlap': ?allowSubnetCidrRoutesOverlap,
      'description': ?description,
      'external_ipv6_prefix': ?externalIpv6Prefix,
      'id': ?id,
      'internal_ipv6_prefix': ?internalIpv6Prefix,
      'ip_cidr_range': ?ipCidrRange,
      'ip_collection': ?ipCollection,
      'ipv6_access_type': ?ipv6AccessType,
      'name': name,
      'network': network,
      'private_ip_google_access': ?privateIpGoogleAccess,
      'private_ipv6_google_access': ?privateIpv6GoogleAccess,
      'project': ?project,
      'purpose': ?purpose,
      'region': ?region,
      'reserved_internal_range': ?reservedInternalRange,
      'resolve_subnet_mask': ?resolveSubnetMask,
      'role': ?role,
      'send_secondary_ip_range_if_empty': ?sendSecondaryIpRangeIfEmpty,
      'stack_type': ?stackType,
      'log_config': ?logConfig?.toJson(),
      'params': ?params?.toJson(),
      'secondary_ip_range': ?secondaryIpRange?.map((e) => e.toJson()).toList(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleComputeSubnetwork].
  static const SchemanticType<GoogleComputeSubnetwork> $schema =
      _GoogleComputeSubnetworkTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  bool? get allowSubnetCidrRoutesOverlap {
    return _json['allow_subnet_cidr_routes_overlap'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set allowSubnetCidrRoutesOverlap(bool? value) {
    if (value == null) {
      _json.remove('allow_subnet_cidr_routes_overlap');
    } else {
      _json['allow_subnet_cidr_routes_overlap'] = value;
    }
  }

  String? get description {
    return _json['description'] as String?;
  }

  set description(String? value) {
    if (value == null) {
      _json.remove('description');
    } else {
      _json['description'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get externalIpv6Prefix {
    return _json['external_ipv6_prefix'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set externalIpv6Prefix(String? value) {
    if (value == null) {
      _json.remove('external_ipv6_prefix');
    } else {
      _json['external_ipv6_prefix'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get id {
    return _json['id'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set id(String? value) {
    if (value == null) {
      _json.remove('id');
    } else {
      _json['id'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get internalIpv6Prefix {
    return _json['internal_ipv6_prefix'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set internalIpv6Prefix(String? value) {
    if (value == null) {
      _json.remove('internal_ipv6_prefix');
    } else {
      _json['internal_ipv6_prefix'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get ipCidrRange {
    return _json['ip_cidr_range'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set ipCidrRange(String? value) {
    if (value == null) {
      _json.remove('ip_cidr_range');
    } else {
      _json['ip_cidr_range'] = value;
    }
  }

  String? get ipCollection {
    return _json['ip_collection'] as String?;
  }

  set ipCollection(String? value) {
    if (value == null) {
      _json.remove('ip_collection');
    } else {
      _json['ip_collection'] = value;
    }
  }

  String? get ipv6AccessType {
    return _json['ipv6_access_type'] as String?;
  }

  set ipv6AccessType(String? value) {
    if (value == null) {
      _json.remove('ipv6_access_type');
    } else {
      _json['ipv6_access_type'] = value;
    }
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String get network {
    return _json['network'] as String;
  }

  set network(String value) {
    _json['network'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  bool? get privateIpGoogleAccess {
    return _json['private_ip_google_access'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set privateIpGoogleAccess(bool? value) {
    if (value == null) {
      _json.remove('private_ip_google_access');
    } else {
      _json['private_ip_google_access'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get privateIpv6GoogleAccess {
    return _json['private_ipv6_google_access'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set privateIpv6GoogleAccess(String? value) {
    if (value == null) {
      _json.remove('private_ipv6_google_access');
    } else {
      _json['private_ipv6_google_access'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get project {
    return _json['project'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set project(String? value) {
    if (value == null) {
      _json.remove('project');
    } else {
      _json['project'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get purpose {
    return _json['purpose'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set purpose(String? value) {
    if (value == null) {
      _json.remove('purpose');
    } else {
      _json['purpose'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get region {
    return _json['region'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set region(String? value) {
    if (value == null) {
      _json.remove('region');
    } else {
      _json['region'] = value;
    }
  }

  String? get reservedInternalRange {
    return _json['reserved_internal_range'] as String?;
  }

  set reservedInternalRange(String? value) {
    if (value == null) {
      _json.remove('reserved_internal_range');
    } else {
      _json['reserved_internal_range'] = value;
    }
  }

  String? get resolveSubnetMask {
    return _json['resolve_subnet_mask'] as String?;
  }

  set resolveSubnetMask(String? value) {
    if (value == null) {
      _json.remove('resolve_subnet_mask');
    } else {
      _json['resolve_subnet_mask'] = value;
    }
  }

  String? get role {
    return _json['role'] as String?;
  }

  set role(String? value) {
    if (value == null) {
      _json.remove('role');
    } else {
      _json['role'] = value;
    }
  }

  bool? get sendSecondaryIpRangeIfEmpty {
    return _json['send_secondary_ip_range_if_empty'] as bool?;
  }

  set sendSecondaryIpRangeIfEmpty(bool? value) {
    if (value == null) {
      _json.remove('send_secondary_ip_range_if_empty');
    } else {
      _json['send_secondary_ip_range_if_empty'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get stackType {
    return _json['stack_type'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set stackType(String? value) {
    if (value == null) {
      _json.remove('stack_type');
    } else {
      _json['stack_type'] = value;
    }
  }

  LogConfig? get logConfig {
    return _json['log_config'] == null
        ? null
        : LogConfig.fromJson(_json['log_config'] as Map<String, dynamic>);
  }

  set logConfig(LogConfig? value) {
    if (value == null) {
      _json.remove('log_config');
    } else {
      _json['log_config'] = value;
    }
  }

  Params? get params {
    return _json['params'] == null
        ? null
        : Params.fromJson(_json['params'] as Map<String, dynamic>);
  }

  set params(Params? value) {
    if (value == null) {
      _json.remove('params');
    } else {
      _json['params'] = value;
    }
  }

  List<SecondaryIpRange>? get secondaryIpRange {
    return (_json['secondary_ip_range'] as List?)
        ?.map((e) => SecondaryIpRange.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set secondaryIpRange(List<SecondaryIpRange>? value) {
    if (value == null) {
      _json.remove('secondary_ip_range');
    } else {
      _json['secondary_ip_range'] = value.toList();
    }
  }

  Timeouts? get timeouts {
    return _json['timeouts'] == null
        ? null
        : Timeouts.fromJson(_json['timeouts'] as Map<String, dynamic>);
  }

  set timeouts(Timeouts? value) {
    if (value == null) {
      _json.remove('timeouts');
    } else {
      _json['timeouts'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleComputeSubnetwork] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleComputeSubnetworkTypeFactory
    extends SchemanticType<GoogleComputeSubnetwork> {
  const _GoogleComputeSubnetworkTypeFactory();

  @override
  GoogleComputeSubnetwork parse(Object? json) {
    return GoogleComputeSubnetwork._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleComputeSubnetwork',
    definition: $Schema
        .object(
          properties: {
            'allow_subnet_cidr_routes_overlap': $Schema.boolean(
              description:
                  'Typically packets destined to IPs within the subnetwork range that do not match\nexisting resources are dropped and prevented from leaving the VPC.\nSetting this field to true will allow these packets to match dynamic routes injected\nvia BGP even if their destinations match existing subnet ranges.',
            ),
            'description': $Schema.string(
              description:
                  'An optional description of this resource. Provide this property when\nyou create the resource. This field can be set only at resource\ncreation time.',
            ),
            'external_ipv6_prefix': $Schema.string(
              description:
                  'The range of external IPv6 addresses that are owned by this subnetwork.',
            ),
            'id': $Schema.string(),
            'internal_ipv6_prefix': $Schema.string(
              description:
                  'The internal IPv6 address range that is assigned to this subnetwork.',
            ),
            'ip_cidr_range': $Schema.string(
              description:
                  'The range of internal addresses that are owned by this subnetwork.\nProvide this property when you create the subnetwork. For example,\n10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and\nnon-overlapping within a network. Only IPv4 is supported.\nField is optional when \'reserved_internal_range\' is defined, otherwise required.',
            ),
            'ip_collection': $Schema.string(
              description:
                  'Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP\nin EXTERNAL_IPV6_SUBNETWORK_CREATION or INTERNAL_IPV6_SUBNETWORK_CREATION\nmode. Use one of the following formats to specify a sub-PDP when creating\na dual stack or IPv6-only subnetwork using BYOIP:\nFull resource URL, as in:\n  * \'https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}\'\nPartial URL, as in:\n  * \'projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}\'\n  * \'regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}\'',
            ),
            'ipv6_access_type': $Schema.string(
              description:
                  'The access type of IPv6 address this subnet holds. It\'s immutable and can only be specified during creation\nor the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet\ncannot enable direct path. Possible values: ["EXTERNAL", "INTERNAL"]',
            ),
            'name': $Schema.string(
              description:
                  'The name of the resource, provided by the client when initially\ncreating the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression \'[a-z]([-a-z0-9]*[a-z0-9])?\' which\nmeans the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.',
            ),
            'network': $Schema.string(
              description:
                  'The network this subnet belongs to.\nOnly networks that are in the distributed mode can have subnetworks.',
            ),
            'private_ip_google_access': $Schema.boolean(
              description:
                  'When enabled, VMs in this subnetwork without external IP addresses can\naccess Google APIs and services by using Private Google Access.',
            ),
            'private_ipv6_google_access': $Schema.string(
              description:
                  'The private IPv6 google access type for the VMs in this subnet.',
            ),
            'project': $Schema.string(),
            'purpose': $Schema.string(
              description:
                  'The purpose of the resource. This field can be either \'PRIVATE\', \'REGIONAL_MANAGED_PROXY\', \'GLOBAL_MANAGED_PROXY\', \'PRIVATE_SERVICE_CONNECT\', \'PEER_MIGRATION\' or \'PRIVATE_NAT\'([Beta](../guides/provider_versions.html.markdown)).\nA subnet with purpose set to \'REGIONAL_MANAGED_PROXY\' is a user-created subnetwork that is reserved for regional Envoy-based load balancers.\nA subnetwork in a given region with purpose set to \'GLOBAL_MANAGED_PROXY\' is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.\nA subnetwork with purpose set to \'PRIVATE_SERVICE_CONNECT\' reserves the subnet for hosting a Private Service Connect published service.\nA subnetwork with purpose set to \'PEER_MIGRATION\' is a user created subnetwork that is reserved for migrating resources from one peered network to another.\nA subnetwork with purpose set to \'PRIVATE_NAT\' is used as source range for Private NAT gateways.\nNote that \'REGIONAL_MANAGED_PROXY\' is the preferred setting for all regional Envoy load balancers.\nIf unspecified, the purpose defaults to \'PRIVATE\'.',
            ),
            'region': $Schema.string(
              description: 'The GCP region for this subnetwork.',
            ),
            'reserved_internal_range': $Schema.string(
              description:
                  'The ID of the reserved internal range. Must be prefixed with \'networkconnectivity.googleapis.com\'\nE.g. \'networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}\'',
            ),
            'resolve_subnet_mask': $Schema.string(
              description:
                  '\'Configures subnet mask resolution for this subnetwork.\' Possible values: ["ARP_ALL_RANGES", "ARP_PRIMARY_RANGE"]',
            ),
            'role': $Schema.string(
              description:
                  'The role of subnetwork.\nCurrently, this field is only used when \'purpose\' is \'REGIONAL_MANAGED_PROXY\'.\nThe value can be set to \'ACTIVE\' or \'BACKUP\'.\nAn \'ACTIVE\' subnetwork is one that is currently being used for Envoy-based load balancers in a region.\nA \'BACKUP\' subnetwork is one that is ready to be promoted to \'ACTIVE\' or is currently draining. Possible values: ["ACTIVE", "BACKUP"]',
            ),
            'send_secondary_ip_range_if_empty': $Schema.boolean(
              description:
                  'Controls the removal behavior of secondary_ip_range.\nWhen false, removing secondary_ip_range from config will not produce a diff as\nthe provider will default to the API\'s value.\nWhen true, the provider will treat removing secondary_ip_range as sending an\nempty list of secondary IP ranges to the API.\nDefaults to false.',
            ),
            'stack_type': $Schema.string(
              description:
                  'The stack type for this subnet to identify whether the IPv6 feature is enabled or not.\nIf not specified IPV4_ONLY will be used. Possible values: ["IPV4_ONLY", "IPV4_IPV6", "IPV6_ONLY"]',
            ),
            'log_config': $Schema.fromMap({'\$ref': r'#/$defs/LogConfig'}),
            'params': $Schema.fromMap({'\$ref': r'#/$defs/Params'}),
            'secondary_ip_range': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/SecondaryIpRange'}),
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['name', 'network'],
        )
        .value,
    dependencies: [
      LogConfig.$schema,
      Params.$schema,
      SecondaryIpRange.$schema,
      Timeouts.$schema,
    ],
  );
}

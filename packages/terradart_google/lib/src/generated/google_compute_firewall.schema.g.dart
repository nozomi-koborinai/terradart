// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_compute_firewall.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Allow {
  /// Creates a [Allow] from a JSON map.
  factory Allow.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Allow._(this._json);

  Allow({List<String>? ports, required String protocol}) {
    _json = {'ports': ?ports, 'protocol': protocol};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Allow].
  static const SchemanticType<Allow> $schema = _AllowTypeFactory();

  List<String>? get ports {
    return (_json['ports'] as List?)?.cast<String>();
  }

  set ports(List<String>? value) {
    if (value == null) {
      _json.remove('ports');
    } else {
      _json['ports'] = value;
    }
  }

  String get protocol {
    return _json['protocol'] as String;
  }

  set protocol(String value) {
    _json['protocol'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Allow] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AllowTypeFactory extends SchemanticType<Allow> {
  const _AllowTypeFactory();

  @override
  Allow parse(Object? json) {
    return Allow._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Allow',
    definition: $Schema
        .object(
          properties: {
            'ports': $Schema.list(
              description:
                  'An optional list of ports to which this rule applies. This field\nis only applicable for UDP or TCP protocol. Each entry must be\neither an integer or a range. If not specified, this rule\napplies to connections through any port.\n\nExample inputs include: [22], [80, 443], and\n["12345-12349"].',
              items: $Schema.string(),
            ),
            'protocol': $Schema.string(
              description:
                  'The IP protocol to which this rule applies. The protocol type is\nrequired when creating a firewall rule. This value can either be\none of the following well known protocol strings (tcp, udp,\nicmp, esp, ah, sctp, ipip, all), or the IP protocol number.',
            ),
          },
          required: ['protocol'],
          description:
              'The list of ALLOW rules specified by this firewall. Each rule\nspecifies a protocol and port-range tuple that describes a permitted\nconnection.',
        )
        .value,
    dependencies: [],
  );
}

base class Deny {
  /// Creates a [Deny] from a JSON map.
  factory Deny.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Deny._(this._json);

  Deny({List<String>? ports, required String protocol}) {
    _json = {'ports': ?ports, 'protocol': protocol};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Deny].
  static const SchemanticType<Deny> $schema = _DenyTypeFactory();

  List<String>? get ports {
    return (_json['ports'] as List?)?.cast<String>();
  }

  set ports(List<String>? value) {
    if (value == null) {
      _json.remove('ports');
    } else {
      _json['ports'] = value;
    }
  }

  String get protocol {
    return _json['protocol'] as String;
  }

  set protocol(String value) {
    _json['protocol'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Deny] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DenyTypeFactory extends SchemanticType<Deny> {
  const _DenyTypeFactory();

  @override
  Deny parse(Object? json) {
    return Deny._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Deny',
    definition: $Schema
        .object(
          properties: {
            'ports': $Schema.list(
              description:
                  'An optional list of ports to which this rule applies. This field\nis only applicable for UDP or TCP protocol. Each entry must be\neither an integer or a range. If not specified, this rule\napplies to connections through any port.\n\nExample inputs include: [22], [80, 443], and\n["12345-12349"].',
              items: $Schema.string(),
            ),
            'protocol': $Schema.string(
              description:
                  'The IP protocol to which this rule applies. The protocol type is\nrequired when creating a firewall rule. This value can either be\none of the following well known protocol strings (tcp, udp,\nicmp, esp, ah, sctp, ipip, all), or the IP protocol number.',
            ),
          },
          required: ['protocol'],
          description:
              'The list of DENY rules specified by this firewall. Each rule specifies\na protocol and port-range tuple that describes a denied connection.',
        )
        .value,
    dependencies: [],
  );
}

base class LogConfig {
  /// Creates a [LogConfig] from a JSON map.
  factory LogConfig.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  LogConfig._(this._json);

  LogConfig({required String metadata}) {
    _json = {'metadata': metadata};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [LogConfig].
  static const SchemanticType<LogConfig> $schema = _LogConfigTypeFactory();

  String get metadata {
    return _json['metadata'] as String;
  }

  set metadata(String value) {
    _json['metadata'] = value;
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
            'metadata': $Schema.string(
              description:
                  'This field denotes whether to include or exclude metadata for firewall logs. Possible values: ["EXCLUDE_ALL_METADATA", "INCLUDE_ALL_METADATA"]',
            ),
          },
          required: ['metadata'],
          description:
              'This field denotes the logging options for a particular firewall rule.\nIf defined, logging is enabled, and logs will be exported to Cloud Logging.',
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
                  'Resource manager tags to be bound to the firewall. Tag keys and values have the\nsame definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},\nand values are in the format tagValues/456. The field is ignored when empty.\nThe field is immutable and causes resource replacement when mutated. This field is only\nset at create time and modifying this field after creation will trigger recreation.\nTo apply tags to an existing resource, see the google_tags_tag_binding resource.',
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

base class GoogleComputeFirewall {
  /// Creates a [GoogleComputeFirewall] from a JSON map.
  factory GoogleComputeFirewall.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleComputeFirewall._(this._json);

  GoogleComputeFirewall({
    String? description,
    List<String>? destinationRanges,
    String? direction,
    bool? disabled,
    bool? enableLogging,
    String? id,
    required String name,
    required String network,
    num? priority,
    String? project,
    List<String>? sourceRanges,
    List<String>? sourceServiceAccounts,
    List<String>? sourceTags,
    List<String>? targetServiceAccounts,
    List<String>? targetTags,
    List<Allow>? allow,
    List<Deny>? deny,
    LogConfig? logConfig,
    Params? params,
    Timeouts? timeouts,
  }) {
    _json = {
      'description': ?description,
      'destination_ranges': ?destinationRanges,
      'direction': ?direction,
      'disabled': ?disabled,
      'enable_logging': ?enableLogging,
      'id': ?id,
      'name': name,
      'network': network,
      'priority': ?priority,
      'project': ?project,
      'source_ranges': ?sourceRanges,
      'source_service_accounts': ?sourceServiceAccounts,
      'source_tags': ?sourceTags,
      'target_service_accounts': ?targetServiceAccounts,
      'target_tags': ?targetTags,
      'allow': ?allow?.map((e) => e.toJson()).toList(),
      'deny': ?deny?.map((e) => e.toJson()).toList(),
      'log_config': ?logConfig?.toJson(),
      'params': ?params?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleComputeFirewall].
  static const SchemanticType<GoogleComputeFirewall> $schema =
      _GoogleComputeFirewallTypeFactory();

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
  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get destinationRanges {
    return (_json['destination_ranges'] as List?)?.cast<String>();
  }

  /// Optional + Computed. Inferred from provider when null.
  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set destinationRanges(List<String>? value) {
    if (value == null) {
      _json.remove('destination_ranges');
    } else {
      _json['destination_ranges'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get direction {
    return _json['direction'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set direction(String? value) {
    if (value == null) {
      _json.remove('direction');
    } else {
      _json['direction'] = value;
    }
  }

  bool? get disabled {
    return _json['disabled'] as bool?;
  }

  set disabled(bool? value) {
    if (value == null) {
      _json.remove('disabled');
    } else {
      _json['disabled'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  bool? get enableLogging {
    return _json['enable_logging'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set enableLogging(bool? value) {
    if (value == null) {
      _json.remove('enable_logging');
    } else {
      _json['enable_logging'] = value;
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

  num? get priority {
    return _json['priority'] as num?;
  }

  set priority(num? value) {
    if (value == null) {
      _json.remove('priority');
    } else {
      _json['priority'] = value;
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

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get sourceRanges {
    return (_json['source_ranges'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set sourceRanges(List<String>? value) {
    if (value == null) {
      _json.remove('source_ranges');
    } else {
      _json['source_ranges'] = value;
    }
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get sourceServiceAccounts {
    return (_json['source_service_accounts'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set sourceServiceAccounts(List<String>? value) {
    if (value == null) {
      _json.remove('source_service_accounts');
    } else {
      _json['source_service_accounts'] = value;
    }
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get sourceTags {
    return (_json['source_tags'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set sourceTags(List<String>? value) {
    if (value == null) {
      _json.remove('source_tags');
    } else {
      _json['source_tags'] = value;
    }
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get targetServiceAccounts {
    return (_json['target_service_accounts'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set targetServiceAccounts(List<String>? value) {
    if (value == null) {
      _json.remove('target_service_accounts');
    } else {
      _json['target_service_accounts'] = value;
    }
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get targetTags {
    return (_json['target_tags'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set targetTags(List<String>? value) {
    if (value == null) {
      _json.remove('target_tags');
    } else {
      _json['target_tags'] = value;
    }
  }

  List<Allow>? get allow {
    return (_json['allow'] as List?)
        ?.map((e) => Allow.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set allow(List<Allow>? value) {
    if (value == null) {
      _json.remove('allow');
    } else {
      _json['allow'] = value.toList();
    }
  }

  List<Deny>? get deny {
    return (_json['deny'] as List?)
        ?.map((e) => Deny.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set deny(List<Deny>? value) {
    if (value == null) {
      _json.remove('deny');
    } else {
      _json['deny'] = value.toList();
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

  /// Serializes this [GoogleComputeFirewall] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleComputeFirewallTypeFactory
    extends SchemanticType<GoogleComputeFirewall> {
  const _GoogleComputeFirewallTypeFactory();

  @override
  GoogleComputeFirewall parse(Object? json) {
    return GoogleComputeFirewall._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleComputeFirewall',
    definition: $Schema
        .object(
          properties: {
            'description': $Schema.string(
              description:
                  'An optional description of this resource. Provide this property when\nyou create the resource.',
            ),
            'destination_ranges': $Schema.list(
              description:
                  'If destination ranges are specified, the firewall will apply only to\ntraffic that has destination IP address in these ranges. These ranges\nmust be expressed in CIDR format. IPv4 or IPv6 ranges are supported.',
              items: $Schema.string(),
            ),
            'direction': $Schema.string(
              description:
                  'Direction of traffic to which this firewall applies; default is\nINGRESS. Note: For INGRESS traffic, one of \'source_ranges\',\n\'source_tags\' or \'source_service_accounts\' is required. Possible values: ["INGRESS", "EGRESS"]',
            ),
            'disabled': $Schema.boolean(
              description:
                  'Denotes whether the firewall rule is disabled, i.e not applied to the\nnetwork it is associated with. When set to true, the firewall rule is\nnot enforced and the network behaves as if it did not exist. If this\nis unspecified, the firewall rule will be enabled.',
            ),
            'enable_logging': $Schema.boolean(
              description:
                  'This field denotes whether to enable logging for a particular firewall rule. If logging is enabled, logs will be exported to Stackdriver.',
            ),
            'id': $Schema.string(),
            'name': $Schema.string(
              description:
                  'Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \'[a-z]([-a-z0-9]*[a-z0-9])?\' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.',
            ),
            'network': $Schema.string(
              description:
                  'The name or self_link of the network to attach this firewall to.',
            ),
            'priority': $Schema.number(
              description:
                  'Priority for this rule. This is an integer between 0 and 65535, both\ninclusive. When not specified, the value assumed is 1000. Relative\npriorities determine precedence of conflicting rules. Lower value of\npriority implies higher precedence (eg, a rule with priority 0 has\nhigher precedence than a rule with priority 1). DENY rules take\nprecedence over ALLOW rules having equal priority.',
            ),
            'project': $Schema.string(),
            'source_ranges': $Schema.list(
              description:
                  'If source ranges are specified, the firewall will apply only to\ntraffic that has source IP address in these ranges. These ranges must\nbe expressed in CIDR format. One or both of sourceRanges and\nsourceTags may be set. If both properties are set, the firewall will\napply to traffic that has source IP address within sourceRanges OR the\nsource IP that belongs to a tag listed in the sourceTags property. The\nconnection does not need to match both properties for the firewall to\napply. IPv4 or IPv6 ranges are supported. For INGRESS traffic, one of\n\'source_ranges\', \'source_tags\' or \'source_service_accounts\' is required.',
              items: $Schema.string(),
            ),
            'source_service_accounts': $Schema.list(
              description:
                  'If source service accounts are specified, the firewall will apply only\nto traffic originating from an instance with a service account in this\nlist. Source service accounts cannot be used to control traffic to an\ninstance\'s external IP address because service accounts are associated\nwith an instance, not an IP address. sourceRanges can be set at the\nsame time as sourceServiceAccounts. If both are set, the firewall will\napply to traffic that has source IP address within sourceRanges OR the\nsource IP belongs to an instance with service account listed in\nsourceServiceAccount. The connection does not need to match both\nproperties for the firewall to apply. sourceServiceAccounts cannot be\nused at the same time as sourceTags or targetTags. For INGRESS traffic,\none of \'source_ranges\', \'source_tags\' or \'source_service_accounts\' is required.',
              items: $Schema.string(),
            ),
            'source_tags': $Schema.list(
              description:
                  'If source tags are specified, the firewall will apply only to traffic\nwith source IP that belongs to a tag listed in source tags. Source\ntags cannot be used to control traffic to an instance\'s external IP\naddress. Because tags are associated with an instance, not an IP\naddress. One or both of sourceRanges and sourceTags may be set. If\nboth properties are set, the firewall will apply to traffic that has\nsource IP address within sourceRanges OR the source IP that belongs to\na tag listed in the sourceTags property. The connection does not need\nto match both properties for the firewall to apply. For INGRESS traffic,\none of \'source_ranges\', \'source_tags\' or \'source_service_accounts\' is required.',
              items: $Schema.string(),
            ),
            'target_service_accounts': $Schema.list(
              description:
                  'A list of service accounts indicating sets of instances located in the\nnetwork that may make network connections as specified in allowed[].\ntargetServiceAccounts cannot be used at the same time as targetTags or\nsourceTags. If neither targetServiceAccounts nor targetTags are\nspecified, the firewall rule applies to all instances on the specified\nnetwork.',
              items: $Schema.string(),
            ),
            'target_tags': $Schema.list(
              description:
                  'A list of instance tags indicating sets of instances located in the\nnetwork that may make network connections as specified in allowed[].\nIf no targetTags are specified, the firewall rule applies to all\ninstances on the specified network.',
              items: $Schema.string(),
            ),
            'allow': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Allow'}),
            ),
            'deny': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Deny'}),
            ),
            'log_config': $Schema.fromMap({'\$ref': r'#/$defs/LogConfig'}),
            'params': $Schema.fromMap({'\$ref': r'#/$defs/Params'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['name', 'network'],
        )
        .value,
    dependencies: [
      Allow.$schema,
      Deny.$schema,
      LogConfig.$schema,
      Params.$schema,
      Timeouts.$schema,
    ],
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_compute_network.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

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
                  'Resource manager tags to be bound to the network. Tag keys and values have the\nsame definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},\nand values are in the format tagValues/456.',
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

base class GoogleComputeNetwork {
  /// Creates a [GoogleComputeNetwork] from a JSON map.
  factory GoogleComputeNetwork.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleComputeNetwork._(this._json);

  GoogleComputeNetwork({
    bool? autoCreateSubnetworks,
    bool? bgpAlwaysCompareMed,
    String? bgpBestPathSelectionMode,
    String? bgpInterRegionCost,
    bool? deleteBgpAlwaysCompareMed,
    bool? deleteDefaultRoutesOnCreate,
    String? description,
    bool? enableUlaInternalIpv6,
    String? id,
    String? internalIpv6Range,
    num? mtu,
    required String name,
    String? networkFirewallPolicyEnforcementOrder,
    String? networkProfile,
    String? project,
    String? routingMode,
    Params? params,
    Timeouts? timeouts,
  }) {
    _json = {
      'auto_create_subnetworks': ?autoCreateSubnetworks,
      'bgp_always_compare_med': ?bgpAlwaysCompareMed,
      'bgp_best_path_selection_mode': ?bgpBestPathSelectionMode,
      'bgp_inter_region_cost': ?bgpInterRegionCost,
      'delete_bgp_always_compare_med': ?deleteBgpAlwaysCompareMed,
      'delete_default_routes_on_create': ?deleteDefaultRoutesOnCreate,
      'description': ?description,
      'enable_ula_internal_ipv6': ?enableUlaInternalIpv6,
      'id': ?id,
      'internal_ipv6_range': ?internalIpv6Range,
      'mtu': ?mtu,
      'name': name,
      'network_firewall_policy_enforcement_order':
          ?networkFirewallPolicyEnforcementOrder,
      'network_profile': ?networkProfile,
      'project': ?project,
      'routing_mode': ?routingMode,
      'params': ?params?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleComputeNetwork].
  static const SchemanticType<GoogleComputeNetwork> $schema =
      _GoogleComputeNetworkTypeFactory();

  bool? get autoCreateSubnetworks {
    return _json['auto_create_subnetworks'] as bool?;
  }

  set autoCreateSubnetworks(bool? value) {
    if (value == null) {
      _json.remove('auto_create_subnetworks');
    } else {
      _json['auto_create_subnetworks'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  bool? get bgpAlwaysCompareMed {
    return _json['bgp_always_compare_med'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set bgpAlwaysCompareMed(bool? value) {
    if (value == null) {
      _json.remove('bgp_always_compare_med');
    } else {
      _json['bgp_always_compare_med'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get bgpBestPathSelectionMode {
    return _json['bgp_best_path_selection_mode'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set bgpBestPathSelectionMode(String? value) {
    if (value == null) {
      _json.remove('bgp_best_path_selection_mode');
    } else {
      _json['bgp_best_path_selection_mode'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get bgpInterRegionCost {
    return _json['bgp_inter_region_cost'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set bgpInterRegionCost(String? value) {
    if (value == null) {
      _json.remove('bgp_inter_region_cost');
    } else {
      _json['bgp_inter_region_cost'] = value;
    }
  }

  bool? get deleteBgpAlwaysCompareMed {
    return _json['delete_bgp_always_compare_med'] as bool?;
  }

  set deleteBgpAlwaysCompareMed(bool? value) {
    if (value == null) {
      _json.remove('delete_bgp_always_compare_med');
    } else {
      _json['delete_bgp_always_compare_med'] = value;
    }
  }

  bool? get deleteDefaultRoutesOnCreate {
    return _json['delete_default_routes_on_create'] as bool?;
  }

  set deleteDefaultRoutesOnCreate(bool? value) {
    if (value == null) {
      _json.remove('delete_default_routes_on_create');
    } else {
      _json['delete_default_routes_on_create'] = value;
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

  bool? get enableUlaInternalIpv6 {
    return _json['enable_ula_internal_ipv6'] as bool?;
  }

  set enableUlaInternalIpv6(bool? value) {
    if (value == null) {
      _json.remove('enable_ula_internal_ipv6');
    } else {
      _json['enable_ula_internal_ipv6'] = value;
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
  String? get internalIpv6Range {
    return _json['internal_ipv6_range'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set internalIpv6Range(String? value) {
    if (value == null) {
      _json.remove('internal_ipv6_range');
    } else {
      _json['internal_ipv6_range'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get mtu {
    return _json['mtu'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set mtu(num? value) {
    if (value == null) {
      _json.remove('mtu');
    } else {
      _json['mtu'] = value;
    }
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get networkFirewallPolicyEnforcementOrder {
    return _json['network_firewall_policy_enforcement_order'] as String?;
  }

  set networkFirewallPolicyEnforcementOrder(String? value) {
    if (value == null) {
      _json.remove('network_firewall_policy_enforcement_order');
    } else {
      _json['network_firewall_policy_enforcement_order'] = value;
    }
  }

  String? get networkProfile {
    return _json['network_profile'] as String?;
  }

  set networkProfile(String? value) {
    if (value == null) {
      _json.remove('network_profile');
    } else {
      _json['network_profile'] = value;
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
  String? get routingMode {
    return _json['routing_mode'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set routingMode(String? value) {
    if (value == null) {
      _json.remove('routing_mode');
    } else {
      _json['routing_mode'] = value;
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

  /// Serializes this [GoogleComputeNetwork] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleComputeNetworkTypeFactory
    extends SchemanticType<GoogleComputeNetwork> {
  const _GoogleComputeNetworkTypeFactory();

  @override
  GoogleComputeNetwork parse(Object? json) {
    return GoogleComputeNetwork._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleComputeNetwork',
    definition: $Schema
        .object(
          properties: {
            'auto_create_subnetworks': $Schema.boolean(
              description:
                  'When set to \'true\', the network is created in "auto subnet mode" and\nit will create a subnet for each region automatically across the\n\'10.128.0.0/9\' address range.\n\nWhen set to \'false\', the network is created in "custom subnet mode" so\nthe user can explicitly connect subnetwork resources.',
            ),
            'bgp_always_compare_med': $Schema.boolean(
              description:
                  'Enables/disables the comparison of MED across routes with different Neighbor ASNs.\nThis value can only be set if the --bgp-best-path-selection-mode is STANDARD',
            ),
            'bgp_best_path_selection_mode': $Schema.string(
              description:
                  'The BGP best selection algorithm to be employed. MODE can be LEGACY or STANDARD. Possible values: ["LEGACY", "STANDARD"]',
            ),
            'bgp_inter_region_cost': $Schema.string(
              description:
                  'Choice of the behavior of inter-regional cost and MED in the BPS algorithm. Possible values: ["DEFAULT", "ADD_COST_TO_MED"]',
            ),
            'delete_bgp_always_compare_med': $Schema.boolean(
              description:
                  'If set to \'true\', the \'bgp_always_compare_med\' field will be cleared.\nIf set to \'false\' (the default), \'bgp_always_compare_med\' will be set to the value specified in the configuration.',
            ),
            'delete_default_routes_on_create': $Schema.boolean(
              description:
                  'If set to \'true\', default routes (\'0.0.0.0/0\') will be deleted\nimmediately after network creation. Defaults to \'false\'.',
            ),
            'description': $Schema.string(
              description:
                  'An optional description of this resource. The resource must be\nrecreated to modify this field.',
            ),
            'enable_ula_internal_ipv6': $Schema.boolean(
              description:
                  'Enable ULA internal ipv6 on this network. Enabling this feature will assign\na /48 from google defined ULA prefix fd20::/20.',
            ),
            'id': $Schema.string(),
            'internal_ipv6_range': $Schema.string(
              description:
                  'When enabling ula internal ipv6, caller optionally can specify the /48 range\nthey want from the google defined ULA prefix fd20::/20. The input must be a\nvalid /48 ULA IPv6 address and must be within the fd20::/20. Operation will\nfail if the speficied /48 is already in used by another resource.\nIf the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field.',
            ),
            'mtu': $Schema.number(
              description:
                  'Maximum Transmission Unit in bytes. The default value is 1460 bytes.\nThe minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).\nNote that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped\nwith an ICMP \'Fragmentation-Needed\' message if the packets are routed to the Internet or other VPCs\nwith varying MTUs.',
            ),
            'name': $Schema.string(
              description:
                  'Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \'[a-z]([-a-z0-9]*[a-z0-9])?\' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.',
            ),
            'network_firewall_policy_enforcement_order': $Schema.string(
              description:
                  'Set the order that Firewall Rules and Firewall Policies are evaluated. Default value: "AFTER_CLASSIC_FIREWALL" Possible values: ["BEFORE_CLASSIC_FIREWALL", "AFTER_CLASSIC_FIREWALL"]',
            ),
            'network_profile': $Schema.string(
              description:
                  'A full or partial URL of the network profile to apply to this network.\nThis field can be set only at resource creation time. For example, the\nfollowing are valid URLs:\n* https://www.googleapis.com/compute/v1/projects/{projectId}/global/networkProfiles/{network_profile_name}\n* projects/{projectId}/global/networkProfiles/{network_profile_name}',
            ),
            'project': $Schema.string(),
            'routing_mode': $Schema.string(
              description:
                  'The network-wide routing mode to use. If set to \'REGIONAL\', this\nnetwork\'s cloud routers will only advertise routes with subnetworks\nof this network in the same region as the router. If set to \'GLOBAL\',\nthis network\'s cloud routers will advertise routes with all\nsubnetworks of this network, across regions. Possible values: ["REGIONAL", "GLOBAL"]',
            ),
            'params': $Schema.fromMap({'\$ref': r'#/$defs/Params'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['name'],
        )
        .value,
    dependencies: [Params.$schema, Timeouts.$schema],
  );
}

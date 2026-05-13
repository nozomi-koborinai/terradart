// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_compute_address.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

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

base class GoogleComputeAddress {
  /// Creates a [GoogleComputeAddress] from a JSON map.
  factory GoogleComputeAddress.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleComputeAddress._(this._json);

  GoogleComputeAddress({
    String? address,
    String? addressType,
    String? description,
    String? id,
    String? ipCollection,
    String? ipVersion,
    String? ipv6EndpointType,
    Map<String, String>? labels,
    required String name,
    String? network,
    String? networkTier,
    num? prefixLength,
    String? project,
    String? purpose,
    String? region,
    String? subnetwork,
    Timeouts? timeouts,
  }) {
    _json = {
      'address': ?address,
      'address_type': ?addressType,
      'description': ?description,
      'id': ?id,
      'ip_collection': ?ipCollection,
      'ip_version': ?ipVersion,
      'ipv6_endpoint_type': ?ipv6EndpointType,
      'labels': ?labels,
      'name': name,
      'network': ?network,
      'network_tier': ?networkTier,
      'prefix_length': ?prefixLength,
      'project': ?project,
      'purpose': ?purpose,
      'region': ?region,
      'subnetwork': ?subnetwork,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleComputeAddress].
  static const SchemanticType<GoogleComputeAddress> $schema =
      _GoogleComputeAddressTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get address {
    return _json['address'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set address(String? value) {
    if (value == null) {
      _json.remove('address');
    } else {
      _json['address'] = value;
    }
  }

  String? get addressType {
    return _json['address_type'] as String?;
  }

  set addressType(String? value) {
    if (value == null) {
      _json.remove('address_type');
    } else {
      _json['address_type'] = value;
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

  String? get ipVersion {
    return _json['ip_version'] as String?;
  }

  set ipVersion(String? value) {
    if (value == null) {
      _json.remove('ip_version');
    } else {
      _json['ip_version'] = value;
    }
  }

  String? get ipv6EndpointType {
    return _json['ipv6_endpoint_type'] as String?;
  }

  set ipv6EndpointType(String? value) {
    if (value == null) {
      _json.remove('ipv6_endpoint_type');
    } else {
      _json['ipv6_endpoint_type'] = value;
    }
  }

  Map<String, String>? get labels {
    return (_json['labels'] as Map?)?.cast<String, String>();
  }

  set labels(Map<String, String>? value) {
    if (value == null) {
      _json.remove('labels');
    } else {
      _json['labels'] = value;
    }
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get network {
    return _json['network'] as String?;
  }

  set network(String? value) {
    if (value == null) {
      _json.remove('network');
    } else {
      _json['network'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get networkTier {
    return _json['network_tier'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set networkTier(String? value) {
    if (value == null) {
      _json.remove('network_tier');
    } else {
      _json['network_tier'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get prefixLength {
    return _json['prefix_length'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set prefixLength(num? value) {
    if (value == null) {
      _json.remove('prefix_length');
    } else {
      _json['prefix_length'] = value;
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

  /// Optional + Computed. Inferred from provider when null.
  String? get subnetwork {
    return _json['subnetwork'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set subnetwork(String? value) {
    if (value == null) {
      _json.remove('subnetwork');
    } else {
      _json['subnetwork'] = value;
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

  /// Serializes this [GoogleComputeAddress] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleComputeAddressTypeFactory
    extends SchemanticType<GoogleComputeAddress> {
  const _GoogleComputeAddressTypeFactory();

  @override
  GoogleComputeAddress parse(Object? json) {
    return GoogleComputeAddress._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleComputeAddress',
    definition: $Schema
        .object(
          properties: {
            'address': $Schema.string(
              description:
                  'The static external IP address represented by this resource.\nThe IP address must be inside the specified subnetwork,\nif any. Set by the API if undefined.',
            ),
            'address_type': $Schema.string(
              description:
                  'The type of address to reserve.\nNote: if you set this argument\'s value as \'INTERNAL\' you need to leave the \'network_tier\' argument unset in that resource block. Default value: "EXTERNAL" Possible values: ["INTERNAL", "EXTERNAL"]',
            ),
            'description': $Schema.string(
              description: 'An optional description of this resource.',
            ),
            'id': $Schema.string(),
            'ip_collection': $Schema.string(
              description:
                  'Reference to the source of external IPv4 addresses, like a PublicDelegatedPrefix(PDP) for BYOIP.\nThe PDP must support enhanced IPv4 allocations.\nUse one of the following formats to specify a PDP when reserving an external IPv4 address using BYOIP.\nFull resource URL, as in:\n  * \'https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{pdp-name}}\'\nPartial URL, as in:\n  * \'projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{pdp-name}}\'\n  * \'regions/{{region}}/publicDelegatedPrefixes/{{pdp-name}}\'',
            ),
            'ip_version': $Schema.string(
              description:
                  'The IP Version that will be used by this address. The default value is \'IPV4\'. Possible values: ["IPV4", "IPV6"]',
            ),
            'ipv6_endpoint_type': $Schema.string(
              description:
                  'The endpoint type of this address, which should be VM or NETLB. This is\nused for deciding which type of endpoint this address can be used after\nthe external IPv6 address reservation. Possible values: ["VM", "NETLB"]',
            ),
            'labels': $Schema.object(
              description:
                  'Labels to apply to this address.  A list of key->value pairs.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'name': $Schema.string(
              description:
                  'Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression \'[a-z]([-a-z0-9]*[a-z0-9])?\'\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.',
            ),
            'network': $Schema.string(
              description:
                  'The URL of the network in which to reserve the address. This field\ncan only be used with INTERNAL type with the VPC_PEERING and\nIPSEC_INTERCONNECT purposes.',
            ),
            'network_tier': $Schema.string(
              description:
                  'The networking tier used for configuring this address. If this field is not\nspecified, it is assumed to be PREMIUM.\nThis argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it\'s always Premium](https://cloud.google.com/network-tiers/docs/overview). Possible values: ["PREMIUM", "STANDARD"]',
            ),
            'prefix_length': $Schema.number(
              description:
                  'The prefix length if the resource represents an IP range.',
            ),
            'project': $Schema.string(),
            'purpose': $Schema.string(
              description:
                  'The purpose of this resource, which can be one of the following values.\n\n* GCE_ENDPOINT for addresses that are used by VM instances, alias IP\nranges, load balancers, and similar resources.\n\n* SHARED_LOADBALANCER_VIP for an address that can be used by multiple\ninternal load balancers.\n\n* VPC_PEERING for addresses that are reserved for VPC peer networks.\n\n* IPSEC_INTERCONNECT for addresses created from a private IP range that\nare reserved for a VLAN attachment in an HA VPN over Cloud Interconnect\nconfiguration. These addresses are regional resources.\n\n* PRIVATE_SERVICE_CONNECT for a private network address that is used to\nconfigure Private Service Connect. Only global internal addresses can use\nthis purpose.\n\nThis should only be set when using an Internal address.',
            ),
            'region': $Schema.string(
              description:
                  'The Region in which the created address should reside.\nIf it is not provided, the provider region is used.',
            ),
            'subnetwork': $Schema.string(
              description:
                  'The URL of the subnetwork in which to reserve the address. If an IP\naddress is specified, it must be within the subnetwork\'s IP range.\nThis field can only be used with INTERNAL type with\nGCE_ENDPOINT/DNS_RESOLVER purposes.',
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['name'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_dns_managed_zone.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class CloudLoggingConfig {
  /// Creates a [CloudLoggingConfig] from a JSON map.
  factory CloudLoggingConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  CloudLoggingConfig._(this._json);

  CloudLoggingConfig({required bool enableLogging}) {
    _json = {'enable_logging': enableLogging};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CloudLoggingConfig].
  static const SchemanticType<CloudLoggingConfig> $schema =
      _CloudLoggingConfigTypeFactory();

  bool get enableLogging {
    return _json['enable_logging'] as bool;
  }

  set enableLogging(bool value) {
    _json['enable_logging'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CloudLoggingConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CloudLoggingConfigTypeFactory
    extends SchemanticType<CloudLoggingConfig> {
  const _CloudLoggingConfigTypeFactory();

  @override
  CloudLoggingConfig parse(Object? json) {
    return CloudLoggingConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CloudLoggingConfig',
    definition: $Schema
        .object(
          properties: {
            'enable_logging': $Schema.boolean(
              description:
                  'If set, enable query logging for this ManagedZone. False by default, making logging opt-in.',
            ),
          },
          required: ['enable_logging'],
          description: 'Cloud logging configuration',
        )
        .value,
    dependencies: [],
  );
}

base class DefaultKeySpecs {
  /// Creates a [DefaultKeySpecs] from a JSON map.
  factory DefaultKeySpecs.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  DefaultKeySpecs._(this._json);

  DefaultKeySpecs({
    String? algorithm,
    num? keyLength,
    String? keyType,
    String? kind,
  }) {
    _json = {
      'algorithm': ?algorithm,
      'key_length': ?keyLength,
      'key_type': ?keyType,
      'kind': ?kind,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [DefaultKeySpecs].
  static const SchemanticType<DefaultKeySpecs> $schema =
      _DefaultKeySpecsTypeFactory();

  String? get algorithm {
    return _json['algorithm'] as String?;
  }

  set algorithm(String? value) {
    if (value == null) {
      _json.remove('algorithm');
    } else {
      _json['algorithm'] = value;
    }
  }

  num? get keyLength {
    return _json['key_length'] as num?;
  }

  set keyLength(num? value) {
    if (value == null) {
      _json.remove('key_length');
    } else {
      _json['key_length'] = value;
    }
  }

  String? get keyType {
    return _json['key_type'] as String?;
  }

  set keyType(String? value) {
    if (value == null) {
      _json.remove('key_type');
    } else {
      _json['key_type'] = value;
    }
  }

  String? get kind {
    return _json['kind'] as String?;
  }

  set kind(String? value) {
    if (value == null) {
      _json.remove('kind');
    } else {
      _json['kind'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [DefaultKeySpecs] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DefaultKeySpecsTypeFactory extends SchemanticType<DefaultKeySpecs> {
  const _DefaultKeySpecsTypeFactory();

  @override
  DefaultKeySpecs parse(Object? json) {
    return DefaultKeySpecs._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'DefaultKeySpecs',
    definition: $Schema
        .object(
          properties: {
            'algorithm': $Schema.string(
              description:
                  'String mnemonic specifying the DNSSEC algorithm of this key Possible values: ["ecdsap256sha256", "ecdsap384sha384", "rsasha1", "rsasha256", "rsasha512"]',
            ),
            'key_length': $Schema.number(
              description: 'Length of the keys in bits',
            ),
            'key_type': $Schema.string(
              description:
                  'Specifies whether this is a key signing key (KSK) or a zone\nsigning key (ZSK). Key signing keys have the Secure Entry\nPoint flag set and, when active, will only be used to sign\nresource record sets of type DNSKEY. Zone signing keys do\nnot have the Secure Entry Point flag set and will be used\nto sign all other types of resource record sets. Possible values: ["keySigning", "zoneSigning"]',
            ),
            'kind': $Schema.string(
              description: 'Identifies what kind of resource this is',
            ),
          },
          description:
              'Specifies parameters that will be used for generating initial DnsKeys\nfor this ManagedZone. If you provide a spec for keySigning or zoneSigning,\nyou must also provide one for the other.\ndefault_key_specs can only be updated when the state is \'off\'.',
        )
        .value,
    dependencies: [],
  );
}

base class DnssecConfig {
  /// Creates a [DnssecConfig] from a JSON map.
  factory DnssecConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  DnssecConfig._(this._json);

  DnssecConfig({
    String? kind,
    String? nonExistence,
    String? state,
    List<DefaultKeySpecs>? defaultKeySpecs,
  }) {
    _json = {
      'kind': ?kind,
      'non_existence': ?nonExistence,
      'state': ?state,
      'default_key_specs': ?defaultKeySpecs?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [DnssecConfig].
  static const SchemanticType<DnssecConfig> $schema =
      _DnssecConfigTypeFactory();

  String? get kind {
    return _json['kind'] as String?;
  }

  set kind(String? value) {
    if (value == null) {
      _json.remove('kind');
    } else {
      _json['kind'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get nonExistence {
    return _json['non_existence'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set nonExistence(String? value) {
    if (value == null) {
      _json.remove('non_existence');
    } else {
      _json['non_existence'] = value;
    }
  }

  String? get state {
    return _json['state'] as String?;
  }

  set state(String? value) {
    if (value == null) {
      _json.remove('state');
    } else {
      _json['state'] = value;
    }
  }

  List<DefaultKeySpecs>? get defaultKeySpecs {
    return (_json['default_key_specs'] as List?)
        ?.map((e) => DefaultKeySpecs.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set defaultKeySpecs(List<DefaultKeySpecs>? value) {
    if (value == null) {
      _json.remove('default_key_specs');
    } else {
      _json['default_key_specs'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [DnssecConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DnssecConfigTypeFactory extends SchemanticType<DnssecConfig> {
  const _DnssecConfigTypeFactory();

  @override
  DnssecConfig parse(Object? json) {
    return DnssecConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'DnssecConfig',
    definition: $Schema
        .object(
          properties: {
            'kind': $Schema.string(
              description: 'Identifies what kind of resource this is',
            ),
            'non_existence': $Schema.string(
              description:
                  'Specifies the mechanism used to provide authenticated denial-of-existence responses.\nnon_existence can only be updated when the state is \'off\'. Possible values: ["nsec", "nsec3"]',
            ),
            'state': $Schema.string(
              description:
                  'Specifies whether DNSSEC is enabled, and what mode it is in Possible values: ["off", "on", "transfer"]',
            ),
            'default_key_specs': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/DefaultKeySpecs'}),
            ),
          },
          description: 'DNSSEC configuration',
        )
        .value,
    dependencies: [DefaultKeySpecs.$schema],
  );
}

base class TargetNameServers {
  /// Creates a [TargetNameServers] from a JSON map.
  factory TargetNameServers.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  TargetNameServers._(this._json);

  TargetNameServers({
    String? domainName,
    String? forwardingPath,
    String? ipv4Address,
    String? ipv6Address,
  }) {
    _json = {
      'domain_name': ?domainName,
      'forwarding_path': ?forwardingPath,
      'ipv4_address': ?ipv4Address,
      'ipv6_address': ?ipv6Address,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TargetNameServers].
  static const SchemanticType<TargetNameServers> $schema =
      _TargetNameServersTypeFactory();

  String? get domainName {
    return _json['domain_name'] as String?;
  }

  set domainName(String? value) {
    if (value == null) {
      _json.remove('domain_name');
    } else {
      _json['domain_name'] = value;
    }
  }

  String? get forwardingPath {
    return _json['forwarding_path'] as String?;
  }

  set forwardingPath(String? value) {
    if (value == null) {
      _json.remove('forwarding_path');
    } else {
      _json['forwarding_path'] = value;
    }
  }

  String? get ipv4Address {
    return _json['ipv4_address'] as String?;
  }

  set ipv4Address(String? value) {
    if (value == null) {
      _json.remove('ipv4_address');
    } else {
      _json['ipv4_address'] = value;
    }
  }

  String? get ipv6Address {
    return _json['ipv6_address'] as String?;
  }

  set ipv6Address(String? value) {
    if (value == null) {
      _json.remove('ipv6_address');
    } else {
      _json['ipv6_address'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TargetNameServers] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TargetNameServersTypeFactory
    extends SchemanticType<TargetNameServers> {
  const _TargetNameServersTypeFactory();

  @override
  TargetNameServers parse(Object? json) {
    return TargetNameServers._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TargetNameServers',
    definition: $Schema
        .object(
          properties: {
            'domain_name': $Schema.string(
              description:
                  'Fully qualified domain name for the forwarding target.',
            ),
            'forwarding_path': $Schema.string(
              description:
                  'Forwarding path for this TargetNameServer. If unset or \'default\'\nCloud DNS will make forwarding decision based on address ranges,\ni.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go\nto the Internet. When set to \'private\', Cloud DNS will always\nsend queries through VPC for this target. Possible values: ["default", "private"]',
            ),
            'ipv4_address': $Schema.string(
              description:
                  'IPv4 address of a target name server.\nDoes not accept both fields (ipv4 & ipv6) being populated.',
            ),
            'ipv6_address': $Schema.string(
              description:
                  'IPv6 address of a target name server.\nDoes not accept both fields (ipv4 & ipv6) being populated.',
            ),
          },
          description:
              'List of target name servers to forward to. Cloud DNS will\nselect the best available name server if more than\none target is given.',
        )
        .value,
    dependencies: [],
  );
}

base class ForwardingConfig {
  /// Creates a [ForwardingConfig] from a JSON map.
  factory ForwardingConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ForwardingConfig._(this._json);

  ForwardingConfig({required List<TargetNameServers> targetNameServers}) {
    _json = {
      'target_name_servers': targetNameServers.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ForwardingConfig].
  static const SchemanticType<ForwardingConfig> $schema =
      _ForwardingConfigTypeFactory();

  List<TargetNameServers> get targetNameServers {
    return (_json['target_name_servers'] as List)
        .map((e) => TargetNameServers.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set targetNameServers(List<TargetNameServers> value) {
    _json['target_name_servers'] = value.toList();
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ForwardingConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ForwardingConfigTypeFactory
    extends SchemanticType<ForwardingConfig> {
  const _ForwardingConfigTypeFactory();

  @override
  ForwardingConfig parse(Object? json) {
    return ForwardingConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ForwardingConfig',
    definition: $Schema
        .object(
          properties: {
            'target_name_servers': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/TargetNameServers'}),
            ),
          },
          required: ['target_name_servers'],
          description:
              'The presence for this field indicates that outbound forwarding is enabled\nfor this zone. The value of this field contains the set of destinations\nto forward to.',
        )
        .value,
    dependencies: [TargetNameServers.$schema],
  );
}

base class TargetNetwork {
  /// Creates a [TargetNetwork] from a JSON map.
  factory TargetNetwork.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  TargetNetwork._(this._json);

  TargetNetwork({required String networkUrl}) {
    _json = {'network_url': networkUrl};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TargetNetwork].
  static const SchemanticType<TargetNetwork> $schema =
      _TargetNetworkTypeFactory();

  String get networkUrl {
    return _json['network_url'] as String;
  }

  set networkUrl(String value) {
    _json['network_url'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TargetNetwork] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TargetNetworkTypeFactory extends SchemanticType<TargetNetwork> {
  const _TargetNetworkTypeFactory();

  @override
  TargetNetwork parse(Object? json) {
    return TargetNetwork._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TargetNetwork',
    definition: $Schema
        .object(
          properties: {
            'network_url': $Schema.string(
              description:
                  'The id or fully qualified URL of the VPC network to forward queries to.\nThis should be formatted like \'projects/{project}/global/networks/{network}\' or\n\'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}\'',
            ),
          },
          required: ['network_url'],
          description: 'The network with which to peer.',
        )
        .value,
    dependencies: [],
  );
}

base class PeeringConfig {
  /// Creates a [PeeringConfig] from a JSON map.
  factory PeeringConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  PeeringConfig._(this._json);

  PeeringConfig({required TargetNetwork targetNetwork}) {
    _json = {'target_network': targetNetwork.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PeeringConfig].
  static const SchemanticType<PeeringConfig> $schema =
      _PeeringConfigTypeFactory();

  TargetNetwork get targetNetwork {
    return TargetNetwork.fromJson(
      _json['target_network'] as Map<String, dynamic>,
    );
  }

  set targetNetwork(TargetNetwork value) {
    _json['target_network'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PeeringConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PeeringConfigTypeFactory extends SchemanticType<PeeringConfig> {
  const _PeeringConfigTypeFactory();

  @override
  PeeringConfig parse(Object? json) {
    return PeeringConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PeeringConfig',
    definition: $Schema
        .object(
          properties: {
            'target_network': $Schema.fromMap({
              '\$ref': r'#/$defs/TargetNetwork',
            }),
          },
          required: ['target_network'],
          description:
              'The presence of this field indicates that DNS Peering is enabled for this\nzone. The value of this field contains the network to peer with.',
        )
        .value,
    dependencies: [TargetNetwork.$schema],
  );
}

base class GkeClusters {
  /// Creates a [GkeClusters] from a JSON map.
  factory GkeClusters.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GkeClusters._(this._json);

  GkeClusters({required String gkeClusterName}) {
    _json = {'gke_cluster_name': gkeClusterName};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GkeClusters].
  static const SchemanticType<GkeClusters> $schema = _GkeClustersTypeFactory();

  String get gkeClusterName {
    return _json['gke_cluster_name'] as String;
  }

  set gkeClusterName(String value) {
    _json['gke_cluster_name'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GkeClusters] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GkeClustersTypeFactory extends SchemanticType<GkeClusters> {
  const _GkeClustersTypeFactory();

  @override
  GkeClusters parse(Object? json) {
    return GkeClusters._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GkeClusters',
    definition: $Schema
        .object(
          properties: {
            'gke_cluster_name': $Schema.string(
              description:
                  'The resource name of the cluster to bind this ManagedZone to.\nThis should be specified in the format like\n\'projects/*/locations/*/clusters/*\'',
            ),
          },
          required: ['gke_cluster_name'],
          description:
              'The list of Google Kubernetes Engine clusters that can see this zone.',
        )
        .value,
    dependencies: [],
  );
}

base class Networks {
  /// Creates a [Networks] from a JSON map.
  factory Networks.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Networks._(this._json);

  Networks({required String networkUrl}) {
    _json = {'network_url': networkUrl};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Networks].
  static const SchemanticType<Networks> $schema = _NetworksTypeFactory();

  String get networkUrl {
    return _json['network_url'] as String;
  }

  set networkUrl(String value) {
    _json['network_url'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Networks] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NetworksTypeFactory extends SchemanticType<Networks> {
  const _NetworksTypeFactory();

  @override
  Networks parse(Object? json) {
    return Networks._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Networks',
    definition: $Schema
        .object(
          properties: {
            'network_url': $Schema.string(
              description:
                  'The id or fully qualified URL of the VPC network to bind to.\nThis should be formatted like \'projects/{project}/global/networks/{network}\' or\n\'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}\'',
            ),
          },
          required: ['network_url'],
          description:
              'The list of VPC networks that can see this zone. Until the provider updates to use the Terraform 0.12 SDK in a future release, you\nmay experience issues with this resource while updating. If you\'ve defined a \'networks\' block and\nadd another \'networks\' block while keeping the old block, Terraform will see an incorrect diff\nand apply an incorrect update to the resource. If you encounter this issue, remove all \'networks\'\nblocks in an update and then apply another update adding all of them back simultaneously.',
        )
        .value,
    dependencies: [],
  );
}

base class PrivateVisibilityConfig {
  /// Creates a [PrivateVisibilityConfig] from a JSON map.
  factory PrivateVisibilityConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  PrivateVisibilityConfig._(this._json);

  PrivateVisibilityConfig({
    List<GkeClusters>? gkeClusters,
    List<Networks>? networks,
  }) {
    _json = {
      'gke_clusters': ?gkeClusters?.map((e) => e.toJson()).toList(),
      'networks': ?networks?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PrivateVisibilityConfig].
  static const SchemanticType<PrivateVisibilityConfig> $schema =
      _PrivateVisibilityConfigTypeFactory();

  List<GkeClusters>? get gkeClusters {
    return (_json['gke_clusters'] as List?)
        ?.map((e) => GkeClusters.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set gkeClusters(List<GkeClusters>? value) {
    if (value == null) {
      _json.remove('gke_clusters');
    } else {
      _json['gke_clusters'] = value.toList();
    }
  }

  List<Networks>? get networks {
    return (_json['networks'] as List?)
        ?.map((e) => Networks.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set networks(List<Networks>? value) {
    if (value == null) {
      _json.remove('networks');
    } else {
      _json['networks'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PrivateVisibilityConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PrivateVisibilityConfigTypeFactory
    extends SchemanticType<PrivateVisibilityConfig> {
  const _PrivateVisibilityConfigTypeFactory();

  @override
  PrivateVisibilityConfig parse(Object? json) {
    return PrivateVisibilityConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PrivateVisibilityConfig',
    definition: $Schema
        .object(
          properties: {
            'gke_clusters': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/GkeClusters'}),
            ),
            'networks': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Networks'}),
            ),
          },
          description:
              'For privately visible zones, the set of Virtual Private Cloud\nresources that the zone is visible from. At least one of \'gke_clusters\' or \'networks\' must be specified.',
        )
        .value,
    dependencies: [GkeClusters.$schema, Networks.$schema],
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

base class GoogleDnsManagedZone {
  /// Creates a [GoogleDnsManagedZone] from a JSON map.
  factory GoogleDnsManagedZone.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleDnsManagedZone._(this._json);

  GoogleDnsManagedZone({
    String? description,
    required String dnsName,
    bool? forceDestroy,
    String? id,
    Map<String, String>? labels,
    required String name,
    String? project,
    String? visibility,
    CloudLoggingConfig? cloudLoggingConfig,
    DnssecConfig? dnssecConfig,
    ForwardingConfig? forwardingConfig,
    PeeringConfig? peeringConfig,
    PrivateVisibilityConfig? privateVisibilityConfig,
    Timeouts? timeouts,
  }) {
    _json = {
      'description': ?description,
      'dns_name': dnsName,
      'force_destroy': ?forceDestroy,
      'id': ?id,
      'labels': ?labels,
      'name': name,
      'project': ?project,
      'visibility': ?visibility,
      'cloud_logging_config': ?cloudLoggingConfig?.toJson(),
      'dnssec_config': ?dnssecConfig?.toJson(),
      'forwarding_config': ?forwardingConfig?.toJson(),
      'peering_config': ?peeringConfig?.toJson(),
      'private_visibility_config': ?privateVisibilityConfig?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleDnsManagedZone].
  static const SchemanticType<GoogleDnsManagedZone> $schema =
      _GoogleDnsManagedZoneTypeFactory();

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

  String get dnsName {
    return _json['dns_name'] as String;
  }

  set dnsName(String value) {
    _json['dns_name'] = value;
  }

  bool? get forceDestroy {
    return _json['force_destroy'] as bool?;
  }

  set forceDestroy(bool? value) {
    if (value == null) {
      _json.remove('force_destroy');
    } else {
      _json['force_destroy'] = value;
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

  String? get visibility {
    return _json['visibility'] as String?;
  }

  set visibility(String? value) {
    if (value == null) {
      _json.remove('visibility');
    } else {
      _json['visibility'] = value;
    }
  }

  CloudLoggingConfig? get cloudLoggingConfig {
    return _json['cloud_logging_config'] == null
        ? null
        : CloudLoggingConfig.fromJson(
            _json['cloud_logging_config'] as Map<String, dynamic>,
          );
  }

  set cloudLoggingConfig(CloudLoggingConfig? value) {
    if (value == null) {
      _json.remove('cloud_logging_config');
    } else {
      _json['cloud_logging_config'] = value;
    }
  }

  DnssecConfig? get dnssecConfig {
    return _json['dnssec_config'] == null
        ? null
        : DnssecConfig.fromJson(_json['dnssec_config'] as Map<String, dynamic>);
  }

  set dnssecConfig(DnssecConfig? value) {
    if (value == null) {
      _json.remove('dnssec_config');
    } else {
      _json['dnssec_config'] = value;
    }
  }

  ForwardingConfig? get forwardingConfig {
    return _json['forwarding_config'] == null
        ? null
        : ForwardingConfig.fromJson(
            _json['forwarding_config'] as Map<String, dynamic>,
          );
  }

  set forwardingConfig(ForwardingConfig? value) {
    if (value == null) {
      _json.remove('forwarding_config');
    } else {
      _json['forwarding_config'] = value;
    }
  }

  PeeringConfig? get peeringConfig {
    return _json['peering_config'] == null
        ? null
        : PeeringConfig.fromJson(
            _json['peering_config'] as Map<String, dynamic>,
          );
  }

  set peeringConfig(PeeringConfig? value) {
    if (value == null) {
      _json.remove('peering_config');
    } else {
      _json['peering_config'] = value;
    }
  }

  PrivateVisibilityConfig? get privateVisibilityConfig {
    return _json['private_visibility_config'] == null
        ? null
        : PrivateVisibilityConfig.fromJson(
            _json['private_visibility_config'] as Map<String, dynamic>,
          );
  }

  set privateVisibilityConfig(PrivateVisibilityConfig? value) {
    if (value == null) {
      _json.remove('private_visibility_config');
    } else {
      _json['private_visibility_config'] = value;
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

  /// Serializes this [GoogleDnsManagedZone] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleDnsManagedZoneTypeFactory
    extends SchemanticType<GoogleDnsManagedZone> {
  const _GoogleDnsManagedZoneTypeFactory();

  @override
  GoogleDnsManagedZone parse(Object? json) {
    return GoogleDnsManagedZone._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleDnsManagedZone',
    definition: $Schema
        .object(
          properties: {
            'description': $Schema.string(
              description:
                  'A textual description field. Defaults to \'Managed by Terraform\'.',
            ),
            'dns_name': $Schema.string(
              description:
                  'The DNS name of this managed zone, for instance "example.com.".',
            ),
            'force_destroy': $Schema.boolean(
              description: 'Set this true to delete all records in the zone.',
            ),
            'id': $Schema.string(),
            'labels': $Schema.object(
              description:
                  'A set of key/value label pairs to assign to this ManagedZone.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'name': $Schema.string(
              description:
                  'User assigned name for this resource.\nMust be unique within the project.',
            ),
            'project': $Schema.string(),
            'visibility': $Schema.string(
              description:
                  'The zone\'s visibility: public zones are exposed to the Internet,\nwhile private zones are visible only to Virtual Private Cloud resources. Default value: "public" Possible values: ["private", "public"]',
            ),
            'cloud_logging_config': $Schema.fromMap({
              '\$ref': r'#/$defs/CloudLoggingConfig',
            }),
            'dnssec_config': $Schema.fromMap({
              '\$ref': r'#/$defs/DnssecConfig',
            }),
            'forwarding_config': $Schema.fromMap({
              '\$ref': r'#/$defs/ForwardingConfig',
            }),
            'peering_config': $Schema.fromMap({
              '\$ref': r'#/$defs/PeeringConfig',
            }),
            'private_visibility_config': $Schema.fromMap({
              '\$ref': r'#/$defs/PrivateVisibilityConfig',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['dns_name', 'name'],
        )
        .value,
    dependencies: [
      CloudLoggingConfig.$schema,
      DnssecConfig.$schema,
      ForwardingConfig.$schema,
      PeeringConfig.$schema,
      PrivateVisibilityConfig.$schema,
      Timeouts.$schema,
    ],
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_storage_bucket.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class Autoclass {
  /// Creates a [Autoclass] from a JSON map.
  factory Autoclass.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Autoclass._(this._json);

  Autoclass({required bool enabled, String? terminalStorageClass}) {
    _json = {
      'enabled': enabled,
      'terminal_storage_class': ?terminalStorageClass,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Autoclass].
  static const SchemanticType<Autoclass> $schema = _AutoclassTypeFactory();

  bool get enabled {
    return _json['enabled'] as bool;
  }

  set enabled(bool value) {
    _json['enabled'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get terminalStorageClass {
    return _json['terminal_storage_class'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set terminalStorageClass(String? value) {
    if (value == null) {
      _json.remove('terminal_storage_class');
    } else {
      _json['terminal_storage_class'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Autoclass] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AutoclassTypeFactory extends SchemanticType<Autoclass> {
  const _AutoclassTypeFactory();

  @override
  Autoclass parse(Object? json) {
    return Autoclass._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Autoclass',
    definition: $Schema
        .object(
          properties: {
            'enabled': $Schema.boolean(
              description:
                  'While set to true, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object\'s access pattern.',
            ),
            'terminal_storage_class': $Schema.string(
              description:
                  'The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: NEARLINE, ARCHIVE.',
            ),
          },
          required: ['enabled'],
          description: 'The bucket\'s autoclass configuration.',
        )
        .value,
    dependencies: [],
  );
}

base class Cors {
  /// Creates a [Cors] from a JSON map.
  factory Cors.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Cors._(this._json);

  Cors({
    num? maxAgeSeconds,
    List<String>? method,
    List<String>? origin,
    List<String>? responseHeader,
  }) {
    _json = {
      'max_age_seconds': ?maxAgeSeconds,
      'method': ?method,
      'origin': ?origin,
      'response_header': ?responseHeader,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Cors].
  static const SchemanticType<Cors> $schema = _CorsTypeFactory();

  num? get maxAgeSeconds {
    return _json['max_age_seconds'] as num?;
  }

  set maxAgeSeconds(num? value) {
    if (value == null) {
      _json.remove('max_age_seconds');
    } else {
      _json['max_age_seconds'] = value;
    }
  }

  List<String>? get method {
    return (_json['method'] as List?)?.cast<String>();
  }

  set method(List<String>? value) {
    if (value == null) {
      _json.remove('method');
    } else {
      _json['method'] = value;
    }
  }

  List<String>? get origin {
    return (_json['origin'] as List?)?.cast<String>();
  }

  set origin(List<String>? value) {
    if (value == null) {
      _json.remove('origin');
    } else {
      _json['origin'] = value;
    }
  }

  List<String>? get responseHeader {
    return (_json['response_header'] as List?)?.cast<String>();
  }

  set responseHeader(List<String>? value) {
    if (value == null) {
      _json.remove('response_header');
    } else {
      _json['response_header'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Cors] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CorsTypeFactory extends SchemanticType<Cors> {
  const _CorsTypeFactory();

  @override
  Cors parse(Object? json) {
    return Cors._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Cors',
    definition: $Schema
        .object(
          properties: {
            'max_age_seconds': $Schema.number(
              description:
                  'The value, in seconds, to return in the Access-Control-Max-Age header used in preflight responses.',
            ),
            'method': $Schema.list(
              description:
                  'The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "any method".',
              items: $Schema.string(),
            ),
            'origin': $Schema.list(
              description:
                  'The list of Origins eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin".',
              items: $Schema.string(),
            ),
            'response_header': $Schema.list(
              description:
                  'The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.',
              items: $Schema.string(),
            ),
          },
          description:
              'The bucket\'s Cross-Origin Resource Sharing (CORS) configuration.',
        )
        .value,
    dependencies: [],
  );
}

base class CustomPlacementConfig {
  /// Creates a [CustomPlacementConfig] from a JSON map.
  factory CustomPlacementConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  CustomPlacementConfig._(this._json);

  CustomPlacementConfig({required List<String> dataLocations}) {
    _json = {'data_locations': dataLocations};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CustomPlacementConfig].
  static const SchemanticType<CustomPlacementConfig> $schema =
      _CustomPlacementConfigTypeFactory();

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String> get dataLocations {
    return (_json['data_locations'] as List).cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set dataLocations(List<String> value) {
    _json['data_locations'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CustomPlacementConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CustomPlacementConfigTypeFactory
    extends SchemanticType<CustomPlacementConfig> {
  const _CustomPlacementConfigTypeFactory();

  @override
  CustomPlacementConfig parse(Object? json) {
    return CustomPlacementConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CustomPlacementConfig',
    definition: $Schema
        .object(
          properties: {
            'data_locations': $Schema.list(
              description:
                  'The list of individual regions that comprise a dual-region bucket. See the docs for a list of acceptable regions. Note: If any of the data_locations changes, it will recreate the bucket.',
              items: $Schema.string(),
            ),
          },
          required: ['data_locations'],
          description:
              'The bucket\'s custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty.',
        )
        .value,
    dependencies: [],
  );
}

base class CustomerManagedEncryptionEnforcementConfig {
  /// Creates a [CustomerManagedEncryptionEnforcementConfig] from a JSON map.
  factory CustomerManagedEncryptionEnforcementConfig.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  CustomerManagedEncryptionEnforcementConfig._(this._json);

  CustomerManagedEncryptionEnforcementConfig({
    required String restrictionMode,
  }) {
    _json = {'restriction_mode': restrictionMode};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CustomerManagedEncryptionEnforcementConfig].
  static const SchemanticType<CustomerManagedEncryptionEnforcementConfig>
  $schema = _CustomerManagedEncryptionEnforcementConfigTypeFactory();

  String get restrictionMode {
    return _json['restriction_mode'] as String;
  }

  set restrictionMode(String value) {
    _json['restriction_mode'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CustomerManagedEncryptionEnforcementConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CustomerManagedEncryptionEnforcementConfigTypeFactory
    extends SchemanticType<CustomerManagedEncryptionEnforcementConfig> {
  const _CustomerManagedEncryptionEnforcementConfigTypeFactory();

  @override
  CustomerManagedEncryptionEnforcementConfig parse(Object? json) {
    return CustomerManagedEncryptionEnforcementConfig._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CustomerManagedEncryptionEnforcementConfig',
    definition: $Schema
        .object(
          properties: {
            'restriction_mode': $Schema.string(
              description:
                  'Whether CMEK is restricted for new objects within the bucket. If FullyRestricted, new objects can\'t be created using CMEK encryption. If NotRestricted or unset, creation of new objects with CMEK encryption is allowed.',
            ),
          },
          required: ['restriction_mode'],
          description:
              'If omitted, then new objects with CMEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.',
        )
        .value,
    dependencies: [],
  );
}

base class CustomerSuppliedEncryptionEnforcementConfig {
  /// Creates a [CustomerSuppliedEncryptionEnforcementConfig] from a JSON map.
  factory CustomerSuppliedEncryptionEnforcementConfig.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  CustomerSuppliedEncryptionEnforcementConfig._(this._json);

  CustomerSuppliedEncryptionEnforcementConfig({
    required String restrictionMode,
  }) {
    _json = {'restriction_mode': restrictionMode};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CustomerSuppliedEncryptionEnforcementConfig].
  static const SchemanticType<CustomerSuppliedEncryptionEnforcementConfig>
  $schema = _CustomerSuppliedEncryptionEnforcementConfigTypeFactory();

  String get restrictionMode {
    return _json['restriction_mode'] as String;
  }

  set restrictionMode(String value) {
    _json['restriction_mode'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CustomerSuppliedEncryptionEnforcementConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CustomerSuppliedEncryptionEnforcementConfigTypeFactory
    extends SchemanticType<CustomerSuppliedEncryptionEnforcementConfig> {
  const _CustomerSuppliedEncryptionEnforcementConfigTypeFactory();

  @override
  CustomerSuppliedEncryptionEnforcementConfig parse(Object? json) {
    return CustomerSuppliedEncryptionEnforcementConfig._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CustomerSuppliedEncryptionEnforcementConfig',
    definition: $Schema
        .object(
          properties: {
            'restriction_mode': $Schema.string(
              description:
                  'Whether CSEK is restricted for new objects within the bucket. If FullyRestricted, new objects can\'t be created using CSEK encryption. If NotRestricted or unset, creation of new objects with CSEK encryption is allowed.',
            ),
          },
          required: ['restriction_mode'],
          description:
              'If omitted, then new objects with CSEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleManagedEncryptionEnforcementConfig {
  /// Creates a [GoogleManagedEncryptionEnforcementConfig] from a JSON map.
  factory GoogleManagedEncryptionEnforcementConfig.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleManagedEncryptionEnforcementConfig._(this._json);

  GoogleManagedEncryptionEnforcementConfig({required String restrictionMode}) {
    _json = {'restriction_mode': restrictionMode};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleManagedEncryptionEnforcementConfig].
  static const SchemanticType<GoogleManagedEncryptionEnforcementConfig>
  $schema = _GoogleManagedEncryptionEnforcementConfigTypeFactory();

  String get restrictionMode {
    return _json['restriction_mode'] as String;
  }

  set restrictionMode(String value) {
    _json['restriction_mode'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleManagedEncryptionEnforcementConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleManagedEncryptionEnforcementConfigTypeFactory
    extends SchemanticType<GoogleManagedEncryptionEnforcementConfig> {
  const _GoogleManagedEncryptionEnforcementConfigTypeFactory();

  @override
  GoogleManagedEncryptionEnforcementConfig parse(Object? json) {
    return GoogleManagedEncryptionEnforcementConfig._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleManagedEncryptionEnforcementConfig',
    definition: $Schema
        .object(
          properties: {
            'restriction_mode': $Schema.string(
              description:
                  'Whether GMEK is restricted for new objects within the bucket. If FullyRestricted, new objects can\'t be created using GMEK encryption. If NotRestricted or unset, creation of new objects with GMEK encryption is allowed.',
            ),
          },
          required: ['restriction_mode'],
          description:
              'If omitted, then new objects with GMEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.',
        )
        .value,
    dependencies: [],
  );
}

base class Encryption {
  /// Creates a [Encryption] from a JSON map.
  factory Encryption.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Encryption._(this._json);

  Encryption({
    String? defaultKmsKeyName,
    CustomerManagedEncryptionEnforcementConfig?
    customerManagedEncryptionEnforcementConfig,
    CustomerSuppliedEncryptionEnforcementConfig?
    customerSuppliedEncryptionEnforcementConfig,
    GoogleManagedEncryptionEnforcementConfig?
    googleManagedEncryptionEnforcementConfig,
  }) {
    _json = {
      'default_kms_key_name': ?defaultKmsKeyName,
      'customer_managed_encryption_enforcement_config':
          ?customerManagedEncryptionEnforcementConfig?.toJson(),
      'customer_supplied_encryption_enforcement_config':
          ?customerSuppliedEncryptionEnforcementConfig?.toJson(),
      'google_managed_encryption_enforcement_config':
          ?googleManagedEncryptionEnforcementConfig?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Encryption].
  static const SchemanticType<Encryption> $schema = _EncryptionTypeFactory();

  String? get defaultKmsKeyName {
    return _json['default_kms_key_name'] as String?;
  }

  set defaultKmsKeyName(String? value) {
    if (value == null) {
      _json.remove('default_kms_key_name');
    } else {
      _json['default_kms_key_name'] = value;
    }
  }

  CustomerManagedEncryptionEnforcementConfig?
  get customerManagedEncryptionEnforcementConfig {
    return _json['customer_managed_encryption_enforcement_config'] == null
        ? null
        : CustomerManagedEncryptionEnforcementConfig.fromJson(
            _json['customer_managed_encryption_enforcement_config']
                as Map<String, dynamic>,
          );
  }

  set customerManagedEncryptionEnforcementConfig(
    CustomerManagedEncryptionEnforcementConfig? value,
  ) {
    if (value == null) {
      _json.remove('customer_managed_encryption_enforcement_config');
    } else {
      _json['customer_managed_encryption_enforcement_config'] = value;
    }
  }

  CustomerSuppliedEncryptionEnforcementConfig?
  get customerSuppliedEncryptionEnforcementConfig {
    return _json['customer_supplied_encryption_enforcement_config'] == null
        ? null
        : CustomerSuppliedEncryptionEnforcementConfig.fromJson(
            _json['customer_supplied_encryption_enforcement_config']
                as Map<String, dynamic>,
          );
  }

  set customerSuppliedEncryptionEnforcementConfig(
    CustomerSuppliedEncryptionEnforcementConfig? value,
  ) {
    if (value == null) {
      _json.remove('customer_supplied_encryption_enforcement_config');
    } else {
      _json['customer_supplied_encryption_enforcement_config'] = value;
    }
  }

  GoogleManagedEncryptionEnforcementConfig?
  get googleManagedEncryptionEnforcementConfig {
    return _json['google_managed_encryption_enforcement_config'] == null
        ? null
        : GoogleManagedEncryptionEnforcementConfig.fromJson(
            _json['google_managed_encryption_enforcement_config']
                as Map<String, dynamic>,
          );
  }

  set googleManagedEncryptionEnforcementConfig(
    GoogleManagedEncryptionEnforcementConfig? value,
  ) {
    if (value == null) {
      _json.remove('google_managed_encryption_enforcement_config');
    } else {
      _json['google_managed_encryption_enforcement_config'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Encryption] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _EncryptionTypeFactory extends SchemanticType<Encryption> {
  const _EncryptionTypeFactory();

  @override
  Encryption parse(Object? json) {
    return Encryption._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Encryption',
    definition: $Schema
        .object(
          properties: {
            'default_kms_key_name': $Schema.string(
              description:
                  'A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. You must pay attention to whether the crypto key is available in the location that this bucket is created in. See the docs for more details.',
            ),
            'customer_managed_encryption_enforcement_config': $Schema.fromMap({
              '\$ref': r'#/$defs/CustomerManagedEncryptionEnforcementConfig',
            }),
            'customer_supplied_encryption_enforcement_config': $Schema.fromMap({
              '\$ref': r'#/$defs/CustomerSuppliedEncryptionEnforcementConfig',
            }),
            'google_managed_encryption_enforcement_config': $Schema.fromMap({
              '\$ref': r'#/$defs/GoogleManagedEncryptionEnforcementConfig',
            }),
          },
          description: 'The bucket\'s encryption configuration.',
        )
        .value,
    dependencies: [
      CustomerManagedEncryptionEnforcementConfig.$schema,
      CustomerSuppliedEncryptionEnforcementConfig.$schema,
      GoogleManagedEncryptionEnforcementConfig.$schema,
    ],
  );
}

base class HierarchicalNamespace {
  /// Creates a [HierarchicalNamespace] from a JSON map.
  factory HierarchicalNamespace.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  HierarchicalNamespace._(this._json);

  HierarchicalNamespace({required bool enabled}) {
    _json = {'enabled': enabled};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [HierarchicalNamespace].
  static const SchemanticType<HierarchicalNamespace> $schema =
      _HierarchicalNamespaceTypeFactory();

  bool get enabled {
    return _json['enabled'] as bool;
  }

  set enabled(bool value) {
    _json['enabled'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [HierarchicalNamespace] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _HierarchicalNamespaceTypeFactory
    extends SchemanticType<HierarchicalNamespace> {
  const _HierarchicalNamespaceTypeFactory();

  @override
  HierarchicalNamespace parse(Object? json) {
    return HierarchicalNamespace._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'HierarchicalNamespace',
    definition: $Schema
        .object(
          properties: {
            'enabled': $Schema.boolean(
              description:
                  'Set this field true to organize bucket with logical file system structure.',
            ),
          },
          required: ['enabled'],
          description:
              'The bucket\'s HNS configuration, which defines bucket can organize folders in logical file system structure.',
        )
        .value,
    dependencies: [],
  );
}

base class PublicNetworkSource {
  /// Creates a [PublicNetworkSource] from a JSON map.
  factory PublicNetworkSource.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  PublicNetworkSource._(this._json);

  PublicNetworkSource({required List<String> allowedIpCidrRanges}) {
    _json = {'allowed_ip_cidr_ranges': allowedIpCidrRanges};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [PublicNetworkSource].
  static const SchemanticType<PublicNetworkSource> $schema =
      _PublicNetworkSourceTypeFactory();

  List<String> get allowedIpCidrRanges {
    return (_json['allowed_ip_cidr_ranges'] as List).cast<String>();
  }

  set allowedIpCidrRanges(List<String> value) {
    _json['allowed_ip_cidr_ranges'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [PublicNetworkSource] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PublicNetworkSourceTypeFactory
    extends SchemanticType<PublicNetworkSource> {
  const _PublicNetworkSourceTypeFactory();

  @override
  PublicNetworkSource parse(Object? json) {
    return PublicNetworkSource._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'PublicNetworkSource',
    definition: $Schema
        .object(
          properties: {
            'allowed_ip_cidr_ranges': $Schema.list(
              description:
                  'The list of public IPv4, IPv6 cidr ranges that are allowed to access the bucket.',
              items: $Schema.string(),
            ),
          },
          required: ['allowed_ip_cidr_ranges'],
          description:
              'The public network IP address ranges that can access the bucket and its data.',
        )
        .value,
    dependencies: [],
  );
}

base class VpcNetworkSources {
  /// Creates a [VpcNetworkSources] from a JSON map.
  factory VpcNetworkSources.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  VpcNetworkSources._(this._json);

  VpcNetworkSources({
    required List<String> allowedIpCidrRanges,
    required String network,
  }) {
    _json = {'allowed_ip_cidr_ranges': allowedIpCidrRanges, 'network': network};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [VpcNetworkSources].
  static const SchemanticType<VpcNetworkSources> $schema =
      _VpcNetworkSourcesTypeFactory();

  List<String> get allowedIpCidrRanges {
    return (_json['allowed_ip_cidr_ranges'] as List).cast<String>();
  }

  set allowedIpCidrRanges(List<String> value) {
    _json['allowed_ip_cidr_ranges'] = value;
  }

  String get network {
    return _json['network'] as String;
  }

  set network(String value) {
    _json['network'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [VpcNetworkSources] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _VpcNetworkSourcesTypeFactory
    extends SchemanticType<VpcNetworkSources> {
  const _VpcNetworkSourcesTypeFactory();

  @override
  VpcNetworkSources parse(Object? json) {
    return VpcNetworkSources._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'VpcNetworkSources',
    definition: $Schema
        .object(
          properties: {
            'allowed_ip_cidr_ranges': $Schema.list(
              description:
                  'The list of public or private IPv4 and IPv6 CIDR ranges that can access the bucket.',
              items: $Schema.string(),
            ),
            'network': $Schema.string(
              description:
                  'Name of the network. Format: projects/{PROJECT_ID}/global/networks/{NETWORK_NAME}',
            ),
          },
          required: ['allowed_ip_cidr_ranges', 'network'],
          description: 'The list of VPC networks that can access the bucket.',
        )
        .value,
    dependencies: [],
  );
}

base class IpFilter {
  /// Creates a [IpFilter] from a JSON map.
  factory IpFilter.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  IpFilter._(this._json);

  IpFilter({
    bool? allowAllServiceAgentAccess,
    bool? allowCrossOrgVpcs,
    required String mode,
    PublicNetworkSource? publicNetworkSource,
    List<VpcNetworkSources>? vpcNetworkSources,
  }) {
    _json = {
      'allow_all_service_agent_access': ?allowAllServiceAgentAccess,
      'allow_cross_org_vpcs': ?allowCrossOrgVpcs,
      'mode': mode,
      'public_network_source': ?publicNetworkSource?.toJson(),
      'vpc_network_sources': ?vpcNetworkSources
          ?.map((e) => e.toJson())
          .toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [IpFilter].
  static const SchemanticType<IpFilter> $schema = _IpFilterTypeFactory();

  bool? get allowAllServiceAgentAccess {
    return _json['allow_all_service_agent_access'] as bool?;
  }

  set allowAllServiceAgentAccess(bool? value) {
    if (value == null) {
      _json.remove('allow_all_service_agent_access');
    } else {
      _json['allow_all_service_agent_access'] = value;
    }
  }

  bool? get allowCrossOrgVpcs {
    return _json['allow_cross_org_vpcs'] as bool?;
  }

  set allowCrossOrgVpcs(bool? value) {
    if (value == null) {
      _json.remove('allow_cross_org_vpcs');
    } else {
      _json['allow_cross_org_vpcs'] = value;
    }
  }

  String get mode {
    return _json['mode'] as String;
  }

  set mode(String value) {
    _json['mode'] = value;
  }

  PublicNetworkSource? get publicNetworkSource {
    return _json['public_network_source'] == null
        ? null
        : PublicNetworkSource.fromJson(
            _json['public_network_source'] as Map<String, dynamic>,
          );
  }

  set publicNetworkSource(PublicNetworkSource? value) {
    if (value == null) {
      _json.remove('public_network_source');
    } else {
      _json['public_network_source'] = value;
    }
  }

  List<VpcNetworkSources>? get vpcNetworkSources {
    return (_json['vpc_network_sources'] as List?)
        ?.map((e) => VpcNetworkSources.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set vpcNetworkSources(List<VpcNetworkSources>? value) {
    if (value == null) {
      _json.remove('vpc_network_sources');
    } else {
      _json['vpc_network_sources'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [IpFilter] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _IpFilterTypeFactory extends SchemanticType<IpFilter> {
  const _IpFilterTypeFactory();

  @override
  IpFilter parse(Object? json) {
    return IpFilter._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'IpFilter',
    definition: $Schema
        .object(
          properties: {
            'allow_all_service_agent_access': $Schema.boolean(
              description:
                  'Whether to allow all service agents to access the bucket regardless of the IP filter configuration.',
            ),
            'allow_cross_org_vpcs': $Schema.boolean(
              description:
                  'Whether to allow cross-org VPCs in the bucket\'s IP filter configuration.',
            ),
            'mode': $Schema.string(
              description:
                  'The mode of the IP filter. Valid values are \'Enabled\' and \'Disabled\'.',
            ),
            'public_network_source': $Schema.fromMap({
              '\$ref': r'#/$defs/PublicNetworkSource',
            }),
            'vpc_network_sources': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/VpcNetworkSources'}),
            ),
          },
          required: ['mode'],
          description: 'The bucket IP filtering configuration.',
        )
        .value,
    dependencies: [PublicNetworkSource.$schema, VpcNetworkSources.$schema],
  );
}

base class Action {
  /// Creates a [Action] from a JSON map.
  factory Action.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Action._(this._json);

  Action({String? storageClass, required String type}) {
    _json = {'storage_class': ?storageClass, 'type': type};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Action].
  static const SchemanticType<Action> $schema = _ActionTypeFactory();

  String? get storageClass {
    return _json['storage_class'] as String?;
  }

  set storageClass(String? value) {
    if (value == null) {
      _json.remove('storage_class');
    } else {
      _json['storage_class'] = value;
    }
  }

  String get type {
    return _json['type'] as String;
  }

  set type(String value) {
    _json['type'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Action] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ActionTypeFactory extends SchemanticType<Action> {
  const _ActionTypeFactory();

  @override
  Action parse(Object? json) {
    return Action._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Action',
    definition: $Schema
        .object(
          properties: {
            'storage_class': $Schema.string(
              description:
                  'The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE.',
            ),
            'type': $Schema.string(
              description:
                  'The type of the action of this Lifecycle Rule. Supported values include: Delete, SetStorageClass and AbortIncompleteMultipartUpload.',
            ),
          },
          required: ['type'],
          description:
              'The Lifecycle Rule\'s action configuration. A single block of this type is supported.',
        )
        .value,
    dependencies: [],
  );
}

base class Condition {
  /// Creates a [Condition] from a JSON map.
  factory Condition.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Condition._(this._json);

  Condition({
    num? age,
    String? createdBefore,
    String? customTimeBefore,
    num? daysSinceCustomTime,
    num? daysSinceNoncurrentTime,
    List<String>? matchesPrefix,
    List<String>? matchesStorageClass,
    List<String>? matchesSuffix,
    String? noncurrentTimeBefore,
    num? numNewerVersions,
    bool? sendAgeIfZero,
    bool? sendDaysSinceCustomTimeIfZero,
    bool? sendDaysSinceNoncurrentTimeIfZero,
    bool? sendNumNewerVersionsIfZero,
    String? withState,
  }) {
    _json = {
      'age': ?age,
      'created_before': ?createdBefore,
      'custom_time_before': ?customTimeBefore,
      'days_since_custom_time': ?daysSinceCustomTime,
      'days_since_noncurrent_time': ?daysSinceNoncurrentTime,
      'matches_prefix': ?matchesPrefix,
      'matches_storage_class': ?matchesStorageClass,
      'matches_suffix': ?matchesSuffix,
      'noncurrent_time_before': ?noncurrentTimeBefore,
      'num_newer_versions': ?numNewerVersions,
      'send_age_if_zero': ?sendAgeIfZero,
      'send_days_since_custom_time_if_zero': ?sendDaysSinceCustomTimeIfZero,
      'send_days_since_noncurrent_time_if_zero':
          ?sendDaysSinceNoncurrentTimeIfZero,
      'send_num_newer_versions_if_zero': ?sendNumNewerVersionsIfZero,
      'with_state': ?withState,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Condition].
  static const SchemanticType<Condition> $schema = _ConditionTypeFactory();

  num? get age {
    return _json['age'] as num?;
  }

  set age(num? value) {
    if (value == null) {
      _json.remove('age');
    } else {
      _json['age'] = value;
    }
  }

  String? get createdBefore {
    return _json['created_before'] as String?;
  }

  set createdBefore(String? value) {
    if (value == null) {
      _json.remove('created_before');
    } else {
      _json['created_before'] = value;
    }
  }

  String? get customTimeBefore {
    return _json['custom_time_before'] as String?;
  }

  set customTimeBefore(String? value) {
    if (value == null) {
      _json.remove('custom_time_before');
    } else {
      _json['custom_time_before'] = value;
    }
  }

  num? get daysSinceCustomTime {
    return _json['days_since_custom_time'] as num?;
  }

  set daysSinceCustomTime(num? value) {
    if (value == null) {
      _json.remove('days_since_custom_time');
    } else {
      _json['days_since_custom_time'] = value;
    }
  }

  num? get daysSinceNoncurrentTime {
    return _json['days_since_noncurrent_time'] as num?;
  }

  set daysSinceNoncurrentTime(num? value) {
    if (value == null) {
      _json.remove('days_since_noncurrent_time');
    } else {
      _json['days_since_noncurrent_time'] = value;
    }
  }

  List<String>? get matchesPrefix {
    return (_json['matches_prefix'] as List?)?.cast<String>();
  }

  set matchesPrefix(List<String>? value) {
    if (value == null) {
      _json.remove('matches_prefix');
    } else {
      _json['matches_prefix'] = value;
    }
  }

  List<String>? get matchesStorageClass {
    return (_json['matches_storage_class'] as List?)?.cast<String>();
  }

  set matchesStorageClass(List<String>? value) {
    if (value == null) {
      _json.remove('matches_storage_class');
    } else {
      _json['matches_storage_class'] = value;
    }
  }

  List<String>? get matchesSuffix {
    return (_json['matches_suffix'] as List?)?.cast<String>();
  }

  set matchesSuffix(List<String>? value) {
    if (value == null) {
      _json.remove('matches_suffix');
    } else {
      _json['matches_suffix'] = value;
    }
  }

  String? get noncurrentTimeBefore {
    return _json['noncurrent_time_before'] as String?;
  }

  set noncurrentTimeBefore(String? value) {
    if (value == null) {
      _json.remove('noncurrent_time_before');
    } else {
      _json['noncurrent_time_before'] = value;
    }
  }

  num? get numNewerVersions {
    return _json['num_newer_versions'] as num?;
  }

  set numNewerVersions(num? value) {
    if (value == null) {
      _json.remove('num_newer_versions');
    } else {
      _json['num_newer_versions'] = value;
    }
  }

  bool? get sendAgeIfZero {
    return _json['send_age_if_zero'] as bool?;
  }

  set sendAgeIfZero(bool? value) {
    if (value == null) {
      _json.remove('send_age_if_zero');
    } else {
      _json['send_age_if_zero'] = value;
    }
  }

  bool? get sendDaysSinceCustomTimeIfZero {
    return _json['send_days_since_custom_time_if_zero'] as bool?;
  }

  set sendDaysSinceCustomTimeIfZero(bool? value) {
    if (value == null) {
      _json.remove('send_days_since_custom_time_if_zero');
    } else {
      _json['send_days_since_custom_time_if_zero'] = value;
    }
  }

  bool? get sendDaysSinceNoncurrentTimeIfZero {
    return _json['send_days_since_noncurrent_time_if_zero'] as bool?;
  }

  set sendDaysSinceNoncurrentTimeIfZero(bool? value) {
    if (value == null) {
      _json.remove('send_days_since_noncurrent_time_if_zero');
    } else {
      _json['send_days_since_noncurrent_time_if_zero'] = value;
    }
  }

  bool? get sendNumNewerVersionsIfZero {
    return _json['send_num_newer_versions_if_zero'] as bool?;
  }

  set sendNumNewerVersionsIfZero(bool? value) {
    if (value == null) {
      _json.remove('send_num_newer_versions_if_zero');
    } else {
      _json['send_num_newer_versions_if_zero'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get withState {
    return _json['with_state'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set withState(String? value) {
    if (value == null) {
      _json.remove('with_state');
    } else {
      _json['with_state'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Condition] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConditionTypeFactory extends SchemanticType<Condition> {
  const _ConditionTypeFactory();

  @override
  Condition parse(Object? json) {
    return Condition._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Condition',
    definition: $Schema
        .object(
          properties: {
            'age': $Schema.number(
              description:
                  'Minimum age of an object in days to satisfy this condition.',
            ),
            'created_before': $Schema.string(
              description:
                  'Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.',
            ),
            'custom_time_before': $Schema.string(
              description:
                  'Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.',
            ),
            'days_since_custom_time': $Schema.number(
              description:
                  'Number of days elapsed since the user-specified timestamp set on an object.',
            ),
            'days_since_noncurrent_time': $Schema.number(
              description:
                  'Number of days elapsed since the noncurrent timestamp of an object. This\n										condition is relevant only for versioned objects.',
            ),
            'matches_prefix': $Schema.list(
              description:
                  'One or more matching name prefixes to satisfy this condition.',
              items: $Schema.string(),
            ),
            'matches_storage_class': $Schema.list(
              description:
                  'Storage Class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, DURABLE_REDUCED_AVAILABILITY.',
              items: $Schema.string(),
            ),
            'matches_suffix': $Schema.list(
              description:
                  'One or more matching name suffixes to satisfy this condition.',
              items: $Schema.string(),
            ),
            'noncurrent_time_before': $Schema.string(
              description:
                  'Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.',
            ),
            'num_newer_versions': $Schema.number(
              description:
                  'Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.',
            ),
            'send_age_if_zero': $Schema.boolean(
              description:
                  'While set true, age value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the age field. It can be used alone or together with age.',
            ),
            'send_days_since_custom_time_if_zero': $Schema.boolean(
              description:
                  'While set true, days_since_custom_time value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the days_since_custom_time field. It can be used alone or together with days_since_custom_time.',
            ),
            'send_days_since_noncurrent_time_if_zero': $Schema.boolean(
              description:
                  'While set true, days_since_noncurrent_time value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the days_since_noncurrent_time field. It can be used alone or together with days_since_noncurrent_time.',
            ),
            'send_num_newer_versions_if_zero': $Schema.boolean(
              description:
                  'While set true, num_newer_versions value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the num_newer_versions field. It can be used alone or together with num_newer_versions.',
            ),
            'with_state': $Schema.string(
              description:
                  'Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: "LIVE", "ARCHIVED", "ANY".',
            ),
          },
          description: 'The Lifecycle Rule\'s condition configuration.',
        )
        .value,
    dependencies: [],
  );
}

base class LifecycleRule {
  /// Creates a [LifecycleRule] from a JSON map.
  factory LifecycleRule.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  LifecycleRule._(this._json);

  LifecycleRule({
    required List<Action> action,
    required List<Condition> condition,
  }) {
    _json = {
      'action': action.map((e) => e.toJson()).toList(),
      'condition': condition.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [LifecycleRule].
  static const SchemanticType<LifecycleRule> $schema =
      _LifecycleRuleTypeFactory();

  List<Action> get action {
    return (_json['action'] as List)
        .map((e) => Action.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set action(List<Action> value) {
    _json['action'] = value.toList();
  }

  List<Condition> get condition {
    return (_json['condition'] as List)
        .map((e) => Condition.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set condition(List<Condition> value) {
    _json['condition'] = value.toList();
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [LifecycleRule] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LifecycleRuleTypeFactory extends SchemanticType<LifecycleRule> {
  const _LifecycleRuleTypeFactory();

  @override
  LifecycleRule parse(Object? json) {
    return LifecycleRule._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'LifecycleRule',
    definition: $Schema
        .object(
          properties: {
            'action': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Action'}),
            ),
            'condition': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Condition'}),
            ),
          },
          required: ['action', 'condition'],
          description: 'The bucket\'s Lifecycle Rules configuration.',
        )
        .value,
    dependencies: [Action.$schema, Condition.$schema],
  );
}

base class Logging {
  /// Creates a [Logging] from a JSON map.
  factory Logging.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Logging._(this._json);

  Logging({required String logBucket, String? logObjectPrefix}) {
    _json = {'log_bucket': logBucket, 'log_object_prefix': ?logObjectPrefix};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Logging].
  static const SchemanticType<Logging> $schema = _LoggingTypeFactory();

  String get logBucket {
    return _json['log_bucket'] as String;
  }

  set logBucket(String value) {
    _json['log_bucket'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get logObjectPrefix {
    return _json['log_object_prefix'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set logObjectPrefix(String? value) {
    if (value == null) {
      _json.remove('log_object_prefix');
    } else {
      _json['log_object_prefix'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Logging] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LoggingTypeFactory extends SchemanticType<Logging> {
  const _LoggingTypeFactory();

  @override
  Logging parse(Object? json) {
    return Logging._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Logging',
    definition: $Schema
        .object(
          properties: {
            'log_bucket': $Schema.string(
              description: 'The bucket that will receive log objects.',
            ),
            'log_object_prefix': $Schema.string(
              description:
                  'The object prefix for log objects. If it\'s not provided, by default Google Cloud Storage sets this to this bucket\'s name.',
            ),
          },
          required: ['log_bucket'],
          description: 'The bucket\'s Access & Storage Logs configuration.',
        )
        .value,
    dependencies: [],
  );
}

base class RetentionPolicy {
  /// Creates a [RetentionPolicy] from a JSON map.
  factory RetentionPolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  RetentionPolicy._(this._json);

  RetentionPolicy({bool? isLocked, required String retentionPeriod}) {
    _json = {'is_locked': ?isLocked, 'retention_period': retentionPeriod};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RetentionPolicy].
  static const SchemanticType<RetentionPolicy> $schema =
      _RetentionPolicyTypeFactory();

  bool? get isLocked {
    return _json['is_locked'] as bool?;
  }

  set isLocked(bool? value) {
    if (value == null) {
      _json.remove('is_locked');
    } else {
      _json['is_locked'] = value;
    }
  }

  String get retentionPeriod {
    return _json['retention_period'] as String;
  }

  set retentionPeriod(String value) {
    _json['retention_period'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [RetentionPolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RetentionPolicyTypeFactory extends SchemanticType<RetentionPolicy> {
  const _RetentionPolicyTypeFactory();

  @override
  RetentionPolicy parse(Object? json) {
    return RetentionPolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RetentionPolicy',
    definition: $Schema
        .object(
          properties: {
            'is_locked': $Schema.boolean(
              description:
                  'If set to true, the bucket will be locked and permanently restrict edits to the bucket\'s retention policy.  Caution: Locking a bucket is an irreversible action.',
            ),
            'retention_period': $Schema.string(
              description:
                  'The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds.',
            ),
          },
          required: ['retention_period'],
          description:
              'Configuration of the bucket\'s data retention policy for how long objects in the bucket should be retained.',
        )
        .value,
    dependencies: [],
  );
}

base class SoftDeletePolicy {
  /// Creates a [SoftDeletePolicy] from a JSON map.
  factory SoftDeletePolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SoftDeletePolicy._(this._json);

  SoftDeletePolicy({num? retentionDurationSeconds}) {
    _json = {'retention_duration_seconds': ?retentionDurationSeconds};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SoftDeletePolicy].
  static const SchemanticType<SoftDeletePolicy> $schema =
      _SoftDeletePolicyTypeFactory();

  num? get retentionDurationSeconds {
    return _json['retention_duration_seconds'] as num?;
  }

  set retentionDurationSeconds(num? value) {
    if (value == null) {
      _json.remove('retention_duration_seconds');
    } else {
      _json['retention_duration_seconds'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SoftDeletePolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SoftDeletePolicyTypeFactory
    extends SchemanticType<SoftDeletePolicy> {
  const _SoftDeletePolicyTypeFactory();

  @override
  SoftDeletePolicy parse(Object? json) {
    return SoftDeletePolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SoftDeletePolicy',
    definition: $Schema
        .object(
          properties: {
            'retention_duration_seconds': $Schema.number(
              description:
                  'The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted. Default value is 604800.',
            ),
          },
          description:
              'The bucket\'s soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. If it is not provided, by default Google Cloud Storage sets this to default soft delete policy',
        )
        .value,
    dependencies: [],
  );
}

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? read, String? update}) {
    _json = {'create': ?create, 'read': ?read, 'update': ?update};
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

  String? get read {
    return _json['read'] as String?;
  }

  set read(String? value) {
    if (value == null) {
      _json.remove('read');
    } else {
      _json['read'] = value;
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
            'read': $Schema.string(),
            'update': $Schema.string(),
          },
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class Versioning {
  /// Creates a [Versioning] from a JSON map.
  factory Versioning.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Versioning._(this._json);

  Versioning({required bool enabled}) {
    _json = {'enabled': enabled};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Versioning].
  static const SchemanticType<Versioning> $schema = _VersioningTypeFactory();

  bool get enabled {
    return _json['enabled'] as bool;
  }

  set enabled(bool value) {
    _json['enabled'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Versioning] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _VersioningTypeFactory extends SchemanticType<Versioning> {
  const _VersioningTypeFactory();

  @override
  Versioning parse(Object? json) {
    return Versioning._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Versioning',
    definition: $Schema
        .object(
          properties: {
            'enabled': $Schema.boolean(
              description:
                  'While set to true, versioning is fully enabled for this bucket.',
            ),
          },
          required: ['enabled'],
          description: 'The bucket\'s Versioning configuration.',
        )
        .value,
    dependencies: [],
  );
}

base class Website {
  /// Creates a [Website] from a JSON map.
  factory Website.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Website._(this._json);

  Website({String? mainPageSuffix, String? notFoundPage}) {
    _json = {
      'main_page_suffix': ?mainPageSuffix,
      'not_found_page': ?notFoundPage,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Website].
  static const SchemanticType<Website> $schema = _WebsiteTypeFactory();

  String? get mainPageSuffix {
    return _json['main_page_suffix'] as String?;
  }

  set mainPageSuffix(String? value) {
    if (value == null) {
      _json.remove('main_page_suffix');
    } else {
      _json['main_page_suffix'] = value;
    }
  }

  String? get notFoundPage {
    return _json['not_found_page'] as String?;
  }

  set notFoundPage(String? value) {
    if (value == null) {
      _json.remove('not_found_page');
    } else {
      _json['not_found_page'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Website] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _WebsiteTypeFactory extends SchemanticType<Website> {
  const _WebsiteTypeFactory();

  @override
  Website parse(Object? json) {
    return Website._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Website',
    definition: $Schema
        .object(
          properties: {
            'main_page_suffix': $Schema.string(
              description:
                  'Behaves as the bucket\'s directory index where missing objects are treated as potential directories.',
            ),
            'not_found_page': $Schema.string(
              description:
                  'The custom object to return when a requested resource is not found.',
            ),
          },
          description: 'Configuration if the bucket acts as a website.',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleStorageBucket {
  /// Creates a [GoogleStorageBucket] from a JSON map.
  factory GoogleStorageBucket.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleStorageBucket._(this._json);

  GoogleStorageBucket({
    bool? defaultEventBasedHold,
    bool? enableObjectRetention,
    bool? forceDestroy,
    String? id,
    Map<String, String>? labels,
    required String location,
    required String name,
    String? project,
    String? publicAccessPrevention,
    bool? requesterPays,
    String? rpo,
    String? storageClass,
    bool? uniformBucketLevelAccess,
    Autoclass? autoclass,
    List<Cors>? cors,
    CustomPlacementConfig? customPlacementConfig,
    Encryption? encryption,
    HierarchicalNamespace? hierarchicalNamespace,
    IpFilter? ipFilter,
    List<LifecycleRule>? lifecycleRule,
    Logging? logging,
    RetentionPolicy? retentionPolicy,
    SoftDeletePolicy? softDeletePolicy,
    Timeouts? timeouts,
    Versioning? versioning,
    Website? website,
  }) {
    _json = {
      'default_event_based_hold': ?defaultEventBasedHold,
      'enable_object_retention': ?enableObjectRetention,
      'force_destroy': ?forceDestroy,
      'id': ?id,
      'labels': ?labels,
      'location': location,
      'name': name,
      'project': ?project,
      'public_access_prevention': ?publicAccessPrevention,
      'requester_pays': ?requesterPays,
      'rpo': ?rpo,
      'storage_class': ?storageClass,
      'uniform_bucket_level_access': ?uniformBucketLevelAccess,
      'autoclass': ?autoclass?.toJson(),
      'cors': ?cors?.map((e) => e.toJson()).toList(),
      'custom_placement_config': ?customPlacementConfig?.toJson(),
      'encryption': ?encryption?.toJson(),
      'hierarchical_namespace': ?hierarchicalNamespace?.toJson(),
      'ip_filter': ?ipFilter?.toJson(),
      'lifecycle_rule': ?lifecycleRule?.map((e) => e.toJson()).toList(),
      'logging': ?logging?.toJson(),
      'retention_policy': ?retentionPolicy?.toJson(),
      'soft_delete_policy': ?softDeletePolicy?.toJson(),
      'timeouts': ?timeouts?.toJson(),
      'versioning': ?versioning?.toJson(),
      'website': ?website?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleStorageBucket].
  static const SchemanticType<GoogleStorageBucket> $schema =
      _GoogleStorageBucketTypeFactory();

  bool? get defaultEventBasedHold {
    return _json['default_event_based_hold'] as bool?;
  }

  set defaultEventBasedHold(bool? value) {
    if (value == null) {
      _json.remove('default_event_based_hold');
    } else {
      _json['default_event_based_hold'] = value;
    }
  }

  bool? get enableObjectRetention {
    return _json['enable_object_retention'] as bool?;
  }

  set enableObjectRetention(bool? value) {
    if (value == null) {
      _json.remove('enable_object_retention');
    } else {
      _json['enable_object_retention'] = value;
    }
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

  String get location {
    return _json['location'] as String;
  }

  set location(String value) {
    _json['location'] = value;
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

  /// Optional + Computed. Inferred from provider when null.
  String? get publicAccessPrevention {
    return _json['public_access_prevention'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set publicAccessPrevention(String? value) {
    if (value == null) {
      _json.remove('public_access_prevention');
    } else {
      _json['public_access_prevention'] = value;
    }
  }

  bool? get requesterPays {
    return _json['requester_pays'] as bool?;
  }

  set requesterPays(bool? value) {
    if (value == null) {
      _json.remove('requester_pays');
    } else {
      _json['requester_pays'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get rpo {
    return _json['rpo'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set rpo(String? value) {
    if (value == null) {
      _json.remove('rpo');
    } else {
      _json['rpo'] = value;
    }
  }

  String? get storageClass {
    return _json['storage_class'] as String?;
  }

  set storageClass(String? value) {
    if (value == null) {
      _json.remove('storage_class');
    } else {
      _json['storage_class'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  bool? get uniformBucketLevelAccess {
    return _json['uniform_bucket_level_access'] as bool?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set uniformBucketLevelAccess(bool? value) {
    if (value == null) {
      _json.remove('uniform_bucket_level_access');
    } else {
      _json['uniform_bucket_level_access'] = value;
    }
  }

  Autoclass? get autoclass {
    return _json['autoclass'] == null
        ? null
        : Autoclass.fromJson(_json['autoclass'] as Map<String, dynamic>);
  }

  set autoclass(Autoclass? value) {
    if (value == null) {
      _json.remove('autoclass');
    } else {
      _json['autoclass'] = value;
    }
  }

  List<Cors>? get cors {
    return (_json['cors'] as List?)
        ?.map((e) => Cors.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set cors(List<Cors>? value) {
    if (value == null) {
      _json.remove('cors');
    } else {
      _json['cors'] = value.toList();
    }
  }

  CustomPlacementConfig? get customPlacementConfig {
    return _json['custom_placement_config'] == null
        ? null
        : CustomPlacementConfig.fromJson(
            _json['custom_placement_config'] as Map<String, dynamic>,
          );
  }

  set customPlacementConfig(CustomPlacementConfig? value) {
    if (value == null) {
      _json.remove('custom_placement_config');
    } else {
      _json['custom_placement_config'] = value;
    }
  }

  Encryption? get encryption {
    return _json['encryption'] == null
        ? null
        : Encryption.fromJson(_json['encryption'] as Map<String, dynamic>);
  }

  set encryption(Encryption? value) {
    if (value == null) {
      _json.remove('encryption');
    } else {
      _json['encryption'] = value;
    }
  }

  HierarchicalNamespace? get hierarchicalNamespace {
    return _json['hierarchical_namespace'] == null
        ? null
        : HierarchicalNamespace.fromJson(
            _json['hierarchical_namespace'] as Map<String, dynamic>,
          );
  }

  set hierarchicalNamespace(HierarchicalNamespace? value) {
    if (value == null) {
      _json.remove('hierarchical_namespace');
    } else {
      _json['hierarchical_namespace'] = value;
    }
  }

  IpFilter? get ipFilter {
    return _json['ip_filter'] == null
        ? null
        : IpFilter.fromJson(_json['ip_filter'] as Map<String, dynamic>);
  }

  set ipFilter(IpFilter? value) {
    if (value == null) {
      _json.remove('ip_filter');
    } else {
      _json['ip_filter'] = value;
    }
  }

  List<LifecycleRule>? get lifecycleRule {
    return (_json['lifecycle_rule'] as List?)
        ?.map((e) => LifecycleRule.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set lifecycleRule(List<LifecycleRule>? value) {
    if (value == null) {
      _json.remove('lifecycle_rule');
    } else {
      _json['lifecycle_rule'] = value.toList();
    }
  }

  Logging? get logging {
    return _json['logging'] == null
        ? null
        : Logging.fromJson(_json['logging'] as Map<String, dynamic>);
  }

  set logging(Logging? value) {
    if (value == null) {
      _json.remove('logging');
    } else {
      _json['logging'] = value;
    }
  }

  RetentionPolicy? get retentionPolicy {
    return _json['retention_policy'] == null
        ? null
        : RetentionPolicy.fromJson(
            _json['retention_policy'] as Map<String, dynamic>,
          );
  }

  set retentionPolicy(RetentionPolicy? value) {
    if (value == null) {
      _json.remove('retention_policy');
    } else {
      _json['retention_policy'] = value;
    }
  }

  SoftDeletePolicy? get softDeletePolicy {
    return _json['soft_delete_policy'] == null
        ? null
        : SoftDeletePolicy.fromJson(
            _json['soft_delete_policy'] as Map<String, dynamic>,
          );
  }

  set softDeletePolicy(SoftDeletePolicy? value) {
    if (value == null) {
      _json.remove('soft_delete_policy');
    } else {
      _json['soft_delete_policy'] = value;
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

  Versioning? get versioning {
    return _json['versioning'] == null
        ? null
        : Versioning.fromJson(_json['versioning'] as Map<String, dynamic>);
  }

  set versioning(Versioning? value) {
    if (value == null) {
      _json.remove('versioning');
    } else {
      _json['versioning'] = value;
    }
  }

  Website? get website {
    return _json['website'] == null
        ? null
        : Website.fromJson(_json['website'] as Map<String, dynamic>);
  }

  set website(Website? value) {
    if (value == null) {
      _json.remove('website');
    } else {
      _json['website'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleStorageBucket] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleStorageBucketTypeFactory
    extends SchemanticType<GoogleStorageBucket> {
  const _GoogleStorageBucketTypeFactory();

  @override
  GoogleStorageBucket parse(Object? json) {
    return GoogleStorageBucket._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleStorageBucket',
    definition: $Schema
        .object(
          properties: {
            'default_event_based_hold': $Schema.boolean(
              description:
                  'Whether or not to automatically apply an eventBasedHold to new objects added to the bucket.',
            ),
            'enable_object_retention': $Schema.boolean(
              description:
                  'Enables each object in the bucket to have its own retention policy, which prevents deletion until stored for a specific length of time.',
            ),
            'force_destroy': $Schema.boolean(
              description:
                  'When true, before deleting a bucket, delete all objects within the bucket, or Anywhere Caches caching data for that bucket. Otherwise, buckets with objects/caches will fail. Anywhere Cache requires additional permissions to interact with and will be ignored when those are not present, attempting to delete anyways. This may result in the objects in the bucket getting destroyed but not the bucket itself if there is a cache in use with the bucket. Force deletion may take a long time to delete buckets with lots of objects or with any Anywhere Caches (80m+).',
            ),
            'id': $Schema.string(),
            'labels': $Schema.object(
              description:
                  'A set of key/value label pairs to assign to the bucket.',
              additionalProperties: $Schema.string(),
            ),
            'location': $Schema.string(
              description: 'The Google Cloud Storage location or region.',
            ),
            'name': $Schema.string(description: 'The name of the bucket.'),
            'project': $Schema.string(
              description:
                  'The ID of the project in which the resource belongs. If it is not provided, the provider project is used.',
            ),
            'public_access_prevention': $Schema.string(
              description: 'Prevents public access to a bucket.',
            ),
            'requester_pays': $Schema.boolean(
              description: 'Enables Requester Pays on a storage bucket.',
            ),
            'rpo': $Schema.string(
              description:
                  'Specifies the RPO setting of bucket. If set \'ASYNC_TURBO\', The Turbo Replication will be enabled for the dual-region bucket. Value \'DEFAULT\' will set RPO setting to default. Turbo Replication is only for buckets in dual-regions.See the docs for more details.',
            ),
            'storage_class': $Schema.string(
              description:
                  'The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE.',
            ),
            'uniform_bucket_level_access': $Schema.boolean(
              description: 'Enables uniform bucket-level access on a bucket.',
            ),
            'autoclass': $Schema.fromMap({'\$ref': r'#/$defs/Autoclass'}),
            'cors': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Cors'}),
            ),
            'custom_placement_config': $Schema.fromMap({
              '\$ref': r'#/$defs/CustomPlacementConfig',
            }),
            'encryption': $Schema.fromMap({'\$ref': r'#/$defs/Encryption'}),
            'hierarchical_namespace': $Schema.fromMap({
              '\$ref': r'#/$defs/HierarchicalNamespace',
            }),
            'ip_filter': $Schema.fromMap({'\$ref': r'#/$defs/IpFilter'}),
            'lifecycle_rule': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/LifecycleRule'}),
            ),
            'logging': $Schema.fromMap({'\$ref': r'#/$defs/Logging'}),
            'retention_policy': $Schema.fromMap({
              '\$ref': r'#/$defs/RetentionPolicy',
            }),
            'soft_delete_policy': $Schema.fromMap({
              '\$ref': r'#/$defs/SoftDeletePolicy',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
            'versioning': $Schema.fromMap({'\$ref': r'#/$defs/Versioning'}),
            'website': $Schema.fromMap({'\$ref': r'#/$defs/Website'}),
          },
          required: ['location', 'name'],
        )
        .value,
    dependencies: [
      Autoclass.$schema,
      Cors.$schema,
      CustomPlacementConfig.$schema,
      Encryption.$schema,
      HierarchicalNamespace.$schema,
      IpFilter.$schema,
      LifecycleRule.$schema,
      Logging.$schema,
      RetentionPolicy.$schema,
      SoftDeletePolicy.$schema,
      Timeouts.$schema,
      Versioning.$schema,
      Website.$schema,
    ],
  );
}

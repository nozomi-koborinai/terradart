// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_cloud_run_v2_service.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class BinaryAuthorization {
  /// Creates a [BinaryAuthorization] from a JSON map.
  factory BinaryAuthorization.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  BinaryAuthorization._(this._json);

  BinaryAuthorization({
    String? breakglassJustification,
    String? policy,
    bool? useDefault,
  }) {
    _json = {
      'breakglass_justification': ?breakglassJustification,
      'policy': ?policy,
      'use_default': ?useDefault,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BinaryAuthorization].
  static const SchemanticType<BinaryAuthorization> $schema =
      _BinaryAuthorizationTypeFactory();

  String? get breakglassJustification {
    return _json['breakglass_justification'] as String?;
  }

  set breakglassJustification(String? value) {
    if (value == null) {
      _json.remove('breakglass_justification');
    } else {
      _json['breakglass_justification'] = value;
    }
  }

  String? get policy {
    return _json['policy'] as String?;
  }

  set policy(String? value) {
    if (value == null) {
      _json.remove('policy');
    } else {
      _json['policy'] = value;
    }
  }

  bool? get useDefault {
    return _json['use_default'] as bool?;
  }

  set useDefault(bool? value) {
    if (value == null) {
      _json.remove('use_default');
    } else {
      _json['use_default'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [BinaryAuthorization] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _BinaryAuthorizationTypeFactory
    extends SchemanticType<BinaryAuthorization> {
  const _BinaryAuthorizationTypeFactory();

  @override
  BinaryAuthorization parse(Object? json) {
    return BinaryAuthorization._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'BinaryAuthorization',
    definition: $Schema
        .object(
          properties: {
            'breakglass_justification': $Schema.string(
              description:
                  'If present, indicates to use Breakglass using this justification. If useDefault is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass',
            ),
            'policy': $Schema.string(
              description:
                  'The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}',
            ),
            'use_default': $Schema.boolean(
              description:
                  'If True, indicates to use the default project\'s binary authorization policy. If False, binary authorization will be disabled.',
            ),
          },
          description: 'Settings for the Binary Authorization feature.',
        )
        .value,
    dependencies: [],
  );
}

base class BuildConfig {
  /// Creates a [BuildConfig] from a JSON map.
  factory BuildConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  BuildConfig._(this._json);

  BuildConfig({
    String? baseImage,
    bool? enableAutomaticUpdates,
    Map<String, String>? environmentVariables,
    String? functionTarget,
    String? imageUri,
    String? serviceAccount,
    String? sourceLocation,
    String? workerPool,
  }) {
    _json = {
      'base_image': ?baseImage,
      'enable_automatic_updates': ?enableAutomaticUpdates,
      'environment_variables': ?environmentVariables,
      'function_target': ?functionTarget,
      'image_uri': ?imageUri,
      'service_account': ?serviceAccount,
      'source_location': ?sourceLocation,
      'worker_pool': ?workerPool,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BuildConfig].
  static const SchemanticType<BuildConfig> $schema = _BuildConfigTypeFactory();

  String? get baseImage {
    return _json['base_image'] as String?;
  }

  set baseImage(String? value) {
    if (value == null) {
      _json.remove('base_image');
    } else {
      _json['base_image'] = value;
    }
  }

  bool? get enableAutomaticUpdates {
    return _json['enable_automatic_updates'] as bool?;
  }

  set enableAutomaticUpdates(bool? value) {
    if (value == null) {
      _json.remove('enable_automatic_updates');
    } else {
      _json['enable_automatic_updates'] = value;
    }
  }

  Map<String, String>? get environmentVariables {
    return (_json['environment_variables'] as Map?)?.cast<String, String>();
  }

  set environmentVariables(Map<String, String>? value) {
    if (value == null) {
      _json.remove('environment_variables');
    } else {
      _json['environment_variables'] = value;
    }
  }

  String? get functionTarget {
    return _json['function_target'] as String?;
  }

  set functionTarget(String? value) {
    if (value == null) {
      _json.remove('function_target');
    } else {
      _json['function_target'] = value;
    }
  }

  String? get imageUri {
    return _json['image_uri'] as String?;
  }

  set imageUri(String? value) {
    if (value == null) {
      _json.remove('image_uri');
    } else {
      _json['image_uri'] = value;
    }
  }

  String? get serviceAccount {
    return _json['service_account'] as String?;
  }

  set serviceAccount(String? value) {
    if (value == null) {
      _json.remove('service_account');
    } else {
      _json['service_account'] = value;
    }
  }

  String? get sourceLocation {
    return _json['source_location'] as String?;
  }

  set sourceLocation(String? value) {
    if (value == null) {
      _json.remove('source_location');
    } else {
      _json['source_location'] = value;
    }
  }

  String? get workerPool {
    return _json['worker_pool'] as String?;
  }

  set workerPool(String? value) {
    if (value == null) {
      _json.remove('worker_pool');
    } else {
      _json['worker_pool'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [BuildConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _BuildConfigTypeFactory extends SchemanticType<BuildConfig> {
  const _BuildConfigTypeFactory();

  @override
  BuildConfig parse(Object? json) {
    return BuildConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'BuildConfig',
    definition: $Schema
        .object(
          properties: {
            'base_image': $Schema.string(
              description: 'The base image used to build the function.',
            ),
            'enable_automatic_updates': $Schema.boolean(
              description:
                  'Sets whether the function will receive automatic base image updates.',
            ),
            'environment_variables': $Schema.object(
              description:
                  'User-provided build-time environment variables for the function.',
              additionalProperties: $Schema.string(),
            ),
            'function_target': $Schema.string(
              description:
                  'The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".',
            ),
            'image_uri': $Schema.string(
              description: 'Artifact Registry URI to store the built image.',
            ),
            'service_account': $Schema.string(
              description:
                  'Service account to be used for building the container. The format of this field is \'projects/{projectId}/serviceAccounts/{serviceAccountEmail}\'.',
            ),
            'source_location': $Schema.string(
              description:
                  'The Cloud Storage bucket URI where the function source code is located.',
            ),
            'worker_pool': $Schema.string(
              description:
                  'Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is \'projects/{project}/locations/{region}/workerPools/{workerPool}\' where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.',
            ),
          },
          description: 'Configuration for building a Cloud Run function.',
        )
        .value,
    dependencies: [],
  );
}

base class MultiRegionSettings {
  /// Creates a [MultiRegionSettings] from a JSON map.
  factory MultiRegionSettings.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  MultiRegionSettings._(this._json);

  MultiRegionSettings({List<String>? regions}) {
    _json = {'regions': ?regions};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [MultiRegionSettings].
  static const SchemanticType<MultiRegionSettings> $schema =
      _MultiRegionSettingsTypeFactory();

  List<String>? get regions {
    return (_json['regions'] as List?)?.cast<String>();
  }

  set regions(List<String>? value) {
    if (value == null) {
      _json.remove('regions');
    } else {
      _json['regions'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [MultiRegionSettings] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _MultiRegionSettingsTypeFactory
    extends SchemanticType<MultiRegionSettings> {
  const _MultiRegionSettingsTypeFactory();

  @override
  MultiRegionSettings parse(Object? json) {
    return MultiRegionSettings._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'MultiRegionSettings',
    definition: $Schema
        .object(
          properties: {
            'regions': $Schema.list(
              description:
                  'The list of regions to deploy the multi-region Service.',
              items: $Schema.string(),
            ),
          },
          description:
              'Settings for creating a Multi-Region Service. Make sure to use region = \'global\' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy',
        )
        .value,
    dependencies: [],
  );
}

base class Scaling {
  /// Creates a [Scaling] from a JSON map.
  factory Scaling.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Scaling._(this._json);

  Scaling({
    num? manualInstanceCount,
    num? maxInstanceCount,
    num? minInstanceCount,
    String? scalingMode,
  }) {
    _json = {
      'manual_instance_count': ?manualInstanceCount,
      'max_instance_count': ?maxInstanceCount,
      'min_instance_count': ?minInstanceCount,
      'scaling_mode': ?scalingMode,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Scaling].
  static const SchemanticType<Scaling> $schema = _ScalingTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get manualInstanceCount {
    return _json['manual_instance_count'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set manualInstanceCount(num? value) {
    if (value == null) {
      _json.remove('manual_instance_count');
    } else {
      _json['manual_instance_count'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get maxInstanceCount {
    return _json['max_instance_count'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxInstanceCount(num? value) {
    if (value == null) {
      _json.remove('max_instance_count');
    } else {
      _json['max_instance_count'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get minInstanceCount {
    return _json['min_instance_count'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set minInstanceCount(num? value) {
    if (value == null) {
      _json.remove('min_instance_count');
    } else {
      _json['min_instance_count'] = value;
    }
  }

  String? get scalingMode {
    return _json['scaling_mode'] as String?;
  }

  set scalingMode(String? value) {
    if (value == null) {
      _json.remove('scaling_mode');
    } else {
      _json['scaling_mode'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Scaling] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ScalingTypeFactory extends SchemanticType<Scaling> {
  const _ScalingTypeFactory();

  @override
  Scaling parse(Object? json) {
    return Scaling._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Scaling',
    definition: $Schema
        .object(
          properties: {
            'manual_instance_count': $Schema.number(
              description:
                  'Total instance count for the service in manual scaling mode. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving.',
            ),
            'max_instance_count': $Schema.number(
              description:
                  'Combined maximum number of instances for all revisions receiving traffic.',
            ),
            'min_instance_count': $Schema.number(
              description:
                  'Minimum number of instances for the service, to be divided among all revisions receiving traffic.',
            ),
            'scaling_mode': $Schema.string(
              description:
                  'The [scaling mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode) for the service. Possible values: ["AUTOMATIC", "MANUAL"]',
            ),
          },
          description: 'Scaling settings that apply to the whole service',
        )
        .value,
    dependencies: [],
  );
}

base class SecretKeyRef {
  /// Creates a [SecretKeyRef] from a JSON map.
  factory SecretKeyRef.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SecretKeyRef._(this._json);

  SecretKeyRef({required String secret, String? version}) {
    _json = {'secret': secret, 'version': ?version};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SecretKeyRef].
  static const SchemanticType<SecretKeyRef> $schema =
      _SecretKeyRefTypeFactory();

  String get secret {
    return _json['secret'] as String;
  }

  set secret(String value) {
    _json['secret'] = value;
  }

  String? get version {
    return _json['version'] as String?;
  }

  set version(String? value) {
    if (value == null) {
      _json.remove('version');
    } else {
      _json['version'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SecretKeyRef] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SecretKeyRefTypeFactory extends SchemanticType<SecretKeyRef> {
  const _SecretKeyRefTypeFactory();

  @override
  SecretKeyRef parse(Object? json) {
    return SecretKeyRef._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SecretKeyRef',
    definition: $Schema
        .object(
          properties: {
            'secret': $Schema.string(
              description:
                  'The name of the secret in Cloud Secret Manager. Format: {secretName} if the secret is in the same project. projects/{project}/secrets/{secretName} if the secret is in a different project.',
            ),
            'version': $Schema.string(
              description:
                  'The Cloud Secret Manager secret version. Can be \'latest\' for the latest value or an integer for a specific version.',
            ),
          },
          required: ['secret'],
          description:
              'Selects a secret and a specific version from Cloud Secret Manager.',
        )
        .value,
    dependencies: [],
  );
}

base class ValueSource {
  /// Creates a [ValueSource] from a JSON map.
  factory ValueSource.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ValueSource._(this._json);

  ValueSource({SecretKeyRef? secretKeyRef}) {
    _json = {'secret_key_ref': ?secretKeyRef?.toJson()};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ValueSource].
  static const SchemanticType<ValueSource> $schema = _ValueSourceTypeFactory();

  SecretKeyRef? get secretKeyRef {
    return _json['secret_key_ref'] == null
        ? null
        : SecretKeyRef.fromJson(
            _json['secret_key_ref'] as Map<String, dynamic>,
          );
  }

  set secretKeyRef(SecretKeyRef? value) {
    if (value == null) {
      _json.remove('secret_key_ref');
    } else {
      _json['secret_key_ref'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ValueSource] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ValueSourceTypeFactory extends SchemanticType<ValueSource> {
  const _ValueSourceTypeFactory();

  @override
  ValueSource parse(Object? json) {
    return ValueSource._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ValueSource',
    definition: $Schema
        .object(
          properties: {
            'secret_key_ref': $Schema.fromMap({
              '\$ref': r'#/$defs/SecretKeyRef',
            }),
          },
          description: 'Source for the environment variable\'s value.',
        )
        .value,
    dependencies: [SecretKeyRef.$schema],
  );
}

base class Env {
  /// Creates a [Env] from a JSON map.
  factory Env.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Env._(this._json);

  Env({required String name, String? value, ValueSource? valueSource}) {
    _json = {
      'name': name,
      'value': ?value,
      'value_source': ?valueSource?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Env].
  static const SchemanticType<Env> $schema = _EnvTypeFactory();

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get value {
    return _json['value'] as String?;
  }

  set value(String? value) {
    if (value == null) {
      _json.remove('value');
    } else {
      _json['value'] = value;
    }
  }

  ValueSource? get valueSource {
    return _json['value_source'] == null
        ? null
        : ValueSource.fromJson(_json['value_source'] as Map<String, dynamic>);
  }

  set valueSource(ValueSource? value) {
    if (value == null) {
      _json.remove('value_source');
    } else {
      _json['value_source'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Env] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _EnvTypeFactory extends SchemanticType<Env> {
  const _EnvTypeFactory();

  @override
  Env parse(Object? json) {
    return Env._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Env',
    definition: $Schema
        .object(
          properties: {
            'name': $Schema.string(
              description:
                  'Name of the environment variable. Must be a C_IDENTIFIER, and may not exceed 32768 characters.',
            ),
            'value': $Schema.string(
              description:
                  'Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.',
            ),
            'value_source': $Schema.fromMap({'\$ref': r'#/$defs/ValueSource'}),
          },
          required: ['name'],
          description: 'List of environment variables to set in the container.',
        )
        .value,
    dependencies: [ValueSource.$schema],
  );
}

base class TemplateContainersLivenessProbeGrpc {
  /// Creates a [TemplateContainersLivenessProbeGrpc] from a JSON map.
  factory TemplateContainersLivenessProbeGrpc.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersLivenessProbeGrpc._(this._json);

  TemplateContainersLivenessProbeGrpc({num? port, String? service}) {
    _json = {'port': ?port, 'service': ?service};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersLivenessProbeGrpc].
  static const SchemanticType<TemplateContainersLivenessProbeGrpc> $schema =
      _TemplateContainersLivenessProbeGrpcTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get port {
    return _json['port'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set port(num? value) {
    if (value == null) {
      _json.remove('port');
    } else {
      _json['port'] = value;
    }
  }

  String? get service {
    return _json['service'] as String?;
  }

  set service(String? value) {
    if (value == null) {
      _json.remove('service');
    } else {
      _json['service'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersLivenessProbeGrpc] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersLivenessProbeGrpcTypeFactory
    extends SchemanticType<TemplateContainersLivenessProbeGrpc> {
  const _TemplateContainersLivenessProbeGrpcTypeFactory();

  @override
  TemplateContainersLivenessProbeGrpc parse(Object? json) {
    return TemplateContainersLivenessProbeGrpc._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersLivenessProbeGrpc',
    definition: $Schema
        .object(
          properties: {
            'port': $Schema.number(
              description:
                  'Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort.',
            ),
            'service': $Schema.string(
              description:
                  'The name of the service to place in the gRPC HealthCheckRequest\n(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).\nIf this is not specified, the default behavior is defined by gRPC.',
            ),
          },
          description: 'GRPC specifies an action involving a GRPC port.',
        )
        .value,
    dependencies: [],
  );
}

base class TemplateContainersLivenessProbeHttpGetHttpHeaders {
  /// Creates a [TemplateContainersLivenessProbeHttpGetHttpHeaders] from a JSON map.
  factory TemplateContainersLivenessProbeHttpGetHttpHeaders.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersLivenessProbeHttpGetHttpHeaders._(this._json);

  TemplateContainersLivenessProbeHttpGetHttpHeaders({
    required String name,
    String? value,
  }) {
    _json = {'name': name, 'value': ?value};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersLivenessProbeHttpGetHttpHeaders].
  static const SchemanticType<TemplateContainersLivenessProbeHttpGetHttpHeaders>
  $schema = _TemplateContainersLivenessProbeHttpGetHttpHeadersTypeFactory();

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get value {
    return _json['value'] as String?;
  }

  set value(String? value) {
    if (value == null) {
      _json.remove('value');
    } else {
      _json['value'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersLivenessProbeHttpGetHttpHeaders] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersLivenessProbeHttpGetHttpHeadersTypeFactory
    extends SchemanticType<TemplateContainersLivenessProbeHttpGetHttpHeaders> {
  const _TemplateContainersLivenessProbeHttpGetHttpHeadersTypeFactory();

  @override
  TemplateContainersLivenessProbeHttpGetHttpHeaders parse(Object? json) {
    return TemplateContainersLivenessProbeHttpGetHttpHeaders._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersLivenessProbeHttpGetHttpHeaders',
    definition: $Schema
        .object(
          properties: {
            'name': $Schema.string(description: 'The header field name'),
            'value': $Schema.string(description: 'The header field value'),
          },
          required: ['name'],
          description:
              'Custom headers to set in the request. HTTP allows repeated headers.',
        )
        .value,
    dependencies: [],
  );
}

base class TemplateContainersLivenessProbeHttpGet {
  /// Creates a [TemplateContainersLivenessProbeHttpGet] from a JSON map.
  factory TemplateContainersLivenessProbeHttpGet.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersLivenessProbeHttpGet._(this._json);

  TemplateContainersLivenessProbeHttpGet({
    String? path,
    num? port,
    List<TemplateContainersLivenessProbeHttpGetHttpHeaders>? httpHeaders,
  }) {
    _json = {
      'path': ?path,
      'port': ?port,
      'http_headers': ?httpHeaders?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersLivenessProbeHttpGet].
  static const SchemanticType<TemplateContainersLivenessProbeHttpGet> $schema =
      _TemplateContainersLivenessProbeHttpGetTypeFactory();

  String? get path {
    return _json['path'] as String?;
  }

  set path(String? value) {
    if (value == null) {
      _json.remove('path');
    } else {
      _json['path'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get port {
    return _json['port'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set port(num? value) {
    if (value == null) {
      _json.remove('port');
    } else {
      _json['port'] = value;
    }
  }

  List<TemplateContainersLivenessProbeHttpGetHttpHeaders>? get httpHeaders {
    return (_json['http_headers'] as List?)
        ?.map(
          (e) => TemplateContainersLivenessProbeHttpGetHttpHeaders.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  set httpHeaders(
    List<TemplateContainersLivenessProbeHttpGetHttpHeaders>? value,
  ) {
    if (value == null) {
      _json.remove('http_headers');
    } else {
      _json['http_headers'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersLivenessProbeHttpGet] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersLivenessProbeHttpGetTypeFactory
    extends SchemanticType<TemplateContainersLivenessProbeHttpGet> {
  const _TemplateContainersLivenessProbeHttpGetTypeFactory();

  @override
  TemplateContainersLivenessProbeHttpGet parse(Object? json) {
    return TemplateContainersLivenessProbeHttpGet._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersLivenessProbeHttpGet',
    definition: $Schema
        .object(
          properties: {
            'path': $Schema.string(
              description:
                  'Path to access on the HTTP server. Defaults to \'/\'.',
            ),
            'port': $Schema.number(
              description:
                  'Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort.',
            ),
            'http_headers': $Schema.list(
              items: $Schema.fromMap({
                '\$ref':
                    r'#/$defs/TemplateContainersLivenessProbeHttpGetHttpHeaders',
              }),
            ),
          },
          description: 'HTTPGet specifies the http request to perform.',
        )
        .value,
    dependencies: [TemplateContainersLivenessProbeHttpGetHttpHeaders.$schema],
  );
}

base class TemplateContainersLivenessProbeTcpSocket {
  /// Creates a [TemplateContainersLivenessProbeTcpSocket] from a JSON map.
  factory TemplateContainersLivenessProbeTcpSocket.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersLivenessProbeTcpSocket._(this._json);

  TemplateContainersLivenessProbeTcpSocket({required num port}) {
    _json = {'port': port};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersLivenessProbeTcpSocket].
  static const SchemanticType<TemplateContainersLivenessProbeTcpSocket>
  $schema = _TemplateContainersLivenessProbeTcpSocketTypeFactory();

  num get port {
    return _json['port'] as num;
  }

  set port(num value) {
    _json['port'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersLivenessProbeTcpSocket] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersLivenessProbeTcpSocketTypeFactory
    extends SchemanticType<TemplateContainersLivenessProbeTcpSocket> {
  const _TemplateContainersLivenessProbeTcpSocketTypeFactory();

  @override
  TemplateContainersLivenessProbeTcpSocket parse(Object? json) {
    return TemplateContainersLivenessProbeTcpSocket._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersLivenessProbeTcpSocket',
    definition: $Schema
        .object(
          properties: {
            'port': $Schema.number(
              description:
                  'Port number to access on the container. Must be in the range 1 to 65535.\nIf not specified, defaults to the exposed port of the container, which\nis the value of container.ports[0].containerPort.',
            ),
          },
          required: ['port'],
          description:
              'TCPSocketAction describes an action based on opening a socket',
        )
        .value,
    dependencies: [],
  );
}

base class LivenessProbe {
  /// Creates a [LivenessProbe] from a JSON map.
  factory LivenessProbe.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  LivenessProbe._(this._json);

  LivenessProbe({
    num? failureThreshold,
    num? initialDelaySeconds,
    num? periodSeconds,
    num? timeoutSeconds,
    TemplateContainersLivenessProbeGrpc? grpc,
    TemplateContainersLivenessProbeHttpGet? httpGet,
    TemplateContainersLivenessProbeTcpSocket? tcpSocket,
  }) {
    _json = {
      'failure_threshold': ?failureThreshold,
      'initial_delay_seconds': ?initialDelaySeconds,
      'period_seconds': ?periodSeconds,
      'timeout_seconds': ?timeoutSeconds,
      'grpc': ?grpc?.toJson(),
      'http_get': ?httpGet?.toJson(),
      'tcp_socket': ?tcpSocket?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [LivenessProbe].
  static const SchemanticType<LivenessProbe> $schema =
      _LivenessProbeTypeFactory();

  num? get failureThreshold {
    return _json['failure_threshold'] as num?;
  }

  set failureThreshold(num? value) {
    if (value == null) {
      _json.remove('failure_threshold');
    } else {
      _json['failure_threshold'] = value;
    }
  }

  num? get initialDelaySeconds {
    return _json['initial_delay_seconds'] as num?;
  }

  set initialDelaySeconds(num? value) {
    if (value == null) {
      _json.remove('initial_delay_seconds');
    } else {
      _json['initial_delay_seconds'] = value;
    }
  }

  num? get periodSeconds {
    return _json['period_seconds'] as num?;
  }

  set periodSeconds(num? value) {
    if (value == null) {
      _json.remove('period_seconds');
    } else {
      _json['period_seconds'] = value;
    }
  }

  num? get timeoutSeconds {
    return _json['timeout_seconds'] as num?;
  }

  set timeoutSeconds(num? value) {
    if (value == null) {
      _json.remove('timeout_seconds');
    } else {
      _json['timeout_seconds'] = value;
    }
  }

  TemplateContainersLivenessProbeGrpc? get grpc {
    return _json['grpc'] == null
        ? null
        : TemplateContainersLivenessProbeGrpc.fromJson(
            _json['grpc'] as Map<String, dynamic>,
          );
  }

  set grpc(TemplateContainersLivenessProbeGrpc? value) {
    if (value == null) {
      _json.remove('grpc');
    } else {
      _json['grpc'] = value;
    }
  }

  TemplateContainersLivenessProbeHttpGet? get httpGet {
    return _json['http_get'] == null
        ? null
        : TemplateContainersLivenessProbeHttpGet.fromJson(
            _json['http_get'] as Map<String, dynamic>,
          );
  }

  set httpGet(TemplateContainersLivenessProbeHttpGet? value) {
    if (value == null) {
      _json.remove('http_get');
    } else {
      _json['http_get'] = value;
    }
  }

  TemplateContainersLivenessProbeTcpSocket? get tcpSocket {
    return _json['tcp_socket'] == null
        ? null
        : TemplateContainersLivenessProbeTcpSocket.fromJson(
            _json['tcp_socket'] as Map<String, dynamic>,
          );
  }

  set tcpSocket(TemplateContainersLivenessProbeTcpSocket? value) {
    if (value == null) {
      _json.remove('tcp_socket');
    } else {
      _json['tcp_socket'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [LivenessProbe] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LivenessProbeTypeFactory extends SchemanticType<LivenessProbe> {
  const _LivenessProbeTypeFactory();

  @override
  LivenessProbe parse(Object? json) {
    return LivenessProbe._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'LivenessProbe',
    definition: $Schema
        .object(
          properties: {
            'failure_threshold': $Schema.number(
              description:
                  'Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.',
            ),
            'initial_delay_seconds': $Schema.number(
              description:
                  'Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes',
            ),
            'period_seconds': $Schema.number(
              description:
                  'How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds',
            ),
            'timeout_seconds': $Schema.number(
              description:
                  'Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes',
            ),
            'grpc': $Schema.fromMap({
              '\$ref': r'#/$defs/TemplateContainersLivenessProbeGrpc',
            }),
            'http_get': $Schema.fromMap({
              '\$ref': r'#/$defs/TemplateContainersLivenessProbeHttpGet',
            }),
            'tcp_socket': $Schema.fromMap({
              '\$ref': r'#/$defs/TemplateContainersLivenessProbeTcpSocket',
            }),
          },
          description:
              'Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes',
        )
        .value,
    dependencies: [
      TemplateContainersLivenessProbeGrpc.$schema,
      TemplateContainersLivenessProbeHttpGet.$schema,
      TemplateContainersLivenessProbeTcpSocket.$schema,
    ],
  );
}

base class Ports {
  /// Creates a [Ports] from a JSON map.
  factory Ports.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Ports._(this._json);

  Ports({num? containerPort, String? name}) {
    _json = {'container_port': ?containerPort, 'name': ?name};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Ports].
  static const SchemanticType<Ports> $schema = _PortsTypeFactory();

  num? get containerPort {
    return _json['container_port'] as num?;
  }

  set containerPort(num? value) {
    if (value == null) {
      _json.remove('container_port');
    } else {
      _json['container_port'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get name {
    return _json['name'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set name(String? value) {
    if (value == null) {
      _json.remove('name');
    } else {
      _json['name'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Ports] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _PortsTypeFactory extends SchemanticType<Ports> {
  const _PortsTypeFactory();

  @override
  Ports parse(Object? json) {
    return Ports._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Ports',
    definition: $Schema
        .object(
          properties: {
            'container_port': $Schema.number(
              description:
                  'Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536.',
            ),
            'name': $Schema.string(
              description:
                  'If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".',
            ),
          },
          description:
              'List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.\n\nIf omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on',
        )
        .value,
    dependencies: [],
  );
}

base class TemplateContainersReadinessProbeGrpc {
  /// Creates a [TemplateContainersReadinessProbeGrpc] from a JSON map.
  factory TemplateContainersReadinessProbeGrpc.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersReadinessProbeGrpc._(this._json);

  TemplateContainersReadinessProbeGrpc({num? port, String? service}) {
    _json = {'port': ?port, 'service': ?service};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersReadinessProbeGrpc].
  static const SchemanticType<TemplateContainersReadinessProbeGrpc> $schema =
      _TemplateContainersReadinessProbeGrpcTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get port {
    return _json['port'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set port(num? value) {
    if (value == null) {
      _json.remove('port');
    } else {
      _json['port'] = value;
    }
  }

  String? get service {
    return _json['service'] as String?;
  }

  set service(String? value) {
    if (value == null) {
      _json.remove('service');
    } else {
      _json['service'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersReadinessProbeGrpc] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersReadinessProbeGrpcTypeFactory
    extends SchemanticType<TemplateContainersReadinessProbeGrpc> {
  const _TemplateContainersReadinessProbeGrpcTypeFactory();

  @override
  TemplateContainersReadinessProbeGrpc parse(Object? json) {
    return TemplateContainersReadinessProbeGrpc._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersReadinessProbeGrpc',
    definition: $Schema
        .object(
          properties: {
            'port': $Schema.number(
              description:
                  'Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort.',
            ),
            'service': $Schema.string(
              description:
                  'The name of the service to place in the gRPC HealthCheckRequest\n(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).\nIf this is not specified, the default behavior is defined by gRPC.',
            ),
          },
          description: 'GRPC specifies an action involving a GRPC port.',
        )
        .value,
    dependencies: [],
  );
}

base class TemplateContainersReadinessProbeHttpGet {
  /// Creates a [TemplateContainersReadinessProbeHttpGet] from a JSON map.
  factory TemplateContainersReadinessProbeHttpGet.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersReadinessProbeHttpGet._(this._json);

  TemplateContainersReadinessProbeHttpGet({String? path, num? port}) {
    _json = {'path': ?path, 'port': ?port};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersReadinessProbeHttpGet].
  static const SchemanticType<TemplateContainersReadinessProbeHttpGet> $schema =
      _TemplateContainersReadinessProbeHttpGetTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get path {
    return _json['path'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set path(String? value) {
    if (value == null) {
      _json.remove('path');
    } else {
      _json['path'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get port {
    return _json['port'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set port(num? value) {
    if (value == null) {
      _json.remove('port');
    } else {
      _json['port'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersReadinessProbeHttpGet] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersReadinessProbeHttpGetTypeFactory
    extends SchemanticType<TemplateContainersReadinessProbeHttpGet> {
  const _TemplateContainersReadinessProbeHttpGetTypeFactory();

  @override
  TemplateContainersReadinessProbeHttpGet parse(Object? json) {
    return TemplateContainersReadinessProbeHttpGet._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersReadinessProbeHttpGet',
    definition: $Schema
        .object(
          properties: {
            'path': $Schema.string(
              description:
                  'Path to access on the HTTP server. If set, it should not be empty string.',
            ),
            'port': $Schema.number(
              description:
                  'Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort.',
            ),
          },
          description: 'HttpGet specifies the http request to perform.',
        )
        .value,
    dependencies: [],
  );
}

base class ReadinessProbe {
  /// Creates a [ReadinessProbe] from a JSON map.
  factory ReadinessProbe.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ReadinessProbe._(this._json);

  ReadinessProbe({
    num? failureThreshold,
    num? periodSeconds,
    num? successThreshold,
    num? timeoutSeconds,
    TemplateContainersReadinessProbeGrpc? grpc,
    TemplateContainersReadinessProbeHttpGet? httpGet,
  }) {
    _json = {
      'failure_threshold': ?failureThreshold,
      'period_seconds': ?periodSeconds,
      'success_threshold': ?successThreshold,
      'timeout_seconds': ?timeoutSeconds,
      'grpc': ?grpc?.toJson(),
      'http_get': ?httpGet?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ReadinessProbe].
  static const SchemanticType<ReadinessProbe> $schema =
      _ReadinessProbeTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get failureThreshold {
    return _json['failure_threshold'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set failureThreshold(num? value) {
    if (value == null) {
      _json.remove('failure_threshold');
    } else {
      _json['failure_threshold'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get periodSeconds {
    return _json['period_seconds'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set periodSeconds(num? value) {
    if (value == null) {
      _json.remove('period_seconds');
    } else {
      _json['period_seconds'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get successThreshold {
    return _json['success_threshold'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set successThreshold(num? value) {
    if (value == null) {
      _json.remove('success_threshold');
    } else {
      _json['success_threshold'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get timeoutSeconds {
    return _json['timeout_seconds'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set timeoutSeconds(num? value) {
    if (value == null) {
      _json.remove('timeout_seconds');
    } else {
      _json['timeout_seconds'] = value;
    }
  }

  TemplateContainersReadinessProbeGrpc? get grpc {
    return _json['grpc'] == null
        ? null
        : TemplateContainersReadinessProbeGrpc.fromJson(
            _json['grpc'] as Map<String, dynamic>,
          );
  }

  set grpc(TemplateContainersReadinessProbeGrpc? value) {
    if (value == null) {
      _json.remove('grpc');
    } else {
      _json['grpc'] = value;
    }
  }

  TemplateContainersReadinessProbeHttpGet? get httpGet {
    return _json['http_get'] == null
        ? null
        : TemplateContainersReadinessProbeHttpGet.fromJson(
            _json['http_get'] as Map<String, dynamic>,
          );
  }

  set httpGet(TemplateContainersReadinessProbeHttpGet? value) {
    if (value == null) {
      _json.remove('http_get');
    } else {
      _json['http_get'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ReadinessProbe] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ReadinessProbeTypeFactory extends SchemanticType<ReadinessProbe> {
  const _ReadinessProbeTypeFactory();

  @override
  ReadinessProbe parse(Object? json) {
    return ReadinessProbe._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ReadinessProbe',
    definition: $Schema
        .object(
          properties: {
            'failure_threshold': $Schema.number(
              description:
                  'Minimum consecutive failures for the probe to be considered failed after\nhaving succeeded. Defaults to 3.',
            ),
            'period_seconds': $Schema.number(
              description:
                  'How often (in seconds) to perform the probe.\nDefault to 10 seconds.',
            ),
            'success_threshold': $Schema.number(
              description:
                  'Minimum consecutive successes for the probe to be considered successful after having failed.\nDefaults to 2.',
            ),
            'timeout_seconds': $Schema.number(
              description:
                  'Number of seconds after which the probe times out.\nDefaults to 1 second. Must be smaller than period_seconds.',
            ),
            'grpc': $Schema.fromMap({
              '\$ref': r'#/$defs/TemplateContainersReadinessProbeGrpc',
            }),
            'http_get': $Schema.fromMap({
              '\$ref': r'#/$defs/TemplateContainersReadinessProbeHttpGet',
            }),
          },
          description: 'Periodic probe of container readiness.',
        )
        .value,
    dependencies: [
      TemplateContainersReadinessProbeGrpc.$schema,
      TemplateContainersReadinessProbeHttpGet.$schema,
    ],
  );
}

base class Resources {
  /// Creates a [Resources] from a JSON map.
  factory Resources.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Resources._(this._json);

  Resources({
    bool? cpuIdle,
    Map<String, String>? limits,
    bool? startupCpuBoost,
  }) {
    _json = {
      'cpu_idle': ?cpuIdle,
      'limits': ?limits,
      'startup_cpu_boost': ?startupCpuBoost,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Resources].
  static const SchemanticType<Resources> $schema = _ResourcesTypeFactory();

  bool? get cpuIdle {
    return _json['cpu_idle'] as bool?;
  }

  set cpuIdle(bool? value) {
    if (value == null) {
      _json.remove('cpu_idle');
    } else {
      _json['cpu_idle'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  Map<String, String>? get limits {
    return (_json['limits'] as Map?)?.cast<String, String>();
  }

  /// Optional + Computed. Inferred from provider when null.
  set limits(Map<String, String>? value) {
    if (value == null) {
      _json.remove('limits');
    } else {
      _json['limits'] = value;
    }
  }

  bool? get startupCpuBoost {
    return _json['startup_cpu_boost'] as bool?;
  }

  set startupCpuBoost(bool? value) {
    if (value == null) {
      _json.remove('startup_cpu_boost');
    } else {
      _json['startup_cpu_boost'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Resources] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ResourcesTypeFactory extends SchemanticType<Resources> {
  const _ResourcesTypeFactory();

  @override
  Resources parse(Object? json) {
    return Resources._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Resources',
    definition: $Schema
        .object(
          properties: {
            'cpu_idle': $Schema.boolean(
              description:
                  'Determines whether CPU is only allocated during requests. True by default if the parent \'resources\' field is not set. However, if\n\'resources\' is set, this field must be explicitly set to true to preserve the default behavior.',
            ),
            'limits': $Schema.object(
              description:
                  'Only memory, CPU, and nvidia.com/gpu are supported. Use key \'cpu\' for CPU limit, \'memory\' for memory limit, \'nvidia.com/gpu\' for gpu limit. Note: The only supported values for CPU are \'1\', \'2\', \'4\', \'6\' and \'8\'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the \'quantity\' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go',
              additionalProperties: $Schema.string(),
            ),
            'startup_cpu_boost': $Schema.boolean(
              description:
                  'Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.',
            ),
          },
          description:
              'Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources',
        )
        .value,
    dependencies: [],
  );
}

base class TemplateContainersStartupProbeGrpc {
  /// Creates a [TemplateContainersStartupProbeGrpc] from a JSON map.
  factory TemplateContainersStartupProbeGrpc.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersStartupProbeGrpc._(this._json);

  TemplateContainersStartupProbeGrpc({num? port, String? service}) {
    _json = {'port': ?port, 'service': ?service};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersStartupProbeGrpc].
  static const SchemanticType<TemplateContainersStartupProbeGrpc> $schema =
      _TemplateContainersStartupProbeGrpcTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get port {
    return _json['port'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set port(num? value) {
    if (value == null) {
      _json.remove('port');
    } else {
      _json['port'] = value;
    }
  }

  String? get service {
    return _json['service'] as String?;
  }

  set service(String? value) {
    if (value == null) {
      _json.remove('service');
    } else {
      _json['service'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersStartupProbeGrpc] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersStartupProbeGrpcTypeFactory
    extends SchemanticType<TemplateContainersStartupProbeGrpc> {
  const _TemplateContainersStartupProbeGrpcTypeFactory();

  @override
  TemplateContainersStartupProbeGrpc parse(Object? json) {
    return TemplateContainersStartupProbeGrpc._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersStartupProbeGrpc',
    definition: $Schema
        .object(
          properties: {
            'port': $Schema.number(
              description:
                  'Port number to access on the container. Number must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort.',
            ),
            'service': $Schema.string(
              description:
                  'The name of the service to place in the gRPC HealthCheckRequest\n(see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).\nIf this is not specified, the default behavior is defined by gRPC.',
            ),
          },
          description: 'GRPC specifies an action involving a GRPC port.',
        )
        .value,
    dependencies: [],
  );
}

base class TemplateContainersStartupProbeHttpGetHttpHeaders {
  /// Creates a [TemplateContainersStartupProbeHttpGetHttpHeaders] from a JSON map.
  factory TemplateContainersStartupProbeHttpGetHttpHeaders.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersStartupProbeHttpGetHttpHeaders._(this._json);

  TemplateContainersStartupProbeHttpGetHttpHeaders({
    required String name,
    String? value,
  }) {
    _json = {'name': name, 'value': ?value};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersStartupProbeHttpGetHttpHeaders].
  static const SchemanticType<TemplateContainersStartupProbeHttpGetHttpHeaders>
  $schema = _TemplateContainersStartupProbeHttpGetHttpHeadersTypeFactory();

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get value {
    return _json['value'] as String?;
  }

  set value(String? value) {
    if (value == null) {
      _json.remove('value');
    } else {
      _json['value'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersStartupProbeHttpGetHttpHeaders] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersStartupProbeHttpGetHttpHeadersTypeFactory
    extends SchemanticType<TemplateContainersStartupProbeHttpGetHttpHeaders> {
  const _TemplateContainersStartupProbeHttpGetHttpHeadersTypeFactory();

  @override
  TemplateContainersStartupProbeHttpGetHttpHeaders parse(Object? json) {
    return TemplateContainersStartupProbeHttpGetHttpHeaders._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersStartupProbeHttpGetHttpHeaders',
    definition: $Schema
        .object(
          properties: {
            'name': $Schema.string(description: 'The header field name'),
            'value': $Schema.string(description: 'The header field value'),
          },
          required: ['name'],
          description:
              'Custom headers to set in the request. HTTP allows repeated headers.',
        )
        .value,
    dependencies: [],
  );
}

base class TemplateContainersStartupProbeHttpGet {
  /// Creates a [TemplateContainersStartupProbeHttpGet] from a JSON map.
  factory TemplateContainersStartupProbeHttpGet.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersStartupProbeHttpGet._(this._json);

  TemplateContainersStartupProbeHttpGet({
    String? path,
    num? port,
    List<TemplateContainersStartupProbeHttpGetHttpHeaders>? httpHeaders,
  }) {
    _json = {
      'path': ?path,
      'port': ?port,
      'http_headers': ?httpHeaders?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersStartupProbeHttpGet].
  static const SchemanticType<TemplateContainersStartupProbeHttpGet> $schema =
      _TemplateContainersStartupProbeHttpGetTypeFactory();

  String? get path {
    return _json['path'] as String?;
  }

  set path(String? value) {
    if (value == null) {
      _json.remove('path');
    } else {
      _json['path'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get port {
    return _json['port'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set port(num? value) {
    if (value == null) {
      _json.remove('port');
    } else {
      _json['port'] = value;
    }
  }

  List<TemplateContainersStartupProbeHttpGetHttpHeaders>? get httpHeaders {
    return (_json['http_headers'] as List?)
        ?.map(
          (e) => TemplateContainersStartupProbeHttpGetHttpHeaders.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  set httpHeaders(
    List<TemplateContainersStartupProbeHttpGetHttpHeaders>? value,
  ) {
    if (value == null) {
      _json.remove('http_headers');
    } else {
      _json['http_headers'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersStartupProbeHttpGet] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersStartupProbeHttpGetTypeFactory
    extends SchemanticType<TemplateContainersStartupProbeHttpGet> {
  const _TemplateContainersStartupProbeHttpGetTypeFactory();

  @override
  TemplateContainersStartupProbeHttpGet parse(Object? json) {
    return TemplateContainersStartupProbeHttpGet._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersStartupProbeHttpGet',
    definition: $Schema
        .object(
          properties: {
            'path': $Schema.string(
              description:
                  'Path to access on the HTTP server. Defaults to \'/\'.',
            ),
            'port': $Schema.number(
              description:
                  'Port number to access on the container. Must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort.',
            ),
            'http_headers': $Schema.list(
              items: $Schema.fromMap({
                '\$ref':
                    r'#/$defs/TemplateContainersStartupProbeHttpGetHttpHeaders',
              }),
            ),
          },
          description:
              'HTTPGet specifies the http request to perform. Exactly one of HTTPGet or TCPSocket must be specified.',
        )
        .value,
    dependencies: [TemplateContainersStartupProbeHttpGetHttpHeaders.$schema],
  );
}

base class TemplateContainersStartupProbeTcpSocket {
  /// Creates a [TemplateContainersStartupProbeTcpSocket] from a JSON map.
  factory TemplateContainersStartupProbeTcpSocket.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  TemplateContainersStartupProbeTcpSocket._(this._json);

  TemplateContainersStartupProbeTcpSocket({num? port}) {
    _json = {'port': ?port};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateContainersStartupProbeTcpSocket].
  static const SchemanticType<TemplateContainersStartupProbeTcpSocket> $schema =
      _TemplateContainersStartupProbeTcpSocketTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get port {
    return _json['port'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set port(num? value) {
    if (value == null) {
      _json.remove('port');
    } else {
      _json['port'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateContainersStartupProbeTcpSocket] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateContainersStartupProbeTcpSocketTypeFactory
    extends SchemanticType<TemplateContainersStartupProbeTcpSocket> {
  const _TemplateContainersStartupProbeTcpSocketTypeFactory();

  @override
  TemplateContainersStartupProbeTcpSocket parse(Object? json) {
    return TemplateContainersStartupProbeTcpSocket._(
      json as Map<String, dynamic>,
    );
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateContainersStartupProbeTcpSocket',
    definition: $Schema
        .object(
          properties: {
            'port': $Schema.number(
              description:
                  'Port number to access on the container. Must be in the range 1 to 65535.\nIf not specified, defaults to the same value as container.ports[0].containerPort.',
            ),
          },
          description:
              'TCPSocket specifies an action involving a TCP port. Exactly one of HTTPGet or TCPSocket must be specified.',
        )
        .value,
    dependencies: [],
  );
}

base class StartupProbe {
  /// Creates a [StartupProbe] from a JSON map.
  factory StartupProbe.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  StartupProbe._(this._json);

  StartupProbe({
    num? failureThreshold,
    num? initialDelaySeconds,
    num? periodSeconds,
    num? timeoutSeconds,
    TemplateContainersStartupProbeGrpc? grpc,
    TemplateContainersStartupProbeHttpGet? httpGet,
    TemplateContainersStartupProbeTcpSocket? tcpSocket,
  }) {
    _json = {
      'failure_threshold': ?failureThreshold,
      'initial_delay_seconds': ?initialDelaySeconds,
      'period_seconds': ?periodSeconds,
      'timeout_seconds': ?timeoutSeconds,
      'grpc': ?grpc?.toJson(),
      'http_get': ?httpGet?.toJson(),
      'tcp_socket': ?tcpSocket?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [StartupProbe].
  static const SchemanticType<StartupProbe> $schema =
      _StartupProbeTypeFactory();

  num? get failureThreshold {
    return _json['failure_threshold'] as num?;
  }

  set failureThreshold(num? value) {
    if (value == null) {
      _json.remove('failure_threshold');
    } else {
      _json['failure_threshold'] = value;
    }
  }

  num? get initialDelaySeconds {
    return _json['initial_delay_seconds'] as num?;
  }

  set initialDelaySeconds(num? value) {
    if (value == null) {
      _json.remove('initial_delay_seconds');
    } else {
      _json['initial_delay_seconds'] = value;
    }
  }

  num? get periodSeconds {
    return _json['period_seconds'] as num?;
  }

  set periodSeconds(num? value) {
    if (value == null) {
      _json.remove('period_seconds');
    } else {
      _json['period_seconds'] = value;
    }
  }

  num? get timeoutSeconds {
    return _json['timeout_seconds'] as num?;
  }

  set timeoutSeconds(num? value) {
    if (value == null) {
      _json.remove('timeout_seconds');
    } else {
      _json['timeout_seconds'] = value;
    }
  }

  TemplateContainersStartupProbeGrpc? get grpc {
    return _json['grpc'] == null
        ? null
        : TemplateContainersStartupProbeGrpc.fromJson(
            _json['grpc'] as Map<String, dynamic>,
          );
  }

  set grpc(TemplateContainersStartupProbeGrpc? value) {
    if (value == null) {
      _json.remove('grpc');
    } else {
      _json['grpc'] = value;
    }
  }

  TemplateContainersStartupProbeHttpGet? get httpGet {
    return _json['http_get'] == null
        ? null
        : TemplateContainersStartupProbeHttpGet.fromJson(
            _json['http_get'] as Map<String, dynamic>,
          );
  }

  set httpGet(TemplateContainersStartupProbeHttpGet? value) {
    if (value == null) {
      _json.remove('http_get');
    } else {
      _json['http_get'] = value;
    }
  }

  TemplateContainersStartupProbeTcpSocket? get tcpSocket {
    return _json['tcp_socket'] == null
        ? null
        : TemplateContainersStartupProbeTcpSocket.fromJson(
            _json['tcp_socket'] as Map<String, dynamic>,
          );
  }

  set tcpSocket(TemplateContainersStartupProbeTcpSocket? value) {
    if (value == null) {
      _json.remove('tcp_socket');
    } else {
      _json['tcp_socket'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [StartupProbe] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _StartupProbeTypeFactory extends SchemanticType<StartupProbe> {
  const _StartupProbeTypeFactory();

  @override
  StartupProbe parse(Object? json) {
    return StartupProbe._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'StartupProbe',
    definition: $Schema
        .object(
          properties: {
            'failure_threshold': $Schema.number(
              description:
                  'Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.',
            ),
            'initial_delay_seconds': $Schema.number(
              description:
                  'Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes',
            ),
            'period_seconds': $Schema.number(
              description:
                  'How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeoutSeconds',
            ),
            'timeout_seconds': $Schema.number(
              description:
                  'Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than periodSeconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes',
            ),
            'grpc': $Schema.fromMap({
              '\$ref': r'#/$defs/TemplateContainersStartupProbeGrpc',
            }),
            'http_get': $Schema.fromMap({
              '\$ref': r'#/$defs/TemplateContainersStartupProbeHttpGet',
            }),
            'tcp_socket': $Schema.fromMap({
              '\$ref': r'#/$defs/TemplateContainersStartupProbeTcpSocket',
            }),
          },
          description:
              'Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes',
        )
        .value,
    dependencies: [
      TemplateContainersStartupProbeGrpc.$schema,
      TemplateContainersStartupProbeHttpGet.$schema,
      TemplateContainersStartupProbeTcpSocket.$schema,
    ],
  );
}

base class VolumeMounts {
  /// Creates a [VolumeMounts] from a JSON map.
  factory VolumeMounts.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  VolumeMounts._(this._json);

  VolumeMounts({
    required String mountPath,
    required String name,
    String? subPath,
  }) {
    _json = {'mount_path': mountPath, 'name': name, 'sub_path': ?subPath};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [VolumeMounts].
  static const SchemanticType<VolumeMounts> $schema =
      _VolumeMountsTypeFactory();

  String get mountPath {
    return _json['mount_path'] as String;
  }

  set mountPath(String value) {
    _json['mount_path'] = value;
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String? get subPath {
    return _json['sub_path'] as String?;
  }

  set subPath(String? value) {
    if (value == null) {
      _json.remove('sub_path');
    } else {
      _json['sub_path'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [VolumeMounts] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _VolumeMountsTypeFactory extends SchemanticType<VolumeMounts> {
  const _VolumeMountsTypeFactory();

  @override
  VolumeMounts parse(Object? json) {
    return VolumeMounts._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'VolumeMounts',
    definition: $Schema
        .object(
          properties: {
            'mount_path': $Schema.string(
              description:
                  'Path within the container at which the volume should be mounted. Must not contain \':\'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run',
            ),
            'name': $Schema.string(
              description: 'This must match the Name of a Volume.',
            ),
            'sub_path': $Schema.string(
              description:
                  'Path within the volume from which the container\'s volume should be mounted.',
            ),
          },
          required: ['mount_path', 'name'],
          description: 'Volume to mount into the container\'s filesystem.',
        )
        .value,
    dependencies: [],
  );
}

base class Containers {
  /// Creates a [Containers] from a JSON map.
  factory Containers.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Containers._(this._json);

  Containers({
    List<String>? args,
    String? baseImageUri,
    List<String>? command,
    List<String>? dependsOn,
    required String image,
    String? name,
    String? workingDir,
    List<Env>? env,
    LivenessProbe? livenessProbe,
    Ports? ports,
    ReadinessProbe? readinessProbe,
    Resources? resources,
    StartupProbe? startupProbe,
    List<VolumeMounts>? volumeMounts,
  }) {
    _json = {
      'args': ?args,
      'base_image_uri': ?baseImageUri,
      'command': ?command,
      'depends_on': ?dependsOn,
      'image': image,
      'name': ?name,
      'working_dir': ?workingDir,
      'env': ?env?.map((e) => e.toJson()).toList(),
      'liveness_probe': ?livenessProbe?.toJson(),
      'ports': ?ports?.toJson(),
      'readiness_probe': ?readinessProbe?.toJson(),
      'resources': ?resources?.toJson(),
      'startup_probe': ?startupProbe?.toJson(),
      'volume_mounts': ?volumeMounts?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Containers].
  static const SchemanticType<Containers> $schema = _ContainersTypeFactory();

  List<String>? get args {
    return (_json['args'] as List?)?.cast<String>();
  }

  set args(List<String>? value) {
    if (value == null) {
      _json.remove('args');
    } else {
      _json['args'] = value;
    }
  }

  String? get baseImageUri {
    return _json['base_image_uri'] as String?;
  }

  set baseImageUri(String? value) {
    if (value == null) {
      _json.remove('base_image_uri');
    } else {
      _json['base_image_uri'] = value;
    }
  }

  List<String>? get command {
    return (_json['command'] as List?)?.cast<String>();
  }

  set command(List<String>? value) {
    if (value == null) {
      _json.remove('command');
    } else {
      _json['command'] = value;
    }
  }

  List<String>? get dependsOn {
    return (_json['depends_on'] as List?)?.cast<String>();
  }

  set dependsOn(List<String>? value) {
    if (value == null) {
      _json.remove('depends_on');
    } else {
      _json['depends_on'] = value;
    }
  }

  String get image {
    return _json['image'] as String;
  }

  set image(String value) {
    _json['image'] = value;
  }

  String? get name {
    return _json['name'] as String?;
  }

  set name(String? value) {
    if (value == null) {
      _json.remove('name');
    } else {
      _json['name'] = value;
    }
  }

  String? get workingDir {
    return _json['working_dir'] as String?;
  }

  set workingDir(String? value) {
    if (value == null) {
      _json.remove('working_dir');
    } else {
      _json['working_dir'] = value;
    }
  }

  List<Env>? get env {
    return (_json['env'] as List?)
        ?.map((e) => Env.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set env(List<Env>? value) {
    if (value == null) {
      _json.remove('env');
    } else {
      _json['env'] = value.toList();
    }
  }

  LivenessProbe? get livenessProbe {
    return _json['liveness_probe'] == null
        ? null
        : LivenessProbe.fromJson(
            _json['liveness_probe'] as Map<String, dynamic>,
          );
  }

  set livenessProbe(LivenessProbe? value) {
    if (value == null) {
      _json.remove('liveness_probe');
    } else {
      _json['liveness_probe'] = value;
    }
  }

  Ports? get ports {
    return _json['ports'] == null
        ? null
        : Ports.fromJson(_json['ports'] as Map<String, dynamic>);
  }

  set ports(Ports? value) {
    if (value == null) {
      _json.remove('ports');
    } else {
      _json['ports'] = value;
    }
  }

  ReadinessProbe? get readinessProbe {
    return _json['readiness_probe'] == null
        ? null
        : ReadinessProbe.fromJson(
            _json['readiness_probe'] as Map<String, dynamic>,
          );
  }

  set readinessProbe(ReadinessProbe? value) {
    if (value == null) {
      _json.remove('readiness_probe');
    } else {
      _json['readiness_probe'] = value;
    }
  }

  Resources? get resources {
    return _json['resources'] == null
        ? null
        : Resources.fromJson(_json['resources'] as Map<String, dynamic>);
  }

  set resources(Resources? value) {
    if (value == null) {
      _json.remove('resources');
    } else {
      _json['resources'] = value;
    }
  }

  StartupProbe? get startupProbe {
    return _json['startup_probe'] == null
        ? null
        : StartupProbe.fromJson(_json['startup_probe'] as Map<String, dynamic>);
  }

  set startupProbe(StartupProbe? value) {
    if (value == null) {
      _json.remove('startup_probe');
    } else {
      _json['startup_probe'] = value;
    }
  }

  List<VolumeMounts>? get volumeMounts {
    return (_json['volume_mounts'] as List?)
        ?.map((e) => VolumeMounts.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set volumeMounts(List<VolumeMounts>? value) {
    if (value == null) {
      _json.remove('volume_mounts');
    } else {
      _json['volume_mounts'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Containers] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ContainersTypeFactory extends SchemanticType<Containers> {
  const _ContainersTypeFactory();

  @override
  Containers parse(Object? json) {
    return Containers._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Containers',
    definition: $Schema
        .object(
          properties: {
            'args': $Schema.list(
              description:
                  'Arguments to the entrypoint. The docker image\'s CMD is used if this is not provided. Variable references are not supported in Cloud Run.',
              items: $Schema.string(),
            ),
            'base_image_uri': $Schema.string(
              description:
                  'Base image for this container. If set, it indicates that the service is enrolled into automatic base image update.',
            ),
            'command': $Schema.list(
              description:
                  'Entrypoint array. Not executed within a shell. The docker image\'s ENTRYPOINT is used if this is not provided. Variable references ＄(VAR_NAME) are expanded using the container\'s environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The ＄(VAR_NAME) syntax can be escaped with a double ＄＄, ie: ＄＄(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell',
              items: $Schema.string(),
            ),
            'depends_on': $Schema.list(
              description:
                  'Containers which should be started before this container. If specified the container will wait to start until all containers with the listed names are healthy.',
              items: $Schema.string(),
            ),
            'image': $Schema.string(
              description:
                  'URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images',
            ),
            'name': $Schema.string(
              description: 'Name of the container specified as a DNS_LABEL.',
            ),
            'working_dir': $Schema.string(
              description:
                  'Container\'s working directory. If not specified, the container runtime\'s default will be used, which might be configured in the container image.',
            ),
            'env': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Env'}),
            ),
            'liveness_probe': $Schema.fromMap({
              '\$ref': r'#/$defs/LivenessProbe',
            }),
            'ports': $Schema.fromMap({'\$ref': r'#/$defs/Ports'}),
            'readiness_probe': $Schema.fromMap({
              '\$ref': r'#/$defs/ReadinessProbe',
            }),
            'resources': $Schema.fromMap({'\$ref': r'#/$defs/Resources'}),
            'startup_probe': $Schema.fromMap({
              '\$ref': r'#/$defs/StartupProbe',
            }),
            'volume_mounts': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/VolumeMounts'}),
            ),
          },
          required: ['image'],
          description:
              'Holds the containers that define the unit of execution for this Service.',
        )
        .value,
    dependencies: [
      Env.$schema,
      LivenessProbe.$schema,
      Ports.$schema,
      ReadinessProbe.$schema,
      Resources.$schema,
      StartupProbe.$schema,
      VolumeMounts.$schema,
    ],
  );
}

base class NodeSelector {
  /// Creates a [NodeSelector] from a JSON map.
  factory NodeSelector.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  NodeSelector._(this._json);

  NodeSelector({required String accelerator}) {
    _json = {'accelerator': accelerator};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [NodeSelector].
  static const SchemanticType<NodeSelector> $schema =
      _NodeSelectorTypeFactory();

  String get accelerator {
    return _json['accelerator'] as String;
  }

  set accelerator(String value) {
    _json['accelerator'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [NodeSelector] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NodeSelectorTypeFactory extends SchemanticType<NodeSelector> {
  const _NodeSelectorTypeFactory();

  @override
  NodeSelector parse(Object? json) {
    return NodeSelector._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'NodeSelector',
    definition: $Schema
        .object(
          properties: {
            'accelerator': $Schema.string(
              description:
                  'The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.',
            ),
          },
          required: ['accelerator'],
          description:
              'Node Selector describes the hardware requirements of the resources.',
        )
        .value,
    dependencies: [],
  );
}

base class TemplateScaling {
  /// Creates a [TemplateScaling] from a JSON map.
  factory TemplateScaling.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  TemplateScaling._(this._json);

  TemplateScaling({num? maxInstanceCount, num? minInstanceCount}) {
    _json = {
      'max_instance_count': ?maxInstanceCount,
      'min_instance_count': ?minInstanceCount,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [TemplateScaling].
  static const SchemanticType<TemplateScaling> $schema =
      _TemplateScalingTypeFactory();

  num? get maxInstanceCount {
    return _json['max_instance_count'] as num?;
  }

  set maxInstanceCount(num? value) {
    if (value == null) {
      _json.remove('max_instance_count');
    } else {
      _json['max_instance_count'] = value;
    }
  }

  num? get minInstanceCount {
    return _json['min_instance_count'] as num?;
  }

  set minInstanceCount(num? value) {
    if (value == null) {
      _json.remove('min_instance_count');
    } else {
      _json['min_instance_count'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [TemplateScaling] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateScalingTypeFactory extends SchemanticType<TemplateScaling> {
  const _TemplateScalingTypeFactory();

  @override
  TemplateScaling parse(Object? json) {
    return TemplateScaling._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TemplateScaling',
    definition: $Schema
        .object(
          properties: {
            'max_instance_count': $Schema.number(
              description:
                  'Maximum number of serving instances that this resource should have. Must not be less than minimum instance count. If absent, Cloud Run will calculate\na default value based on the project\'s available container instances quota in the region and specified instance size.',
            ),
            'min_instance_count': $Schema.number(
              description:
                  'Minimum number of serving instances that this resource should have. Defaults to 0. Must not be greater than maximum instance count.',
            ),
          },
          description: 'Scaling settings for this Revision.',
        )
        .value,
    dependencies: [],
  );
}

base class CloudSqlInstance {
  /// Creates a [CloudSqlInstance] from a JSON map.
  factory CloudSqlInstance.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  CloudSqlInstance._(this._json);

  CloudSqlInstance({List<String>? instances}) {
    _json = {'instances': ?instances};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [CloudSqlInstance].
  static const SchemanticType<CloudSqlInstance> $schema =
      _CloudSqlInstanceTypeFactory();

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get instances {
    return (_json['instances'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set instances(List<String>? value) {
    if (value == null) {
      _json.remove('instances');
    } else {
      _json['instances'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [CloudSqlInstance] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _CloudSqlInstanceTypeFactory
    extends SchemanticType<CloudSqlInstance> {
  const _CloudSqlInstanceTypeFactory();

  @override
  CloudSqlInstance parse(Object? json) {
    return CloudSqlInstance._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'CloudSqlInstance',
    definition: $Schema
        .object(
          properties: {
            'instances': $Schema.list(
              description:
                  'The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}',
              items: $Schema.string(),
            ),
          },
          description:
              'For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.',
        )
        .value,
    dependencies: [],
  );
}

base class EmptyDir {
  /// Creates a [EmptyDir] from a JSON map.
  factory EmptyDir.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  EmptyDir._(this._json);

  EmptyDir({String? medium, String? sizeLimit}) {
    _json = {'medium': ?medium, 'size_limit': ?sizeLimit};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [EmptyDir].
  static const SchemanticType<EmptyDir> $schema = _EmptyDirTypeFactory();

  String? get medium {
    return _json['medium'] as String?;
  }

  set medium(String? value) {
    if (value == null) {
      _json.remove('medium');
    } else {
      _json['medium'] = value;
    }
  }

  String? get sizeLimit {
    return _json['size_limit'] as String?;
  }

  set sizeLimit(String? value) {
    if (value == null) {
      _json.remove('size_limit');
    } else {
      _json['size_limit'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [EmptyDir] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _EmptyDirTypeFactory extends SchemanticType<EmptyDir> {
  const _EmptyDirTypeFactory();

  @override
  EmptyDir parse(Object? json) {
    return EmptyDir._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'EmptyDir',
    definition: $Schema
        .object(
          properties: {
            'medium': $Schema.string(
              description:
                  'The different types of medium supported for EmptyDir. Default value: "MEMORY" Possible values: ["MEMORY", "DISK"]',
            ),
            'size_limit': $Schema.string(
              description:
                  'Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field\'s values are of the \'Quantity\' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.',
            ),
          },
          description: 'Ephemeral storage used as a shared volume.',
        )
        .value,
    dependencies: [],
  );
}

base class Gcs {
  /// Creates a [Gcs] from a JSON map.
  factory Gcs.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Gcs._(this._json);

  Gcs({required String bucket, List<String>? mountOptions, bool? readOnly}) {
    _json = {
      'bucket': bucket,
      'mount_options': ?mountOptions,
      'read_only': ?readOnly,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Gcs].
  static const SchemanticType<Gcs> $schema = _GcsTypeFactory();

  String get bucket {
    return _json['bucket'] as String;
  }

  set bucket(String value) {
    _json['bucket'] = value;
  }

  List<String>? get mountOptions {
    return (_json['mount_options'] as List?)?.cast<String>();
  }

  set mountOptions(List<String>? value) {
    if (value == null) {
      _json.remove('mount_options');
    } else {
      _json['mount_options'] = value;
    }
  }

  bool? get readOnly {
    return _json['read_only'] as bool?;
  }

  set readOnly(bool? value) {
    if (value == null) {
      _json.remove('read_only');
    } else {
      _json['read_only'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Gcs] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GcsTypeFactory extends SchemanticType<Gcs> {
  const _GcsTypeFactory();

  @override
  Gcs parse(Object? json) {
    return Gcs._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Gcs',
    definition: $Schema
        .object(
          properties: {
            'bucket': $Schema.string(description: 'GCS Bucket name'),
            'mount_options': $Schema.list(
              description:
                  'A list of flags to pass to the gcsfuse command for configuring this volume.\nFlags should be passed without leading dashes.',
              items: $Schema.string(),
            ),
            'read_only': $Schema.boolean(
              description: 'If true, mount the GCS bucket as read-only',
            ),
          },
          required: ['bucket'],
          description:
              'Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.',
        )
        .value,
    dependencies: [],
  );
}

base class Nfs {
  /// Creates a [Nfs] from a JSON map.
  factory Nfs.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Nfs._(this._json);

  Nfs({required String path, bool? readOnly, required String server}) {
    _json = {'path': path, 'read_only': ?readOnly, 'server': server};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Nfs].
  static const SchemanticType<Nfs> $schema = _NfsTypeFactory();

  String get path {
    return _json['path'] as String;
  }

  set path(String value) {
    _json['path'] = value;
  }

  bool? get readOnly {
    return _json['read_only'] as bool?;
  }

  set readOnly(bool? value) {
    if (value == null) {
      _json.remove('read_only');
    } else {
      _json['read_only'] = value;
    }
  }

  String get server {
    return _json['server'] as String;
  }

  set server(String value) {
    _json['server'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Nfs] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NfsTypeFactory extends SchemanticType<Nfs> {
  const _NfsTypeFactory();

  @override
  Nfs parse(Object? json) {
    return Nfs._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Nfs',
    definition: $Schema
        .object(
          properties: {
            'path': $Schema.string(
              description: 'Path that is exported by the NFS server.',
            ),
            'read_only': $Schema.boolean(
              description: 'If true, mount the NFS volume as read only',
            ),
            'server': $Schema.string(
              description: 'Hostname or IP address of the NFS server',
            ),
          },
          required: ['path', 'server'],
          description: 'Represents an NFS mount.',
        )
        .value,
    dependencies: [],
  );
}

base class Items {
  /// Creates a [Items] from a JSON map.
  factory Items.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Items._(this._json);

  Items({num? mode, required String path, String? version}) {
    _json = {'mode': ?mode, 'path': path, 'version': ?version};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Items].
  static const SchemanticType<Items> $schema = _ItemsTypeFactory();

  num? get mode {
    return _json['mode'] as num?;
  }

  set mode(num? value) {
    if (value == null) {
      _json.remove('mode');
    } else {
      _json['mode'] = value;
    }
  }

  String get path {
    return _json['path'] as String;
  }

  set path(String value) {
    _json['path'] = value;
  }

  String? get version {
    return _json['version'] as String?;
  }

  set version(String? value) {
    if (value == null) {
      _json.remove('version');
    } else {
      _json['version'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Items] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ItemsTypeFactory extends SchemanticType<Items> {
  const _ItemsTypeFactory();

  @override
  Items parse(Object? json) {
    return Items._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Items',
    definition: $Schema
        .object(
          properties: {
            'mode': $Schema.number(
              description:
                  'Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume\'s default mode will be used.',
            ),
            'path': $Schema.string(
              description: 'The relative path of the secret in the container.',
            ),
            'version': $Schema.string(
              description:
                  'The Cloud Secret Manager secret version. Can be \'latest\' for the latest value or an integer for a specific version',
            ),
          },
          required: ['path'],
          description:
              'If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.',
        )
        .value,
    dependencies: [],
  );
}

base class Secret {
  /// Creates a [Secret] from a JSON map.
  factory Secret.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Secret._(this._json);

  Secret({num? defaultMode, required String secret, List<Items>? items}) {
    _json = {
      'default_mode': ?defaultMode,
      'secret': secret,
      'items': ?items?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Secret].
  static const SchemanticType<Secret> $schema = _SecretTypeFactory();

  num? get defaultMode {
    return _json['default_mode'] as num?;
  }

  set defaultMode(num? value) {
    if (value == null) {
      _json.remove('default_mode');
    } else {
      _json['default_mode'] = value;
    }
  }

  String get secret {
    return _json['secret'] as String;
  }

  set secret(String value) {
    _json['secret'] = value;
  }

  List<Items>? get items {
    return (_json['items'] as List?)
        ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set items(List<Items>? value) {
    if (value == null) {
      _json.remove('items');
    } else {
      _json['items'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Secret] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SecretTypeFactory extends SchemanticType<Secret> {
  const _SecretTypeFactory();

  @override
  Secret parse(Object? json) {
    return Secret._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Secret',
    definition: $Schema
        .object(
          properties: {
            'default_mode': $Schema.number(
              description:
                  'Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting.',
            ),
            'secret': $Schema.string(
              description:
                  'The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.',
            ),
            'items': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Items'}),
            ),
          },
          required: ['secret'],
          description:
              'Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret',
        )
        .value,
    dependencies: [Items.$schema],
  );
}

base class Volumes {
  /// Creates a [Volumes] from a JSON map.
  factory Volumes.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Volumes._(this._json);

  Volumes({
    required String name,
    CloudSqlInstance? cloudSqlInstance,
    EmptyDir? emptyDir,
    Gcs? gcs,
    Nfs? nfs,
    Secret? secret,
  }) {
    _json = {
      'name': name,
      'cloud_sql_instance': ?cloudSqlInstance?.toJson(),
      'empty_dir': ?emptyDir?.toJson(),
      'gcs': ?gcs?.toJson(),
      'nfs': ?nfs?.toJson(),
      'secret': ?secret?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Volumes].
  static const SchemanticType<Volumes> $schema = _VolumesTypeFactory();

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  CloudSqlInstance? get cloudSqlInstance {
    return _json['cloud_sql_instance'] == null
        ? null
        : CloudSqlInstance.fromJson(
            _json['cloud_sql_instance'] as Map<String, dynamic>,
          );
  }

  set cloudSqlInstance(CloudSqlInstance? value) {
    if (value == null) {
      _json.remove('cloud_sql_instance');
    } else {
      _json['cloud_sql_instance'] = value;
    }
  }

  EmptyDir? get emptyDir {
    return _json['empty_dir'] == null
        ? null
        : EmptyDir.fromJson(_json['empty_dir'] as Map<String, dynamic>);
  }

  set emptyDir(EmptyDir? value) {
    if (value == null) {
      _json.remove('empty_dir');
    } else {
      _json['empty_dir'] = value;
    }
  }

  Gcs? get gcs {
    return _json['gcs'] == null
        ? null
        : Gcs.fromJson(_json['gcs'] as Map<String, dynamic>);
  }

  set gcs(Gcs? value) {
    if (value == null) {
      _json.remove('gcs');
    } else {
      _json['gcs'] = value;
    }
  }

  Nfs? get nfs {
    return _json['nfs'] == null
        ? null
        : Nfs.fromJson(_json['nfs'] as Map<String, dynamic>);
  }

  set nfs(Nfs? value) {
    if (value == null) {
      _json.remove('nfs');
    } else {
      _json['nfs'] = value;
    }
  }

  Secret? get secret {
    return _json['secret'] == null
        ? null
        : Secret.fromJson(_json['secret'] as Map<String, dynamic>);
  }

  set secret(Secret? value) {
    if (value == null) {
      _json.remove('secret');
    } else {
      _json['secret'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Volumes] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _VolumesTypeFactory extends SchemanticType<Volumes> {
  const _VolumesTypeFactory();

  @override
  Volumes parse(Object? json) {
    return Volumes._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Volumes',
    definition: $Schema
        .object(
          properties: {
            'name': $Schema.string(description: 'Volume\'s name.'),
            'cloud_sql_instance': $Schema.fromMap({
              '\$ref': r'#/$defs/CloudSqlInstance',
            }),
            'empty_dir': $Schema.fromMap({'\$ref': r'#/$defs/EmptyDir'}),
            'gcs': $Schema.fromMap({'\$ref': r'#/$defs/Gcs'}),
            'nfs': $Schema.fromMap({'\$ref': r'#/$defs/Nfs'}),
            'secret': $Schema.fromMap({'\$ref': r'#/$defs/Secret'}),
          },
          required: ['name'],
          description: 'A list of Volumes to make available to containers.',
        )
        .value,
    dependencies: [
      CloudSqlInstance.$schema,
      EmptyDir.$schema,
      Gcs.$schema,
      Nfs.$schema,
      Secret.$schema,
    ],
  );
}

base class NetworkInterfaces {
  /// Creates a [NetworkInterfaces] from a JSON map.
  factory NetworkInterfaces.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  NetworkInterfaces._(this._json);

  NetworkInterfaces({String? network, String? subnetwork, List<String>? tags}) {
    _json = {'network': ?network, 'subnetwork': ?subnetwork, 'tags': ?tags};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [NetworkInterfaces].
  static const SchemanticType<NetworkInterfaces> $schema =
      _NetworkInterfacesTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get network {
    return _json['network'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set network(String? value) {
    if (value == null) {
      _json.remove('network');
    } else {
      _json['network'] = value;
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

  List<String>? get tags {
    return (_json['tags'] as List?)?.cast<String>();
  }

  set tags(List<String>? value) {
    if (value == null) {
      _json.remove('tags');
    } else {
      _json['tags'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [NetworkInterfaces] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NetworkInterfacesTypeFactory
    extends SchemanticType<NetworkInterfaces> {
  const _NetworkInterfacesTypeFactory();

  @override
  NetworkInterfaces parse(Object? json) {
    return NetworkInterfaces._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'NetworkInterfaces',
    definition: $Schema
        .object(
          properties: {
            'network': $Schema.string(
              description:
                  'The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both\nnetwork and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be\nlooked up from the subnetwork.',
            ),
            'subnetwork': $Schema.string(
              description:
                  'The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both\nnetwork and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the\nsubnetwork with the same name with the network will be used.',
            ),
            'tags': $Schema.list(
              description: 'Network tags applied to this Cloud Run service.',
              items: $Schema.string(),
            ),
          },
          description:
              'Direct VPC egress settings. Currently only single network interface is supported.',
        )
        .value,
    dependencies: [],
  );
}

base class VpcAccess {
  /// Creates a [VpcAccess] from a JSON map.
  factory VpcAccess.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  VpcAccess._(this._json);

  VpcAccess({
    String? connector,
    String? egress,
    List<NetworkInterfaces>? networkInterfaces,
  }) {
    _json = {
      'connector': ?connector,
      'egress': ?egress,
      'network_interfaces': ?networkInterfaces?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [VpcAccess].
  static const SchemanticType<VpcAccess> $schema = _VpcAccessTypeFactory();

  String? get connector {
    return _json['connector'] as String?;
  }

  set connector(String? value) {
    if (value == null) {
      _json.remove('connector');
    } else {
      _json['connector'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get egress {
    return _json['egress'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set egress(String? value) {
    if (value == null) {
      _json.remove('egress');
    } else {
      _json['egress'] = value;
    }
  }

  List<NetworkInterfaces>? get networkInterfaces {
    return (_json['network_interfaces'] as List?)
        ?.map((e) => NetworkInterfaces.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set networkInterfaces(List<NetworkInterfaces>? value) {
    if (value == null) {
      _json.remove('network_interfaces');
    } else {
      _json['network_interfaces'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [VpcAccess] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _VpcAccessTypeFactory extends SchemanticType<VpcAccess> {
  const _VpcAccessTypeFactory();

  @override
  VpcAccess parse(Object? json) {
    return VpcAccess._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'VpcAccess',
    definition: $Schema
        .object(
          properties: {
            'connector': $Schema.string(
              description:
                  'VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.',
            ),
            'egress': $Schema.string(
              description:
                  'Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC", "PRIVATE_RANGES_ONLY"]',
            ),
            'network_interfaces': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/NetworkInterfaces'}),
            ),
          },
          description:
              'VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.',
        )
        .value,
    dependencies: [NetworkInterfaces.$schema],
  );
}

base class Template {
  /// Creates a [Template] from a JSON map.
  factory Template.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Template._(this._json);

  Template({
    Map<String, String>? annotations,
    String? encryptionKey,
    String? executionEnvironment,
    bool? gpuZonalRedundancyDisabled,
    bool? healthCheckDisabled,
    Map<String, String>? labels,
    num? maxInstanceRequestConcurrency,
    String? revision,
    String? serviceAccount,
    bool? sessionAffinity,
    String? timeout,
    List<Containers>? containers,
    NodeSelector? nodeSelector,
    TemplateScaling? scaling,
    List<Volumes>? volumes,
    VpcAccess? vpcAccess,
  }) {
    _json = {
      'annotations': ?annotations,
      'encryption_key': ?encryptionKey,
      'execution_environment': ?executionEnvironment,
      'gpu_zonal_redundancy_disabled': ?gpuZonalRedundancyDisabled,
      'health_check_disabled': ?healthCheckDisabled,
      'labels': ?labels,
      'max_instance_request_concurrency': ?maxInstanceRequestConcurrency,
      'revision': ?revision,
      'service_account': ?serviceAccount,
      'session_affinity': ?sessionAffinity,
      'timeout': ?timeout,
      'containers': ?containers?.map((e) => e.toJson()).toList(),
      'node_selector': ?nodeSelector?.toJson(),
      'scaling': ?scaling?.toJson(),
      'volumes': ?volumes?.map((e) => e.toJson()).toList(),
      'vpc_access': ?vpcAccess?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Template].
  static const SchemanticType<Template> $schema = _TemplateTypeFactory();

  Map<String, String>? get annotations {
    return (_json['annotations'] as Map?)?.cast<String, String>();
  }

  set annotations(Map<String, String>? value) {
    if (value == null) {
      _json.remove('annotations');
    } else {
      _json['annotations'] = value;
    }
  }

  String? get encryptionKey {
    return _json['encryption_key'] as String?;
  }

  set encryptionKey(String? value) {
    if (value == null) {
      _json.remove('encryption_key');
    } else {
      _json['encryption_key'] = value;
    }
  }

  String? get executionEnvironment {
    return _json['execution_environment'] as String?;
  }

  set executionEnvironment(String? value) {
    if (value == null) {
      _json.remove('execution_environment');
    } else {
      _json['execution_environment'] = value;
    }
  }

  bool? get gpuZonalRedundancyDisabled {
    return _json['gpu_zonal_redundancy_disabled'] as bool?;
  }

  set gpuZonalRedundancyDisabled(bool? value) {
    if (value == null) {
      _json.remove('gpu_zonal_redundancy_disabled');
    } else {
      _json['gpu_zonal_redundancy_disabled'] = value;
    }
  }

  bool? get healthCheckDisabled {
    return _json['health_check_disabled'] as bool?;
  }

  set healthCheckDisabled(bool? value) {
    if (value == null) {
      _json.remove('health_check_disabled');
    } else {
      _json['health_check_disabled'] = value;
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

  /// Optional + Computed. Inferred from provider when null.
  num? get maxInstanceRequestConcurrency {
    return _json['max_instance_request_concurrency'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set maxInstanceRequestConcurrency(num? value) {
    if (value == null) {
      _json.remove('max_instance_request_concurrency');
    } else {
      _json['max_instance_request_concurrency'] = value;
    }
  }

  String? get revision {
    return _json['revision'] as String?;
  }

  set revision(String? value) {
    if (value == null) {
      _json.remove('revision');
    } else {
      _json['revision'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get serviceAccount {
    return _json['service_account'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set serviceAccount(String? value) {
    if (value == null) {
      _json.remove('service_account');
    } else {
      _json['service_account'] = value;
    }
  }

  bool? get sessionAffinity {
    return _json['session_affinity'] as bool?;
  }

  set sessionAffinity(bool? value) {
    if (value == null) {
      _json.remove('session_affinity');
    } else {
      _json['session_affinity'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get timeout {
    return _json['timeout'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set timeout(String? value) {
    if (value == null) {
      _json.remove('timeout');
    } else {
      _json['timeout'] = value;
    }
  }

  List<Containers>? get containers {
    return (_json['containers'] as List?)
        ?.map((e) => Containers.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set containers(List<Containers>? value) {
    if (value == null) {
      _json.remove('containers');
    } else {
      _json['containers'] = value.toList();
    }
  }

  NodeSelector? get nodeSelector {
    return _json['node_selector'] == null
        ? null
        : NodeSelector.fromJson(_json['node_selector'] as Map<String, dynamic>);
  }

  set nodeSelector(NodeSelector? value) {
    if (value == null) {
      _json.remove('node_selector');
    } else {
      _json['node_selector'] = value;
    }
  }

  TemplateScaling? get scaling {
    return _json['scaling'] == null
        ? null
        : TemplateScaling.fromJson(_json['scaling'] as Map<String, dynamic>);
  }

  set scaling(TemplateScaling? value) {
    if (value == null) {
      _json.remove('scaling');
    } else {
      _json['scaling'] = value;
    }
  }

  List<Volumes>? get volumes {
    return (_json['volumes'] as List?)
        ?.map((e) => Volumes.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set volumes(List<Volumes>? value) {
    if (value == null) {
      _json.remove('volumes');
    } else {
      _json['volumes'] = value.toList();
    }
  }

  VpcAccess? get vpcAccess {
    return _json['vpc_access'] == null
        ? null
        : VpcAccess.fromJson(_json['vpc_access'] as Map<String, dynamic>);
  }

  set vpcAccess(VpcAccess? value) {
    if (value == null) {
      _json.remove('vpc_access');
    } else {
      _json['vpc_access'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Template] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TemplateTypeFactory extends SchemanticType<Template> {
  const _TemplateTypeFactory();

  @override
  Template parse(Object? json) {
    return Template._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Template',
    definition: $Schema
        .object(
          properties: {
            'annotations': $Schema.object(
              description:
                  'Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.\n\nCloud Run API v2 does not support annotations with \'run.googleapis.com\', \'cloud.googleapis.com\', \'serving.knative.dev\', or \'autoscaling.knative.dev\' namespaces, and they will be rejected.\nAll system annotations in v1 now have a corresponding field in v2 RevisionTemplate.\n\nThis field follows Kubernetes annotations\' namespacing, limits, and rules.',
              additionalProperties: $Schema.string(),
            ),
            'encryption_key': $Schema.string(
              description:
                  'A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek',
            ),
            'execution_environment': $Schema.string(
              description:
                  'The sandbox environment to host this Revision. Possible values: ["EXECUTION_ENVIRONMENT_GEN1", "EXECUTION_ENVIRONMENT_GEN2"]',
            ),
            'gpu_zonal_redundancy_disabled': $Schema.boolean(
              description:
                  'True if GPU zonal redundancy is disabled on this revision.',
            ),
            'health_check_disabled': $Schema.boolean(
              description:
                  'Disables health checking containers during deployment.',
            ),
            'labels': $Schema.object(
              description:
                  'Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.\nFor more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.\n\nCloud Run API v2 does not support labels with \'run.googleapis.com\', \'cloud.googleapis.com\', \'serving.knative.dev\', or \'autoscaling.knative.dev\' namespaces, and they will be rejected.\nAll system labels in v1 now have a corresponding field in v2 RevisionTemplate.',
              additionalProperties: $Schema.string(),
            ),
            'max_instance_request_concurrency': $Schema.number(
              description:
                  'Sets the maximum number of requests that each serving instance can receive.\nIf not specified or 0, defaults to 80 when requested CPU >= 1 and defaults to 1 when requested CPU < 1.',
            ),
            'revision': $Schema.string(
              description:
                  'The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.',
            ),
            'service_account': $Schema.string(
              description:
                  'Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project\'s default service account.',
            ),
            'session_affinity': $Schema.boolean(
              description:
                  'Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity',
            ),
            'timeout': $Schema.string(
              description:
                  'Max allowed time for an instance to respond to a request.\n\nA duration in seconds with up to nine fractional digits, ending with \'s\'. Example: "3.5s".',
            ),
            'containers': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Containers'}),
            ),
            'node_selector': $Schema.fromMap({
              '\$ref': r'#/$defs/NodeSelector',
            }),
            'scaling': $Schema.fromMap({'\$ref': r'#/$defs/TemplateScaling'}),
            'volumes': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Volumes'}),
            ),
            'vpc_access': $Schema.fromMap({'\$ref': r'#/$defs/VpcAccess'}),
          },
          description:
              'The template used to create revisions for this Service.',
        )
        .value,
    dependencies: [
      Containers.$schema,
      NodeSelector.$schema,
      TemplateScaling.$schema,
      Volumes.$schema,
      VpcAccess.$schema,
    ],
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

base class Traffic {
  /// Creates a [Traffic] from a JSON map.
  factory Traffic.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Traffic._(this._json);

  Traffic({num? percent, String? revision, String? tag, String? type}) {
    _json = {
      'percent': ?percent,
      'revision': ?revision,
      'tag': ?tag,
      'type': ?type,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Traffic].
  static const SchemanticType<Traffic> $schema = _TrafficTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  num? get percent {
    return _json['percent'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set percent(num? value) {
    if (value == null) {
      _json.remove('percent');
    } else {
      _json['percent'] = value;
    }
  }

  String? get revision {
    return _json['revision'] as String?;
  }

  set revision(String? value) {
    if (value == null) {
      _json.remove('revision');
    } else {
      _json['revision'] = value;
    }
  }

  String? get tag {
    return _json['tag'] as String?;
  }

  set tag(String? value) {
    if (value == null) {
      _json.remove('tag');
    } else {
      _json['tag'] = value;
    }
  }

  String? get type {
    return _json['type'] as String?;
  }

  set type(String? value) {
    if (value == null) {
      _json.remove('type');
    } else {
      _json['type'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Traffic] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TrafficTypeFactory extends SchemanticType<Traffic> {
  const _TrafficTypeFactory();

  @override
  Traffic parse(Object? json) {
    return Traffic._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Traffic',
    definition: $Schema
        .object(
          properties: {
            'percent': $Schema.number(
              description:
                  'Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.',
            ),
            'revision': $Schema.string(
              description:
                  'Revision to which to send this portion of traffic, if traffic allocation is by revision.',
            ),
            'tag': $Schema.string(
              description:
                  'Indicates a string to be part of the URI to exclusively reference this target.',
            ),
            'type': $Schema.string(
              description:
                  'The allocation type for this traffic target. Possible values: ["TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST", "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"]',
            ),
          },
          description:
              'Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleCloudRunV2Service {
  /// Creates a [GoogleCloudRunV2Service] from a JSON map.
  factory GoogleCloudRunV2Service.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleCloudRunV2Service._(this._json);

  GoogleCloudRunV2Service({
    Map<String, String>? annotations,
    String? client,
    String? clientVersion,
    List<String>? customAudiences,
    bool? defaultUriDisabled,
    bool? deletionProtection,
    String? description,
    bool? iapEnabled,
    String? id,
    String? ingress,
    bool? invokerIamDisabled,
    Map<String, String>? labels,
    String? launchStage,
    required String location,
    required String name,
    String? project,
    BinaryAuthorization? binaryAuthorization,
    BuildConfig? buildConfig,
    MultiRegionSettings? multiRegionSettings,
    Scaling? scaling,
    required Template template,
    Timeouts? timeouts,
    List<Traffic>? traffic,
  }) {
    _json = {
      'annotations': ?annotations,
      'client': ?client,
      'client_version': ?clientVersion,
      'custom_audiences': ?customAudiences,
      'default_uri_disabled': ?defaultUriDisabled,
      'deletion_protection': ?deletionProtection,
      'description': ?description,
      'iap_enabled': ?iapEnabled,
      'id': ?id,
      'ingress': ?ingress,
      'invoker_iam_disabled': ?invokerIamDisabled,
      'labels': ?labels,
      'launch_stage': ?launchStage,
      'location': location,
      'name': name,
      'project': ?project,
      'binary_authorization': ?binaryAuthorization?.toJson(),
      'build_config': ?buildConfig?.toJson(),
      'multi_region_settings': ?multiRegionSettings?.toJson(),
      'scaling': ?scaling?.toJson(),
      'template': template.toJson(),
      'timeouts': ?timeouts?.toJson(),
      'traffic': ?traffic?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleCloudRunV2Service].
  static const SchemanticType<GoogleCloudRunV2Service> $schema =
      _GoogleCloudRunV2ServiceTypeFactory();

  Map<String, String>? get annotations {
    return (_json['annotations'] as Map?)?.cast<String, String>();
  }

  set annotations(Map<String, String>? value) {
    if (value == null) {
      _json.remove('annotations');
    } else {
      _json['annotations'] = value;
    }
  }

  String? get client {
    return _json['client'] as String?;
  }

  set client(String? value) {
    if (value == null) {
      _json.remove('client');
    } else {
      _json['client'] = value;
    }
  }

  String? get clientVersion {
    return _json['client_version'] as String?;
  }

  set clientVersion(String? value) {
    if (value == null) {
      _json.remove('client_version');
    } else {
      _json['client_version'] = value;
    }
  }

  List<String>? get customAudiences {
    return (_json['custom_audiences'] as List?)?.cast<String>();
  }

  set customAudiences(List<String>? value) {
    if (value == null) {
      _json.remove('custom_audiences');
    } else {
      _json['custom_audiences'] = value;
    }
  }

  bool? get defaultUriDisabled {
    return _json['default_uri_disabled'] as bool?;
  }

  set defaultUriDisabled(bool? value) {
    if (value == null) {
      _json.remove('default_uri_disabled');
    } else {
      _json['default_uri_disabled'] = value;
    }
  }

  bool? get deletionProtection {
    return _json['deletion_protection'] as bool?;
  }

  set deletionProtection(bool? value) {
    if (value == null) {
      _json.remove('deletion_protection');
    } else {
      _json['deletion_protection'] = value;
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

  bool? get iapEnabled {
    return _json['iap_enabled'] as bool?;
  }

  set iapEnabled(bool? value) {
    if (value == null) {
      _json.remove('iap_enabled');
    } else {
      _json['iap_enabled'] = value;
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
  String? get ingress {
    return _json['ingress'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set ingress(String? value) {
    if (value == null) {
      _json.remove('ingress');
    } else {
      _json['ingress'] = value;
    }
  }

  bool? get invokerIamDisabled {
    return _json['invoker_iam_disabled'] as bool?;
  }

  set invokerIamDisabled(bool? value) {
    if (value == null) {
      _json.remove('invoker_iam_disabled');
    } else {
      _json['invoker_iam_disabled'] = value;
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

  /// Optional + Computed. Inferred from provider when null.
  String? get launchStage {
    return _json['launch_stage'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set launchStage(String? value) {
    if (value == null) {
      _json.remove('launch_stage');
    } else {
      _json['launch_stage'] = value;
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

  BinaryAuthorization? get binaryAuthorization {
    return _json['binary_authorization'] == null
        ? null
        : BinaryAuthorization.fromJson(
            _json['binary_authorization'] as Map<String, dynamic>,
          );
  }

  set binaryAuthorization(BinaryAuthorization? value) {
    if (value == null) {
      _json.remove('binary_authorization');
    } else {
      _json['binary_authorization'] = value;
    }
  }

  BuildConfig? get buildConfig {
    return _json['build_config'] == null
        ? null
        : BuildConfig.fromJson(_json['build_config'] as Map<String, dynamic>);
  }

  set buildConfig(BuildConfig? value) {
    if (value == null) {
      _json.remove('build_config');
    } else {
      _json['build_config'] = value;
    }
  }

  MultiRegionSettings? get multiRegionSettings {
    return _json['multi_region_settings'] == null
        ? null
        : MultiRegionSettings.fromJson(
            _json['multi_region_settings'] as Map<String, dynamic>,
          );
  }

  set multiRegionSettings(MultiRegionSettings? value) {
    if (value == null) {
      _json.remove('multi_region_settings');
    } else {
      _json['multi_region_settings'] = value;
    }
  }

  Scaling? get scaling {
    return _json['scaling'] == null
        ? null
        : Scaling.fromJson(_json['scaling'] as Map<String, dynamic>);
  }

  set scaling(Scaling? value) {
    if (value == null) {
      _json.remove('scaling');
    } else {
      _json['scaling'] = value;
    }
  }

  Template get template {
    return Template.fromJson(_json['template'] as Map<String, dynamic>);
  }

  set template(Template value) {
    _json['template'] = value;
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

  List<Traffic>? get traffic {
    return (_json['traffic'] as List?)
        ?.map((e) => Traffic.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set traffic(List<Traffic>? value) {
    if (value == null) {
      _json.remove('traffic');
    } else {
      _json['traffic'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleCloudRunV2Service] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleCloudRunV2ServiceTypeFactory
    extends SchemanticType<GoogleCloudRunV2Service> {
  const _GoogleCloudRunV2ServiceTypeFactory();

  @override
  GoogleCloudRunV2Service parse(Object? json) {
    return GoogleCloudRunV2Service._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleCloudRunV2Service',
    definition: $Schema
        .object(
          properties: {
            'annotations': $Schema.object(
              description:
                  'Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.\n\nCloud Run API v2 does not support annotations with \'run.googleapis.com\', \'cloud.googleapis.com\', \'serving.knative.dev\', or \'autoscaling.knative.dev\' namespaces, and they will be rejected in new resources.\nAll system annotations in v1 now have a corresponding field in v2 Service.\n\nThis field follows Kubernetes annotations\' namespacing, limits, and rules.\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \'effective_annotations\' for all of the annotations present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'client': $Schema.string(
              description: 'Arbitrary identifier for the API client.',
            ),
            'client_version': $Schema.string(
              description: 'Arbitrary version identifier for the API client.',
            ),
            'custom_audiences': $Schema.list(
              description:
                  'One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.\nFor more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.',
              items: $Schema.string(),
            ),
            'default_uri_disabled': $Schema.boolean(
              description:
                  'Disables public resolution of the default URI of this service.',
            ),
            'deletion_protection': $Schema.boolean(
              description:
                  'Whether Terraform will be prevented from destroying the service. Defaults to true.\nWhen a\'terraform destroy\' or \'terraform apply\' would delete the service,\nthe command will fail if this field is not set to false in Terraform state.\nWhen the field is set to true or unset in Terraform state, a \'terraform apply\'\nor \'terraform destroy\' that would delete the service will fail.\nWhen the field is set to false, deleting the service is allowed.',
            ),
            'description': $Schema.string(
              description:
                  'User-provided description of the Service. This field currently has a 512-character limit.',
            ),
            'iap_enabled': $Schema.boolean(
              description:
                  'Used to enable/disable IAP for the cloud-run service.',
            ),
            'id': $Schema.string(),
            'ingress': $Schema.string(
              description:
                  'Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active. Possible values: ["INGRESS_TRAFFIC_ALL", "INGRESS_TRAFFIC_INTERNAL_ONLY", "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"]',
            ),
            'invoker_iam_disabled': $Schema.boolean(
              description:
                  'Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.',
            ),
            'labels': $Schema.object(
              description:
                  'Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google\'s billing system, so they can be used to filter, or break down billing charges by team, component,\nenvironment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.\n\nCloud Run API v2 does not support labels with  \'run.googleapis.com\', \'cloud.googleapis.com\', \'serving.knative.dev\', or \'autoscaling.knative.dev\' namespaces, and they will be rejected.\nAll system labels in v1 now have a corresponding field in v2 Service.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'launch_stage': $Schema.string(
              description:
                  'The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.\nIf no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.\n\nFor example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output. Possible values: ["UNIMPLEMENTED", "PRELAUNCH", "EARLY_ACCESS", "ALPHA", "BETA", "GA", "DEPRECATED"]',
            ),
            'location': $Schema.string(
              description: 'The location of the cloud run service',
            ),
            'name': $Schema.string(description: 'Name of the Service.'),
            'project': $Schema.string(),
            'binary_authorization': $Schema.fromMap({
              '\$ref': r'#/$defs/BinaryAuthorization',
            }),
            'build_config': $Schema.fromMap({'\$ref': r'#/$defs/BuildConfig'}),
            'multi_region_settings': $Schema.fromMap({
              '\$ref': r'#/$defs/MultiRegionSettings',
            }),
            'scaling': $Schema.fromMap({'\$ref': r'#/$defs/Scaling'}),
            'template': $Schema.fromMap({'\$ref': r'#/$defs/Template'}),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
            'traffic': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Traffic'}),
            ),
          },
          required: ['location', 'name', 'template'],
        )
        .value,
    dependencies: [
      BinaryAuthorization.$schema,
      BuildConfig.$schema,
      MultiRegionSettings.$schema,
      Scaling.$schema,
      Template.$schema,
      Timeouts.$schema,
      Traffic.$schema,
    ],
  );
}

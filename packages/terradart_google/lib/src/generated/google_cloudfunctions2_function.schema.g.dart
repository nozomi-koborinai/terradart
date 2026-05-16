// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_cloudfunctions2_function.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class AutomaticUpdatePolicy {
  /// Creates a [AutomaticUpdatePolicy] from a JSON map.
  factory AutomaticUpdatePolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AutomaticUpdatePolicy._(this._json);

  AutomaticUpdatePolicy() {
    _json = {};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AutomaticUpdatePolicy].
  static const SchemanticType<AutomaticUpdatePolicy> $schema =
      _AutomaticUpdatePolicyTypeFactory();

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AutomaticUpdatePolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AutomaticUpdatePolicyTypeFactory
    extends SchemanticType<AutomaticUpdatePolicy> {
  const _AutomaticUpdatePolicyTypeFactory();

  @override
  AutomaticUpdatePolicy parse(Object? json) {
    return AutomaticUpdatePolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AutomaticUpdatePolicy',
    definition: $Schema
        .object(
          properties: {},
          description:
              'Security patches are applied automatically to the runtime without requiring\nthe function to be redeployed.',
        )
        .value,
    dependencies: [],
  );
}

base class OnDeployUpdatePolicy {
  /// Creates a [OnDeployUpdatePolicy] from a JSON map.
  factory OnDeployUpdatePolicy.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  OnDeployUpdatePolicy._(this._json);

  OnDeployUpdatePolicy() {
    _json = {};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [OnDeployUpdatePolicy].
  static const SchemanticType<OnDeployUpdatePolicy> $schema =
      _OnDeployUpdatePolicyTypeFactory();

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [OnDeployUpdatePolicy] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _OnDeployUpdatePolicyTypeFactory
    extends SchemanticType<OnDeployUpdatePolicy> {
  const _OnDeployUpdatePolicyTypeFactory();

  @override
  OnDeployUpdatePolicy parse(Object? json) {
    return OnDeployUpdatePolicy._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'OnDeployUpdatePolicy',
    definition: $Schema
        .object(
          properties: {},
          description:
              'Security patches are only applied when a function is redeployed.',
        )
        .value,
    dependencies: [],
  );
}

base class RepoSource {
  /// Creates a [RepoSource] from a JSON map.
  factory RepoSource.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  RepoSource._(this._json);

  RepoSource({
    String? branchName,
    String? commitSha,
    String? dir,
    bool? invertRegex,
    String? projectId,
    String? repoName,
    String? tagName,
  }) {
    _json = {
      'branch_name': ?branchName,
      'commit_sha': ?commitSha,
      'dir': ?dir,
      'invert_regex': ?invertRegex,
      'project_id': ?projectId,
      'repo_name': ?repoName,
      'tag_name': ?tagName,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [RepoSource].
  static const SchemanticType<RepoSource> $schema = _RepoSourceTypeFactory();

  String? get branchName {
    return _json['branch_name'] as String?;
  }

  set branchName(String? value) {
    if (value == null) {
      _json.remove('branch_name');
    } else {
      _json['branch_name'] = value;
    }
  }

  String? get commitSha {
    return _json['commit_sha'] as String?;
  }

  set commitSha(String? value) {
    if (value == null) {
      _json.remove('commit_sha');
    } else {
      _json['commit_sha'] = value;
    }
  }

  String? get dir {
    return _json['dir'] as String?;
  }

  set dir(String? value) {
    if (value == null) {
      _json.remove('dir');
    } else {
      _json['dir'] = value;
    }
  }

  bool? get invertRegex {
    return _json['invert_regex'] as bool?;
  }

  set invertRegex(bool? value) {
    if (value == null) {
      _json.remove('invert_regex');
    } else {
      _json['invert_regex'] = value;
    }
  }

  String? get projectId {
    return _json['project_id'] as String?;
  }

  set projectId(String? value) {
    if (value == null) {
      _json.remove('project_id');
    } else {
      _json['project_id'] = value;
    }
  }

  String? get repoName {
    return _json['repo_name'] as String?;
  }

  set repoName(String? value) {
    if (value == null) {
      _json.remove('repo_name');
    } else {
      _json['repo_name'] = value;
    }
  }

  String? get tagName {
    return _json['tag_name'] as String?;
  }

  set tagName(String? value) {
    if (value == null) {
      _json.remove('tag_name');
    } else {
      _json['tag_name'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [RepoSource] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RepoSourceTypeFactory extends SchemanticType<RepoSource> {
  const _RepoSourceTypeFactory();

  @override
  RepoSource parse(Object? json) {
    return RepoSource._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RepoSource',
    definition: $Schema
        .object(
          properties: {
            'branch_name': $Schema.string(
              description: 'Regex matching branches to build.',
            ),
            'commit_sha': $Schema.string(
              description: 'Regex matching tags to build.',
            ),
            'dir': $Schema.string(
              description:
                  'Directory, relative to the source root, in which to run the build.',
            ),
            'invert_regex': $Schema.boolean(
              description:
                  'Only trigger a build if the revision regex does\nNOT match the revision regex.',
            ),
            'project_id': $Schema.string(
              description:
                  'ID of the project that owns the Cloud Source Repository. If omitted, the\nproject ID requesting the build is assumed.',
            ),
            'repo_name': $Schema.string(
              description: 'Name of the Cloud Source Repository.',
            ),
            'tag_name': $Schema.string(
              description: 'Regex matching tags to build.',
            ),
          },
          description:
              'If provided, get the source from this location in a Cloud Source Repository.',
        )
        .value,
    dependencies: [],
  );
}

base class StorageSource {
  /// Creates a [StorageSource] from a JSON map.
  factory StorageSource.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  StorageSource._(this._json);

  StorageSource({String? bucket, num? generation, String? object}) {
    _json = {'bucket': ?bucket, 'generation': ?generation, 'object': ?object};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [StorageSource].
  static const SchemanticType<StorageSource> $schema =
      _StorageSourceTypeFactory();

  String? get bucket {
    return _json['bucket'] as String?;
  }

  set bucket(String? value) {
    if (value == null) {
      _json.remove('bucket');
    } else {
      _json['bucket'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get generation {
    return _json['generation'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set generation(num? value) {
    if (value == null) {
      _json.remove('generation');
    } else {
      _json['generation'] = value;
    }
  }

  String? get object {
    return _json['object'] as String?;
  }

  set object(String? value) {
    if (value == null) {
      _json.remove('object');
    } else {
      _json['object'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [StorageSource] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _StorageSourceTypeFactory extends SchemanticType<StorageSource> {
  const _StorageSourceTypeFactory();

  @override
  StorageSource parse(Object? json) {
    return StorageSource._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'StorageSource',
    definition: $Schema
        .object(
          properties: {
            'bucket': $Schema.string(
              description: 'Google Cloud Storage bucket containing the source',
            ),
            'generation': $Schema.number(
              description:
                  'Google Cloud Storage generation for the object. If the generation\nis omitted, the latest generation will be used.',
            ),
            'object': $Schema.string(
              description: 'Google Cloud Storage object containing the source.',
            ),
          },
          description:
              'If provided, get the source from this location in Google Cloud Storage.',
        )
        .value,
    dependencies: [],
  );
}

base class Source {
  /// Creates a [Source] from a JSON map.
  factory Source.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Source._(this._json);

  Source({RepoSource? repoSource, StorageSource? storageSource}) {
    _json = {
      'repo_source': ?repoSource?.toJson(),
      'storage_source': ?storageSource?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Source].
  static const SchemanticType<Source> $schema = _SourceTypeFactory();

  RepoSource? get repoSource {
    return _json['repo_source'] == null
        ? null
        : RepoSource.fromJson(_json['repo_source'] as Map<String, dynamic>);
  }

  set repoSource(RepoSource? value) {
    if (value == null) {
      _json.remove('repo_source');
    } else {
      _json['repo_source'] = value;
    }
  }

  StorageSource? get storageSource {
    return _json['storage_source'] == null
        ? null
        : StorageSource.fromJson(
            _json['storage_source'] as Map<String, dynamic>,
          );
  }

  set storageSource(StorageSource? value) {
    if (value == null) {
      _json.remove('storage_source');
    } else {
      _json['storage_source'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Source] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SourceTypeFactory extends SchemanticType<Source> {
  const _SourceTypeFactory();

  @override
  Source parse(Object? json) {
    return Source._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Source',
    definition: $Schema
        .object(
          properties: {
            'repo_source': $Schema.fromMap({'\$ref': r'#/$defs/RepoSource'}),
            'storage_source': $Schema.fromMap({
              '\$ref': r'#/$defs/StorageSource',
            }),
          },
          description: 'The location of the function source code.',
        )
        .value,
    dependencies: [RepoSource.$schema, StorageSource.$schema],
  );
}

base class BuildConfig {
  /// Creates a [BuildConfig] from a JSON map.
  factory BuildConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  BuildConfig._(this._json);

  BuildConfig({
    String? dockerRepository,
    String? entryPoint,
    Map<String, String>? environmentVariables,
    String? runtime,
    String? serviceAccount,
    String? workerPool,
    AutomaticUpdatePolicy? automaticUpdatePolicy,
    OnDeployUpdatePolicy? onDeployUpdatePolicy,
    Source? source,
  }) {
    _json = {
      'docker_repository': ?dockerRepository,
      'entry_point': ?entryPoint,
      'environment_variables': ?environmentVariables,
      'runtime': ?runtime,
      'service_account': ?serviceAccount,
      'worker_pool': ?workerPool,
      'automatic_update_policy': ?automaticUpdatePolicy?.toJson(),
      'on_deploy_update_policy': ?onDeployUpdatePolicy?.toJson(),
      'source': ?source?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BuildConfig].
  static const SchemanticType<BuildConfig> $schema = _BuildConfigTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get dockerRepository {
    return _json['docker_repository'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set dockerRepository(String? value) {
    if (value == null) {
      _json.remove('docker_repository');
    } else {
      _json['docker_repository'] = value;
    }
  }

  String? get entryPoint {
    return _json['entry_point'] as String?;
  }

  set entryPoint(String? value) {
    if (value == null) {
      _json.remove('entry_point');
    } else {
      _json['entry_point'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  Map<String, String>? get environmentVariables {
    return (_json['environment_variables'] as Map?)?.cast<String, String>();
  }

  /// Optional + Computed. Inferred from provider when null.
  set environmentVariables(Map<String, String>? value) {
    if (value == null) {
      _json.remove('environment_variables');
    } else {
      _json['environment_variables'] = value;
    }
  }

  String? get runtime {
    return _json['runtime'] as String?;
  }

  set runtime(String? value) {
    if (value == null) {
      _json.remove('runtime');
    } else {
      _json['runtime'] = value;
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

  AutomaticUpdatePolicy? get automaticUpdatePolicy {
    return _json['automatic_update_policy'] == null
        ? null
        : AutomaticUpdatePolicy.fromJson(
            _json['automatic_update_policy'] as Map<String, dynamic>,
          );
  }

  set automaticUpdatePolicy(AutomaticUpdatePolicy? value) {
    if (value == null) {
      _json.remove('automatic_update_policy');
    } else {
      _json['automatic_update_policy'] = value;
    }
  }

  OnDeployUpdatePolicy? get onDeployUpdatePolicy {
    return _json['on_deploy_update_policy'] == null
        ? null
        : OnDeployUpdatePolicy.fromJson(
            _json['on_deploy_update_policy'] as Map<String, dynamic>,
          );
  }

  set onDeployUpdatePolicy(OnDeployUpdatePolicy? value) {
    if (value == null) {
      _json.remove('on_deploy_update_policy');
    } else {
      _json['on_deploy_update_policy'] = value;
    }
  }

  Source? get source {
    return _json['source'] == null
        ? null
        : Source.fromJson(_json['source'] as Map<String, dynamic>);
  }

  set source(Source? value) {
    if (value == null) {
      _json.remove('source');
    } else {
      _json['source'] = value;
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
            'docker_repository': $Schema.string(
              description:
                  'User managed repository created in Artifact Registry optionally with a customer managed encryption key.',
            ),
            'entry_point': $Schema.string(
              description:
                  'The name of the function (as defined in source code) that will be executed.\nDefaults to the resource name suffix, if not specified. For backward\ncompatibility, if function with given name is not found, then the system\nwill try to use function named "function". For Node.js this is name of a\nfunction exported by the module specified in source_location.',
            ),
            'environment_variables': $Schema.object(
              description:
                  'User-provided build-time environment variables for the function.',
              additionalProperties: $Schema.string(),
            ),
            'runtime': $Schema.string(
              description:
                  'The runtime in which to run the function. Required when deploying a new\nfunction, optional when updating an existing function.',
            ),
            'service_account': $Schema.string(
              description:
                  'The fully-qualified name of the service account to be used for building the container.',
            ),
            'worker_pool': $Schema.string(
              description:
                  'Name of the Cloud Build Custom Worker Pool that should be used to build the function.',
            ),
            'automatic_update_policy': $Schema.fromMap({
              '\$ref': r'#/$defs/AutomaticUpdatePolicy',
            }),
            'on_deploy_update_policy': $Schema.fromMap({
              '\$ref': r'#/$defs/OnDeployUpdatePolicy',
            }),
            'source': $Schema.fromMap({'\$ref': r'#/$defs/Source'}),
          },
          description:
              'Describes the Build step of the function that builds a container\nfrom the given source.',
        )
        .value,
    dependencies: [
      AutomaticUpdatePolicy.$schema,
      OnDeployUpdatePolicy.$schema,
      Source.$schema,
    ],
  );
}

base class EventFilters {
  /// Creates a [EventFilters] from a JSON map.
  factory EventFilters.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  EventFilters._(this._json);

  EventFilters({
    required String attribute,
    String? operator,
    required String value,
  }) {
    _json = {'attribute': attribute, 'operator': ?operator, 'value': value};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [EventFilters].
  static const SchemanticType<EventFilters> $schema =
      _EventFiltersTypeFactory();

  String get attribute {
    return _json['attribute'] as String;
  }

  set attribute(String value) {
    _json['attribute'] = value;
  }

  String? get operator {
    return _json['operator'] as String?;
  }

  set operator(String? value) {
    if (value == null) {
      _json.remove('operator');
    } else {
      _json['operator'] = value;
    }
  }

  String get value {
    return _json['value'] as String;
  }

  set value(String value) {
    _json['value'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [EventFilters] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _EventFiltersTypeFactory extends SchemanticType<EventFilters> {
  const _EventFiltersTypeFactory();

  @override
  EventFilters parse(Object? json) {
    return EventFilters._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'EventFilters',
    definition: $Schema
        .object(
          properties: {
            'attribute': $Schema.string(
              description:
                  '\'Required. The name of a CloudEvents attribute.\nCurrently, only a subset of attributes are supported for filtering. Use the \'gcloud eventarc providers describe\' command to learn more about events and their attributes.\nDo not filter for the \'type\' attribute here, as this is already achieved by the resource\'s \'event_type\' attribute.',
            ),
            'operator': $Schema.string(
              description:
                  'Optional. The operator used for matching the events with the value of\nthe filter. If not specified, only events that have an exact key-value\npair specified in the filter are matched.\nThe only allowed value is \'match-path-pattern\'.\n[See documentation on path patterns here](https://cloud.google.com/eventarc/docs/path-patterns)\'',
            ),
            'value': $Schema.string(
              description:
                  'Required. The value for the attribute.\nIf the operator field is set as \'match-path-pattern\', this value can be a path pattern instead of an exact value.',
            ),
          },
          required: ['attribute', 'value'],
          description: 'Criteria used to filter events.',
        )
        .value,
    dependencies: [],
  );
}

base class EventTrigger {
  /// Creates a [EventTrigger] from a JSON map.
  factory EventTrigger.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  EventTrigger._(this._json);

  EventTrigger({
    required String eventType,
    String? pubsubTopic,
    String? retryPolicy,
    String? serviceAccountEmail,
    String? triggerRegion,
    List<EventFilters>? eventFilters,
  }) {
    _json = {
      'event_type': eventType,
      'pubsub_topic': ?pubsubTopic,
      'retry_policy': ?retryPolicy,
      'service_account_email': ?serviceAccountEmail,
      'trigger_region': ?triggerRegion,
      'event_filters': ?eventFilters?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [EventTrigger].
  static const SchemanticType<EventTrigger> $schema =
      _EventTriggerTypeFactory();

  String get eventType {
    return _json['event_type'] as String;
  }

  set eventType(String value) {
    _json['event_type'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get pubsubTopic {
    return _json['pubsub_topic'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set pubsubTopic(String? value) {
    if (value == null) {
      _json.remove('pubsub_topic');
    } else {
      _json['pubsub_topic'] = value;
    }
  }

  String? get retryPolicy {
    return _json['retry_policy'] as String?;
  }

  set retryPolicy(String? value) {
    if (value == null) {
      _json.remove('retry_policy');
    } else {
      _json['retry_policy'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get serviceAccountEmail {
    return _json['service_account_email'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set serviceAccountEmail(String? value) {
    if (value == null) {
      _json.remove('service_account_email');
    } else {
      _json['service_account_email'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get triggerRegion {
    return _json['trigger_region'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set triggerRegion(String? value) {
    if (value == null) {
      _json.remove('trigger_region');
    } else {
      _json['trigger_region'] = value;
    }
  }

  List<EventFilters>? get eventFilters {
    return (_json['event_filters'] as List?)
        ?.map((e) => EventFilters.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set eventFilters(List<EventFilters>? value) {
    if (value == null) {
      _json.remove('event_filters');
    } else {
      _json['event_filters'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [EventTrigger] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _EventTriggerTypeFactory extends SchemanticType<EventTrigger> {
  const _EventTriggerTypeFactory();

  @override
  EventTrigger parse(Object? json) {
    return EventTrigger._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'EventTrigger',
    definition: $Schema
        .object(
          properties: {
            'event_type': $Schema.string(
              description: 'Required. The type of event to observe.',
            ),
            'pubsub_topic': $Schema.string(
              description:
                  'The name of a Pub/Sub topic in the same project that will be used\nas the transport topic for the event delivery.',
            ),
            'retry_policy': $Schema.string(
              description:
                  'Describes the retry policy in case of function\'s execution failure.\nRetried execution is charged as any other execution. Possible values: ["RETRY_POLICY_UNSPECIFIED", "RETRY_POLICY_DO_NOT_RETRY", "RETRY_POLICY_RETRY"]',
            ),
            'service_account_email': $Schema.string(
              description:
                  'Optional. The email of the trigger\'s service account. The service account\nmust have permission to invoke Cloud Run services. If empty, defaults to the\nCompute Engine default service account: {project_number}-compute@developer.gserviceaccount.com.',
            ),
            'trigger_region': $Schema.string(
              description:
                  'The region that the trigger will be in. The trigger will only receive\nevents originating in this region. It can be the same\nregion as the function, a different region or multi-region, or the global\nregion. If not provided, defaults to the same region as the function.',
            ),
            'event_filters': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/EventFilters'}),
            ),
          },
          required: ['event_type'],
          description:
              'An Eventarc trigger managed by Google Cloud Functions that fires events in\nresponse to a condition in another service.',
        )
        .value,
    dependencies: [EventFilters.$schema],
  );
}

base class DirectVpcNetworkInterface {
  /// Creates a [DirectVpcNetworkInterface] from a JSON map.
  factory DirectVpcNetworkInterface.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  DirectVpcNetworkInterface._(this._json);

  DirectVpcNetworkInterface({
    String? network,
    String? subnetwork,
    List<String>? tags,
  }) {
    _json = {'network': ?network, 'subnetwork': ?subnetwork, 'tags': ?tags};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [DirectVpcNetworkInterface].
  static const SchemanticType<DirectVpcNetworkInterface> $schema =
      _DirectVpcNetworkInterfaceTypeFactory();

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

  String? get subnetwork {
    return _json['subnetwork'] as String?;
  }

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

  /// Serializes this [DirectVpcNetworkInterface] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _DirectVpcNetworkInterfaceTypeFactory
    extends SchemanticType<DirectVpcNetworkInterface> {
  const _DirectVpcNetworkInterfaceTypeFactory();

  @override
  DirectVpcNetworkInterface parse(Object? json) {
    return DirectVpcNetworkInterface._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'DirectVpcNetworkInterface',
    definition: $Schema
        .object(
          properties: {
            'network': $Schema.string(
              description:
                  'The name of the VPC network to which the function will be connected. Specify either a VPC network or a subnet, or both. If you specify only a network, the subnet uses the same name as the network.',
            ),
            'subnetwork': $Schema.string(
              description:
                  'The name of the VPC subnetwork that the Cloud Function resource will get IPs from. Specify either a VPC network or a subnet, or both. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.',
            ),
            'tags': $Schema.list(
              description:
                  'Network tags applied to this Cloud Function resource.',
              items: $Schema.string(),
            ),
          },
          description:
              'The Direct VPC network interface for the Cloud Function. Currently only a single Direct VPC is supported.',
        )
        .value,
    dependencies: [],
  );
}

base class SecretEnvironmentVariables {
  /// Creates a [SecretEnvironmentVariables] from a JSON map.
  factory SecretEnvironmentVariables.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SecretEnvironmentVariables._(this._json);

  SecretEnvironmentVariables({
    required String key,
    required String projectId,
    required String secret,
    required String version,
  }) {
    _json = {
      'key': key,
      'project_id': projectId,
      'secret': secret,
      'version': version,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SecretEnvironmentVariables].
  static const SchemanticType<SecretEnvironmentVariables> $schema =
      _SecretEnvironmentVariablesTypeFactory();

  String get key {
    return _json['key'] as String;
  }

  set key(String value) {
    _json['key'] = value;
  }

  String get projectId {
    return _json['project_id'] as String;
  }

  set projectId(String value) {
    _json['project_id'] = value;
  }

  String get secret {
    return _json['secret'] as String;
  }

  set secret(String value) {
    _json['secret'] = value;
  }

  String get version {
    return _json['version'] as String;
  }

  set version(String value) {
    _json['version'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SecretEnvironmentVariables] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SecretEnvironmentVariablesTypeFactory
    extends SchemanticType<SecretEnvironmentVariables> {
  const _SecretEnvironmentVariablesTypeFactory();

  @override
  SecretEnvironmentVariables parse(Object? json) {
    return SecretEnvironmentVariables._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SecretEnvironmentVariables',
    definition: $Schema
        .object(
          properties: {
            'key': $Schema.string(
              description: 'Name of the environment variable.',
            ),
            'project_id': $Schema.string(
              description:
                  'Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function\'s project assuming that the secret exists in the same project as of the function.',
            ),
            'secret': $Schema.string(
              description:
                  'Name of the secret in secret manager (not the full resource name).',
            ),
            'version': $Schema.string(
              description:
                  'Version of the secret (version number or the string \'latest\'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.',
            ),
          },
          required: ['key', 'project_id', 'secret', 'version'],
          description: 'Secret environment variables configuration.',
        )
        .value,
    dependencies: [],
  );
}

base class Versions {
  /// Creates a [Versions] from a JSON map.
  factory Versions.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Versions._(this._json);

  Versions({required String path, required String version}) {
    _json = {'path': path, 'version': version};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Versions].
  static const SchemanticType<Versions> $schema = _VersionsTypeFactory();

  String get path {
    return _json['path'] as String;
  }

  set path(String value) {
    _json['path'] = value;
  }

  String get version {
    return _json['version'] as String;
  }

  set version(String value) {
    _json['version'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Versions] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _VersionsTypeFactory extends SchemanticType<Versions> {
  const _VersionsTypeFactory();

  @override
  Versions parse(Object? json) {
    return Versions._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Versions',
    definition: $Schema
        .object(
          properties: {
            'path': $Schema.string(
              description:
                  'Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mountPath as \'/etc/secrets\' and path as secret_foo would mount the secret value file at /etc/secrets/secret_foo.',
            ),
            'version': $Schema.string(
              description:
                  'Version of the secret (version number or the string \'latest\'). It is preferable to use latest version with secret volumes as secret value changes are reflected immediately.',
            ),
          },
          required: ['path', 'version'],
          description:
              'List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point.\'',
        )
        .value,
    dependencies: [],
  );
}

base class SecretVolumes {
  /// Creates a [SecretVolumes] from a JSON map.
  factory SecretVolumes.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SecretVolumes._(this._json);

  SecretVolumes({
    required String mountPath,
    required String projectId,
    required String secret,
    List<Versions>? versions,
  }) {
    _json = {
      'mount_path': mountPath,
      'project_id': projectId,
      'secret': secret,
      'versions': ?versions?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SecretVolumes].
  static const SchemanticType<SecretVolumes> $schema =
      _SecretVolumesTypeFactory();

  String get mountPath {
    return _json['mount_path'] as String;
  }

  set mountPath(String value) {
    _json['mount_path'] = value;
  }

  String get projectId {
    return _json['project_id'] as String;
  }

  set projectId(String value) {
    _json['project_id'] = value;
  }

  String get secret {
    return _json['secret'] as String;
  }

  set secret(String value) {
    _json['secret'] = value;
  }

  List<Versions>? get versions {
    return (_json['versions'] as List?)
        ?.map((e) => Versions.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set versions(List<Versions>? value) {
    if (value == null) {
      _json.remove('versions');
    } else {
      _json['versions'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SecretVolumes] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SecretVolumesTypeFactory extends SchemanticType<SecretVolumes> {
  const _SecretVolumesTypeFactory();

  @override
  SecretVolumes parse(Object? json) {
    return SecretVolumes._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SecretVolumes',
    definition: $Schema
        .object(
          properties: {
            'mount_path': $Schema.string(
              description:
                  'The path within the container to mount the secret volume. For example, setting the mountPath as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets',
            ),
            'project_id': $Schema.string(
              description:
                  'Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function\'s project assuming that the secret exists in the same project as of the function.',
            ),
            'secret': $Schema.string(
              description:
                  'Name of the secret in secret manager (not the full resource name).',
            ),
            'versions': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Versions'}),
            ),
          },
          required: ['mount_path', 'project_id', 'secret'],
          description: 'Secret volumes configuration.',
        )
        .value,
    dependencies: [Versions.$schema],
  );
}

base class ServiceConfig {
  /// Creates a [ServiceConfig] from a JSON map.
  factory ServiceConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ServiceConfig._(this._json);

  ServiceConfig({
    bool? allTrafficOnLatestRevision,
    String? availableCpu,
    String? availableMemory,
    String? binaryAuthorizationPolicy,
    String? directVpcEgress,
    Map<String, String>? environmentVariables,
    String? ingressSettings,
    num? maxInstanceCount,
    num? maxInstanceRequestConcurrency,
    num? minInstanceCount,
    String? serviceAccountEmail,
    num? timeoutSeconds,
    String? vpcConnector,
    String? vpcConnectorEgressSettings,
    List<DirectVpcNetworkInterface>? directVpcNetworkInterface,
    List<SecretEnvironmentVariables>? secretEnvironmentVariables,
    List<SecretVolumes>? secretVolumes,
  }) {
    _json = {
      'all_traffic_on_latest_revision': ?allTrafficOnLatestRevision,
      'available_cpu': ?availableCpu,
      'available_memory': ?availableMemory,
      'binary_authorization_policy': ?binaryAuthorizationPolicy,
      'direct_vpc_egress': ?directVpcEgress,
      'environment_variables': ?environmentVariables,
      'ingress_settings': ?ingressSettings,
      'max_instance_count': ?maxInstanceCount,
      'max_instance_request_concurrency': ?maxInstanceRequestConcurrency,
      'min_instance_count': ?minInstanceCount,
      'service_account_email': ?serviceAccountEmail,
      'timeout_seconds': ?timeoutSeconds,
      'vpc_connector': ?vpcConnector,
      'vpc_connector_egress_settings': ?vpcConnectorEgressSettings,
      'direct_vpc_network_interface': ?directVpcNetworkInterface
          ?.map((e) => e.toJson())
          .toList(),
      'secret_environment_variables': ?secretEnvironmentVariables
          ?.map((e) => e.toJson())
          .toList(),
      'secret_volumes': ?secretVolumes?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ServiceConfig].
  static const SchemanticType<ServiceConfig> $schema =
      _ServiceConfigTypeFactory();

  bool? get allTrafficOnLatestRevision {
    return _json['all_traffic_on_latest_revision'] as bool?;
  }

  set allTrafficOnLatestRevision(bool? value) {
    if (value == null) {
      _json.remove('all_traffic_on_latest_revision');
    } else {
      _json['all_traffic_on_latest_revision'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get availableCpu {
    return _json['available_cpu'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set availableCpu(String? value) {
    if (value == null) {
      _json.remove('available_cpu');
    } else {
      _json['available_cpu'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get availableMemory {
    return _json['available_memory'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set availableMemory(String? value) {
    if (value == null) {
      _json.remove('available_memory');
    } else {
      _json['available_memory'] = value;
    }
  }

  String? get binaryAuthorizationPolicy {
    return _json['binary_authorization_policy'] as String?;
  }

  set binaryAuthorizationPolicy(String? value) {
    if (value == null) {
      _json.remove('binary_authorization_policy');
    } else {
      _json['binary_authorization_policy'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get directVpcEgress {
    return _json['direct_vpc_egress'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set directVpcEgress(String? value) {
    if (value == null) {
      _json.remove('direct_vpc_egress');
    } else {
      _json['direct_vpc_egress'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  Map<String, String>? get environmentVariables {
    return (_json['environment_variables'] as Map?)?.cast<String, String>();
  }

  /// Optional + Computed. Inferred from provider when null.
  set environmentVariables(Map<String, String>? value) {
    if (value == null) {
      _json.remove('environment_variables');
    } else {
      _json['environment_variables'] = value;
    }
  }

  String? get ingressSettings {
    return _json['ingress_settings'] as String?;
  }

  set ingressSettings(String? value) {
    if (value == null) {
      _json.remove('ingress_settings');
    } else {
      _json['ingress_settings'] = value;
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

  /// Optional + Computed. Inferred from provider when null.
  String? get serviceAccountEmail {
    return _json['service_account_email'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set serviceAccountEmail(String? value) {
    if (value == null) {
      _json.remove('service_account_email');
    } else {
      _json['service_account_email'] = value;
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

  String? get vpcConnector {
    return _json['vpc_connector'] as String?;
  }

  set vpcConnector(String? value) {
    if (value == null) {
      _json.remove('vpc_connector');
    } else {
      _json['vpc_connector'] = value;
    }
  }

  String? get vpcConnectorEgressSettings {
    return _json['vpc_connector_egress_settings'] as String?;
  }

  set vpcConnectorEgressSettings(String? value) {
    if (value == null) {
      _json.remove('vpc_connector_egress_settings');
    } else {
      _json['vpc_connector_egress_settings'] = value;
    }
  }

  List<DirectVpcNetworkInterface>? get directVpcNetworkInterface {
    return (_json['direct_vpc_network_interface'] as List?)
        ?.map(
          (e) => DirectVpcNetworkInterface.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  set directVpcNetworkInterface(List<DirectVpcNetworkInterface>? value) {
    if (value == null) {
      _json.remove('direct_vpc_network_interface');
    } else {
      _json['direct_vpc_network_interface'] = value.toList();
    }
  }

  List<SecretEnvironmentVariables>? get secretEnvironmentVariables {
    return (_json['secret_environment_variables'] as List?)
        ?.map(
          (e) => SecretEnvironmentVariables.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  set secretEnvironmentVariables(List<SecretEnvironmentVariables>? value) {
    if (value == null) {
      _json.remove('secret_environment_variables');
    } else {
      _json['secret_environment_variables'] = value.toList();
    }
  }

  List<SecretVolumes>? get secretVolumes {
    return (_json['secret_volumes'] as List?)
        ?.map((e) => SecretVolumes.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set secretVolumes(List<SecretVolumes>? value) {
    if (value == null) {
      _json.remove('secret_volumes');
    } else {
      _json['secret_volumes'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ServiceConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ServiceConfigTypeFactory extends SchemanticType<ServiceConfig> {
  const _ServiceConfigTypeFactory();

  @override
  ServiceConfig parse(Object? json) {
    return ServiceConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ServiceConfig',
    definition: $Schema
        .object(
          properties: {
            'all_traffic_on_latest_revision': $Schema.boolean(
              description:
                  'Whether 100% of traffic is routed to the latest revision. Defaults to true.',
            ),
            'available_cpu': $Schema.string(
              description:
                  'The number of CPUs used in a single container instance. Default value is calculated from available memory.',
            ),
            'available_memory': $Schema.string(
              description:
                  'The amount of memory available for a function.\nDefaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is\nsupplied the value is interpreted as bytes.',
            ),
            'binary_authorization_policy': $Schema.string(
              description:
                  'The binary authorization policy to be checked when deploying the Cloud Run service.',
            ),
            'direct_vpc_egress': $Schema.string(
              description:
                  'Egress settings for direct VPC. If not provided, it defaults to VPC_EGRESS_PRIVATE_RANGES_ONLY. Possible values: ["VPC_EGRESS_ALL_TRAFFIC", "VPC_EGRESS_PRIVATE_RANGES_ONLY"]',
            ),
            'environment_variables': $Schema.object(
              description:
                  'Environment variables that shall be available during function execution.',
              additionalProperties: $Schema.string(),
            ),
            'ingress_settings': $Schema.string(
              description:
                  'Available ingress settings. Defaults to "ALLOW_ALL" if unspecified. Default value: "ALLOW_ALL" Possible values: ["ALLOW_ALL", "ALLOW_INTERNAL_ONLY", "ALLOW_INTERNAL_AND_GCLB"]',
            ),
            'max_instance_count': $Schema.number(
              description:
                  'The limit on the maximum number of function instances that may coexist at a\ngiven time.',
            ),
            'max_instance_request_concurrency': $Schema.number(
              description:
                  'Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.',
            ),
            'min_instance_count': $Schema.number(
              description:
                  'The limit on the minimum number of function instances that may coexist at a\ngiven time.',
            ),
            'service_account_email': $Schema.string(
              description:
                  'The email of the service account for this function.',
            ),
            'timeout_seconds': $Schema.number(
              description:
                  'The function execution timeout. Execution is considered failed and\ncan be terminated if the function is not completed at the end of the\ntimeout period. Defaults to 60 seconds.',
            ),
            'vpc_connector': $Schema.string(
              description:
                  'The Serverless VPC Access connector that this cloud function can connect to.',
            ),
            'vpc_connector_egress_settings': $Schema.string(
              description:
                  'Available egress settings. Possible values: ["VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED", "PRIVATE_RANGES_ONLY", "ALL_TRAFFIC"]',
            ),
            'direct_vpc_network_interface': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/DirectVpcNetworkInterface',
              }),
            ),
            'secret_environment_variables': $Schema.list(
              items: $Schema.fromMap({
                '\$ref': r'#/$defs/SecretEnvironmentVariables',
              }),
            ),
            'secret_volumes': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/SecretVolumes'}),
            ),
          },
          description: 'Describes the Service being deployed.',
        )
        .value,
    dependencies: [
      DirectVpcNetworkInterface.$schema,
      SecretEnvironmentVariables.$schema,
      SecretVolumes.$schema,
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

base class GoogleCloudfunctions2Function {
  /// Creates a [GoogleCloudfunctions2Function] from a JSON map.
  factory GoogleCloudfunctions2Function.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleCloudfunctions2Function._(this._json);

  GoogleCloudfunctions2Function({
    String? description,
    String? id,
    String? kmsKeyName,
    Map<String, String>? labels,
    required String location,
    required String name,
    String? project,
    BuildConfig? buildConfig,
    EventTrigger? eventTrigger,
    ServiceConfig? serviceConfig,
    Timeouts? timeouts,
  }) {
    _json = {
      'description': ?description,
      'id': ?id,
      'kms_key_name': ?kmsKeyName,
      'labels': ?labels,
      'location': location,
      'name': name,
      'project': ?project,
      'build_config': ?buildConfig?.toJson(),
      'event_trigger': ?eventTrigger?.toJson(),
      'service_config': ?serviceConfig?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleCloudfunctions2Function].
  static const SchemanticType<GoogleCloudfunctions2Function> $schema =
      _GoogleCloudfunctions2FunctionTypeFactory();

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

  String? get kmsKeyName {
    return _json['kms_key_name'] as String?;
  }

  set kmsKeyName(String? value) {
    if (value == null) {
      _json.remove('kms_key_name');
    } else {
      _json['kms_key_name'] = value;
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

  EventTrigger? get eventTrigger {
    return _json['event_trigger'] == null
        ? null
        : EventTrigger.fromJson(_json['event_trigger'] as Map<String, dynamic>);
  }

  set eventTrigger(EventTrigger? value) {
    if (value == null) {
      _json.remove('event_trigger');
    } else {
      _json['event_trigger'] = value;
    }
  }

  ServiceConfig? get serviceConfig {
    return _json['service_config'] == null
        ? null
        : ServiceConfig.fromJson(
            _json['service_config'] as Map<String, dynamic>,
          );
  }

  set serviceConfig(ServiceConfig? value) {
    if (value == null) {
      _json.remove('service_config');
    } else {
      _json['service_config'] = value;
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

  /// Serializes this [GoogleCloudfunctions2Function] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleCloudfunctions2FunctionTypeFactory
    extends SchemanticType<GoogleCloudfunctions2Function> {
  const _GoogleCloudfunctions2FunctionTypeFactory();

  @override
  GoogleCloudfunctions2Function parse(Object? json) {
    return GoogleCloudfunctions2Function._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleCloudfunctions2Function',
    definition: $Schema
        .object(
          properties: {
            'description': $Schema.string(
              description: 'User-provided description of a function.',
            ),
            'id': $Schema.string(),
            'kms_key_name': $Schema.string(
              description:
                  'Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.\nIt must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.',
            ),
            'labels': $Schema.object(
              description:
                  'A set of key/value label pairs associated with this Cloud Function.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'location': $Schema.string(
              description: 'The location of this cloud function.',
            ),
            'name': $Schema.string(
              description:
                  'A user-defined name of the function. Function names must\nbe unique globally and match pattern \'projects/*/locations/*/functions/*\'.',
            ),
            'project': $Schema.string(),
            'build_config': $Schema.fromMap({'\$ref': r'#/$defs/BuildConfig'}),
            'event_trigger': $Schema.fromMap({
              '\$ref': r'#/$defs/EventTrigger',
            }),
            'service_config': $Schema.fromMap({
              '\$ref': r'#/$defs/ServiceConfig',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['location', 'name'],
        )
        .value,
    dependencies: [
      BuildConfig.$schema,
      EventTrigger.$schema,
      ServiceConfig.$schema,
      Timeouts.$schema,
    ],
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_firebase_app_check_service_config.schema.dart';

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

base class GoogleFirebaseAppCheckServiceConfig {
  /// Creates a [GoogleFirebaseAppCheckServiceConfig] from a JSON map.
  factory GoogleFirebaseAppCheckServiceConfig.fromJson(
    Map<String, dynamic> json,
  ) => $schema.parse(json);

  GoogleFirebaseAppCheckServiceConfig._(this._json);

  GoogleFirebaseAppCheckServiceConfig({
    String? enforcementMode,
    String? id,
    String? project,
    required String serviceId,
    Timeouts? timeouts,
  }) {
    _json = {
      'enforcement_mode': ?enforcementMode,
      'id': ?id,
      'project': ?project,
      'service_id': serviceId,
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleFirebaseAppCheckServiceConfig].
  static const SchemanticType<GoogleFirebaseAppCheckServiceConfig> $schema =
      _GoogleFirebaseAppCheckServiceConfigTypeFactory();

  String? get enforcementMode {
    return _json['enforcement_mode'] as String?;
  }

  set enforcementMode(String? value) {
    if (value == null) {
      _json.remove('enforcement_mode');
    } else {
      _json['enforcement_mode'] = value;
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

  String get serviceId {
    return _json['service_id'] as String;
  }

  set serviceId(String value) {
    _json['service_id'] = value;
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

  /// Serializes this [GoogleFirebaseAppCheckServiceConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleFirebaseAppCheckServiceConfigTypeFactory
    extends SchemanticType<GoogleFirebaseAppCheckServiceConfig> {
  const _GoogleFirebaseAppCheckServiceConfigTypeFactory();

  @override
  GoogleFirebaseAppCheckServiceConfig parse(Object? json) {
    return GoogleFirebaseAppCheckServiceConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleFirebaseAppCheckServiceConfig',
    definition: $Schema
        .object(
          properties: {
            'enforcement_mode': $Schema.string(
              description:
                  'The App Check enforcement mode for a service supported by App Check. Valid values are\n\n(Unset)\nFirebase App Check is not enforced for the service, nor are App Check metrics collected.\nThough the service is not protected by App Check in this mode, other applicable protections,\nsuch as user authorization, are still enforced. An unconfigured service is in this mode by default.\nThis is equivalent to OFF in the REST API. Deleting the Terraform resource will also switch the\nenforcement to OFF for this service.\n\nUNENFORCED\nFirebase App Check is not enforced for the service. App Check metrics are collected to help you\ndecide when to turn on enforcement for the service. Though the service is not protected by App Check\nin this mode, other applicable protections, such as user authorization, are still enforced.\n\nENFORCED\nFirebase App Check is enforced for the service. The service will reject any request that attempts to\naccess your project\'s resources if it does not have valid App Check token attached, with some exceptions\ndepending on the service; for example, some services will still allow requests bearing the developer\'s\nprivileged service account credentials without an App Check token. App Check metrics continue to be\ncollected to help you detect issues with your App Check integration and monitor the composition of your\ncallers. While the service is protected by App Check, other applicable protections, such as user\nauthorization, continue to be enforced at the same time.\n\nUse caution when choosing to enforce App Check on a Firebase service. If your users have not updated\nto an App Check capable version of your app, their apps will no longer be able to use your Firebase\nservices that are enforcing App Check. App Check metrics can help you decide whether to enforce App\nCheck on your Firebase services.\n\nIf your app has not launched yet, you should enable enforcement immediately, since there are no outdated\nclients in use. Possible values: ["UNENFORCED", "ENFORCED"]',
            ),
            'id': $Schema.string(),
            'project': $Schema.string(),
            'service_id': $Schema.string(
              description:
                  'The identifier of the service to configure enforcement. Currently, the following service IDs are supported:\n  firebasestorage.googleapis.com (Cloud Storage for Firebase)\n  firebasedatabase.googleapis.com (Firebase Realtime Database)\n  firestore.googleapis.com (Cloud Firestore)\n  identitytoolkit.googleapis.com (Authentication)',
            ),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['service_id'],
        )
        .value,
    dependencies: [Timeouts.$schema],
  );
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_logger`.
const Set<String> _azurermApiManagementLoggerSensitive = <String>{
  'application_insights.connection_string',
  'application_insights.instrumentation_key',
  'eventhub.connection_string',
};

/// At most one of `application_insights`, `eventhub` on `azurerm_api_management_logger`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.applicationInsights(...)`.
sealed class ApiManagementLoggerTarget {
  const ApiManagementLoggerTarget();

  /// Sets `application_insights`.
  const factory ApiManagementLoggerTarget.applicationInsights(
    ApiManagementLoggerApplicationInsights applicationInsights,
  ) = ApiManagementLoggerTargetApplicationInsights;

  /// Sets `eventhub`.
  const factory ApiManagementLoggerTarget.eventhub(
    ApiManagementLoggerEventhub eventhub,
  ) = ApiManagementLoggerTargetEventhub;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ApiManagementLoggerTarget.applicationInsights] choice: sets `application_insights`.
final class ApiManagementLoggerTargetApplicationInsights
    extends ApiManagementLoggerTarget {
  const ApiManagementLoggerTargetApplicationInsights(this.applicationInsights);

  final ApiManagementLoggerApplicationInsights applicationInsights;

  @internal
  @override
  String get blockKey => 'application_insights';

  @internal
  @override
  Map<String, Object?> encode() => {
    'application_insights': applicationInsights.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'application_insights': TfArg.literal(applicationInsights.encode()),
  };
}

/// The [ApiManagementLoggerTarget.eventhub] choice: sets `eventhub`.
final class ApiManagementLoggerTargetEventhub
    extends ApiManagementLoggerTarget {
  const ApiManagementLoggerTargetEventhub(this.eventhub);

  final ApiManagementLoggerEventhub eventhub;

  @internal
  @override
  String get blockKey => 'eventhub';

  @internal
  @override
  Map<String, Object?> encode() => {'eventhub': eventhub.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'eventhub': TfArg.literal(eventhub.encode()),
  };
}

/// Typed helper for the `application_insights` block of
/// `azurerm_api_management_logger` (derived from provider schema).
@immutable
final class ApiManagementLoggerApplicationInsights {
  const ApiManagementLoggerApplicationInsights({
    required this.credentials,
    this.identityClientId,
  });

  final ApiManagementLoggerCredentials credentials;

  final TfArg<String>? identityClientId;

  @internal
  Map<String, Object?> encode() => {
    ...credentials.encode(),
    'identity_client_id': ?identityClientId?.toTfJson(),
  };
}

/// Exactly one of `connection_string`, `instrumentation_key` on the `application_insights` block of `azurerm_api_management_logger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class ApiManagementLoggerCredentials {
  const ApiManagementLoggerCredentials();

  /// Sets `connection_string`.
  const factory ApiManagementLoggerCredentials.connectionString(
    Sensitive<String> connectionString,
  ) = ApiManagementLoggerCredentialsConnectionString;

  /// Sets `instrumentation_key`.
  const factory ApiManagementLoggerCredentials.instrumentationKey(
    Sensitive<String> instrumentationKey,
  ) = ApiManagementLoggerCredentialsInstrumentationKey;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ApiManagementLoggerCredentials.connectionString] choice: sets `connection_string`.
final class ApiManagementLoggerCredentialsConnectionString
    extends ApiManagementLoggerCredentials {
  const ApiManagementLoggerCredentialsConnectionString(this.connectionString);

  final Sensitive<String> connectionString;

  @internal
  @override
  String get blockKey => 'connection_string';

  @internal
  @override
  Map<String, Object?> encode() => {
    'connection_string': connectionString.toTfJson(),
  };
}

/// The [ApiManagementLoggerCredentials.instrumentationKey] choice: sets `instrumentation_key`.
final class ApiManagementLoggerCredentialsInstrumentationKey
    extends ApiManagementLoggerCredentials {
  const ApiManagementLoggerCredentialsInstrumentationKey(
    this.instrumentationKey,
  );

  final Sensitive<String> instrumentationKey;

  @internal
  @override
  String get blockKey => 'instrumentation_key';

  @internal
  @override
  Map<String, Object?> encode() => {
    'instrumentation_key': instrumentationKey.toTfJson(),
  };
}

/// Typed helper for the `eventhub` block of
/// `azurerm_api_management_logger` (derived from provider schema).
@immutable
final class ApiManagementLoggerEventhub {
  const ApiManagementLoggerEventhub({
    required this.connection,
    required this.name,
    this.userAssignedIdentityClientId,
  });

  final ApiManagementLoggerConnection connection;

  final TfArg<String> name;

  final TfArg<String>? userAssignedIdentityClientId;

  @internal
  Map<String, Object?> encode() => {
    ...connection.encode(),
    'name': name.toTfJson(),
    'user_assigned_identity_client_id': ?userAssignedIdentityClientId
        ?.toTfJson(),
  };
}

/// Exactly one of `connection_string`, `endpoint_uri` on the `eventhub` block of `azurerm_api_management_logger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class ApiManagementLoggerConnection {
  const ApiManagementLoggerConnection();

  /// Sets `connection_string`.
  const factory ApiManagementLoggerConnection.connectionString(
    Sensitive<String> connectionString,
  ) = ApiManagementLoggerConnectionString;

  /// Sets `endpoint_uri`.
  const factory ApiManagementLoggerConnection.endpointUri(
    TfArg<String> endpointUri,
  ) = ApiManagementLoggerConnectionEndpointUri;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ApiManagementLoggerConnection.connectionString] choice: sets `connection_string`.
final class ApiManagementLoggerConnectionString
    extends ApiManagementLoggerConnection {
  const ApiManagementLoggerConnectionString(this.connectionString);

  final Sensitive<String> connectionString;

  @internal
  @override
  String get blockKey => 'connection_string';

  @internal
  @override
  Map<String, Object?> encode() => {
    'connection_string': connectionString.toTfJson(),
  };
}

/// The [ApiManagementLoggerConnection.endpointUri] choice: sets `endpoint_uri`.
final class ApiManagementLoggerConnectionEndpointUri
    extends ApiManagementLoggerConnection {
  const ApiManagementLoggerConnectionEndpointUri(this.endpointUri);

  final TfArg<String> endpointUri;

  @internal
  @override
  String get blockKey => 'endpoint_uri';

  @internal
  @override
  Map<String, Object?> encode() => {'endpoint_uri': endpointUri.toTfJson()};
}

/// Factory wrapper for `azurerm_api_management_logger`.
final class AzurermApiManagementLogger extends Resource {
  static const String tfType = 'azurerm_api_management_logger';

  AzurermApiManagementLogger(
    super.localName, {
    required TfArg<String> apiManagementName,
    TfArg<bool>? buffered,
    TfArg<String>? description,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? resourceId,
    ApiManagementLoggerTarget? target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'buffered': ?buffered,
           'description': ?description,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'resource_id': ?resourceId,
           ...?target?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementLoggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementLogger>`.
  RefTo<AzurermApiManagementLogger> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `buffered` attribute.
  TfRef<bool> get buffered => TfRef.attribute<bool>(this, 'buffered');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');
}

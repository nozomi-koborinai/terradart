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
sealed class ApiManagementLoggerApplicationInsightsOrEventhub {
  const ApiManagementLoggerApplicationInsightsOrEventhub();

  /// Sets `application_insights`.
  const factory ApiManagementLoggerApplicationInsightsOrEventhub.applicationInsights(
    ApiManagementLoggerApplicationInsights applicationInsights,
  ) = ApiManagementLoggerApplicationInsightsOrEventhubApplicationInsights;

  /// Sets `eventhub`.
  const factory ApiManagementLoggerApplicationInsightsOrEventhub.eventhub(
    ApiManagementLoggerEventhub eventhub,
  ) = ApiManagementLoggerApplicationInsightsOrEventhubChoice;

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

/// The [ApiManagementLoggerApplicationInsightsOrEventhub.applicationInsights] choice: sets `application_insights`.
final class ApiManagementLoggerApplicationInsightsOrEventhubApplicationInsights
    extends ApiManagementLoggerApplicationInsightsOrEventhub {
  const ApiManagementLoggerApplicationInsightsOrEventhubApplicationInsights(
    this.applicationInsights,
  );

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

/// The [ApiManagementLoggerApplicationInsightsOrEventhub.eventhub] choice: sets `eventhub`.
final class ApiManagementLoggerApplicationInsightsOrEventhubChoice
    extends ApiManagementLoggerApplicationInsightsOrEventhub {
  const ApiManagementLoggerApplicationInsightsOrEventhubChoice(this.eventhub);

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
    required this.connectionStringOrInstrumentationKey,
    this.identityClientId,
  });

  final ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey
  connectionStringOrInstrumentationKey;

  final TfArg<String>? identityClientId;

  @internal
  Map<String, Object?> encode() => {
    ...connectionStringOrInstrumentationKey.encode(),
    'identity_client_id': ?identityClientId?.toTfJson(),
  };
}

/// Exactly one of `connection_string`, `instrumentation_key` on the `application_insights` block of `azurerm_api_management_logger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey {
  const ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey();

  /// Sets `connection_string`.
  const factory ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey.connectionString(
    Sensitive<String> connectionString,
  ) = ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKeyConnectionString;

  /// Sets `instrumentation_key`.
  const factory ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey.instrumentationKey(
    Sensitive<String> instrumentationKey,
  ) = ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKeyChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey.connectionString] choice: sets `connection_string`.
final class ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKeyConnectionString
    extends
        ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey {
  const ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKeyConnectionString(
    this.connectionString,
  );

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

/// The [ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey.instrumentationKey] choice: sets `instrumentation_key`.
final class ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKeyChoice
    extends
        ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKey {
  const ApiManagementLoggerApplicationInsightsConnectionStringOrInstrumentationKeyChoice(
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
    required this.connectionStringOrEndpointUri,
    required this.name,
    this.userAssignedIdentityClientId,
  });

  final ApiManagementLoggerEventhubConnectionStringOrEndpointUri
  connectionStringOrEndpointUri;

  final TfArg<String> name;

  final TfArg<String>? userAssignedIdentityClientId;

  @internal
  Map<String, Object?> encode() => {
    ...connectionStringOrEndpointUri.encode(),
    'name': name.toTfJson(),
    'user_assigned_identity_client_id': ?userAssignedIdentityClientId
        ?.toTfJson(),
  };
}

/// Exactly one of `connection_string`, `endpoint_uri` on the `eventhub` block of `azurerm_api_management_logger`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class ApiManagementLoggerEventhubConnectionStringOrEndpointUri {
  const ApiManagementLoggerEventhubConnectionStringOrEndpointUri();

  /// Sets `connection_string`.
  const factory ApiManagementLoggerEventhubConnectionStringOrEndpointUri.connectionString(
    Sensitive<String> connectionString,
  ) = ApiManagementLoggerEventhubConnectionStringOrEndpointUriConnectionString;

  /// Sets `endpoint_uri`.
  const factory ApiManagementLoggerEventhubConnectionStringOrEndpointUri.endpointUri(
    TfArg<String> endpointUri,
  ) = ApiManagementLoggerEventhubConnectionStringOrEndpointUriChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ApiManagementLoggerEventhubConnectionStringOrEndpointUri.connectionString] choice: sets `connection_string`.
final class ApiManagementLoggerEventhubConnectionStringOrEndpointUriConnectionString
    extends ApiManagementLoggerEventhubConnectionStringOrEndpointUri {
  const ApiManagementLoggerEventhubConnectionStringOrEndpointUriConnectionString(
    this.connectionString,
  );

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

/// The [ApiManagementLoggerEventhubConnectionStringOrEndpointUri.endpointUri] choice: sets `endpoint_uri`.
final class ApiManagementLoggerEventhubConnectionStringOrEndpointUriChoice
    extends ApiManagementLoggerEventhubConnectionStringOrEndpointUri {
  const ApiManagementLoggerEventhubConnectionStringOrEndpointUriChoice(
    this.endpointUri,
  );

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
    ApiManagementLoggerApplicationInsightsOrEventhub?
    applicationInsightsOrEventhub,
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
           ...?applicationInsightsOrEventhub?.argMap,
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

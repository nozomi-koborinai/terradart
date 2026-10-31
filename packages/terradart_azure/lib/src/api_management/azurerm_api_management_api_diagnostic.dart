// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_api_diagnostic`.
const Set<String> _azurermApiManagementApiDiagnosticSensitive = <String>{};

/// Api Management Api Diagnostic Http Correlation enum for `http_correlation_protocol`.
extension type const ApiManagementApiDiagnosticHttpCorrelationProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementApiDiagnosticHttpCorrelationProtocol.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementApiDiagnosticHttpCorrelationProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiDiagnosticHttpCorrelationProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const legacy = ApiManagementApiDiagnosticHttpCorrelationProtocol._(
    TfArgLiteral('Legacy'),
  );
  static const none = ApiManagementApiDiagnosticHttpCorrelationProtocol._(
    TfArgLiteral('None'),
  );
  static const w3c = ApiManagementApiDiagnosticHttpCorrelationProtocol._(
    TfArgLiteral('W3C'),
  );

  static const List<ApiManagementApiDiagnosticHttpCorrelationProtocol> values =
      [legacy, none, w3c];
}

/// Api Management Api Diagnostic enum for `identifier`.
extension type const ApiManagementApiDiagnosticIdentifier._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementApiDiagnosticIdentifier.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementApiDiagnosticIdentifier.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiDiagnosticIdentifier.arg(TfArg<String> arg)
    : this._(arg);

  static const applicationinsights = ApiManagementApiDiagnosticIdentifier._(
    TfArgLiteral('applicationinsights'),
  );
  static const azuremonitor = ApiManagementApiDiagnosticIdentifier._(
    TfArgLiteral('azuremonitor'),
  );

  static const List<ApiManagementApiDiagnosticIdentifier> values = [
    applicationinsights,
    azuremonitor,
  ];
}

/// Api Management Api Diagnostic Operation Name enum for `operation_name_format`.
extension type const ApiManagementApiDiagnosticOperationNameFormat._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementApiDiagnosticOperationNameFormat.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementApiDiagnosticOperationNameFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiDiagnosticOperationNameFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const name = ApiManagementApiDiagnosticOperationNameFormat._(
    TfArgLiteral('Name'),
  );
  static const url = ApiManagementApiDiagnosticOperationNameFormat._(
    TfArgLiteral('Url'),
  );

  static const List<ApiManagementApiDiagnosticOperationNameFormat> values = [
    name,
    url,
  ];
}

/// Api Management Api Diagnostic enum for `verbosity`.
extension type const ApiManagementApiDiagnosticVerbosity._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementApiDiagnosticVerbosity.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementApiDiagnosticVerbosity.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiDiagnosticVerbosity.arg(TfArg<String> arg)
    : this._(arg);

  static const error = ApiManagementApiDiagnosticVerbosity._(
    TfArgLiteral('error'),
  );
  static const information = ApiManagementApiDiagnosticVerbosity._(
    TfArgLiteral('information'),
  );
  static const verbose = ApiManagementApiDiagnosticVerbosity._(
    TfArgLiteral('verbose'),
  );

  static const List<ApiManagementApiDiagnosticVerbosity> values = [
    error,
    information,
    verbose,
  ];
}

/// Typed helper for the `backend_request` block of
/// `azurerm_api_management_api_diagnostic` (derived from provider schema).
@immutable
final class ApiManagementApiDiagnosticBackendRequest {
  const ApiManagementApiDiagnosticBackendRequest({
    this.bodyBytes,
    this.headersToLog,
    this.dataMasking,
  });

  final TfArg<num>? bodyBytes;

  final TfArg<List<String>>? headersToLog;

  final ApiManagementApiDiagnosticDataMasking? dataMasking;

  @internal
  Map<String, Object?> encode() => {
    'body_bytes': ?bodyBytes?.toTfJson(),
    'headers_to_log': ?headersToLog?.toTfJson(),
    'data_masking': ?dataMasking?.encode(),
  };
}

/// Typed helper for the `backend_request.data_masking` block of
/// `azurerm_api_management_api_diagnostic` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementApiDiagnosticDataMasking {
  const ApiManagementApiDiagnosticDataMasking({this.headers, this.queryParams});

  final List<ApiManagementApiDiagnosticHeaders>? headers;

  final List<ApiManagementApiDiagnosticQueryParams>? queryParams;

  @internal
  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (queryParams != null)
      'query_params': [for (final e in queryParams!) e.encode()],
  };
}

/// Typed helper for the `backend_request.data_masking.headers` block of
/// `azurerm_api_management_api_diagnostic` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementApiDiagnosticHeaders {
  const ApiManagementApiDiagnosticHeaders({
    required this.mode,
    required this.value,
  });

  final ApiManagementApiDiagnosticMode mode;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const ApiManagementApiDiagnosticMode._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementApiDiagnosticMode.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementApiDiagnosticMode.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiDiagnosticMode.arg(TfArg<String> arg) : this._(arg);

  static const hide = ApiManagementApiDiagnosticMode._(TfArgLiteral('Hide'));
  static const mask = ApiManagementApiDiagnosticMode._(TfArgLiteral('Mask'));

  static const List<ApiManagementApiDiagnosticMode> values = [hide, mask];
}

/// Typed helper for the `backend_request.data_masking.query_params` block of
/// `azurerm_api_management_api_diagnostic` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementApiDiagnosticQueryParams {
  const ApiManagementApiDiagnosticQueryParams({
    required this.mode,
    required this.value,
  });

  final ApiManagementApiDiagnosticMode mode;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `backend_response` block of
/// `azurerm_api_management_api_diagnostic` (derived from provider schema).
@immutable
final class ApiManagementApiDiagnosticBackendResponse {
  const ApiManagementApiDiagnosticBackendResponse({
    this.bodyBytes,
    this.headersToLog,
    this.dataMasking,
  });

  final TfArg<num>? bodyBytes;

  final TfArg<List<String>>? headersToLog;

  final ApiManagementApiDiagnosticDataMasking? dataMasking;

  @internal
  Map<String, Object?> encode() => {
    'body_bytes': ?bodyBytes?.toTfJson(),
    'headers_to_log': ?headersToLog?.toTfJson(),
    'data_masking': ?dataMasking?.encode(),
  };
}

/// Typed helper for the `frontend_request` block of
/// `azurerm_api_management_api_diagnostic` (derived from provider schema).
@immutable
final class ApiManagementApiDiagnosticFrontendRequest {
  const ApiManagementApiDiagnosticFrontendRequest({
    this.bodyBytes,
    this.headersToLog,
    this.dataMasking,
  });

  final TfArg<num>? bodyBytes;

  final TfArg<List<String>>? headersToLog;

  final ApiManagementApiDiagnosticDataMasking? dataMasking;

  @internal
  Map<String, Object?> encode() => {
    'body_bytes': ?bodyBytes?.toTfJson(),
    'headers_to_log': ?headersToLog?.toTfJson(),
    'data_masking': ?dataMasking?.encode(),
  };
}

/// Typed helper for the `frontend_response` block of
/// `azurerm_api_management_api_diagnostic` (derived from provider schema).
@immutable
final class ApiManagementApiDiagnosticFrontendResponse {
  const ApiManagementApiDiagnosticFrontendResponse({
    this.bodyBytes,
    this.headersToLog,
    this.dataMasking,
  });

  final TfArg<num>? bodyBytes;

  final TfArg<List<String>>? headersToLog;

  final ApiManagementApiDiagnosticDataMasking? dataMasking;

  @internal
  Map<String, Object?> encode() => {
    'body_bytes': ?bodyBytes?.toTfJson(),
    'headers_to_log': ?headersToLog?.toTfJson(),
    'data_masking': ?dataMasking?.encode(),
  };
}

/// Factory wrapper for `azurerm_api_management_api_diagnostic`.
final class AzurermApiManagementApiDiagnostic extends Resource {
  static const String tfType = 'azurerm_api_management_api_diagnostic';

  AzurermApiManagementApiDiagnostic(
    super.localName, {
    TfArg<bool>? alwaysLogErrors,
    required TfArg<String> apiManagementLoggerId,
    required TfArg<String> apiManagementName,
    required TfArg<String> apiName,
    ApiManagementApiDiagnosticHttpCorrelationProtocol? httpCorrelationProtocol,
    required ApiManagementApiDiagnosticIdentifier identifier,
    TfArg<bool>? logClientIp,
    TfArg<bool>? metricsEnabled,
    ApiManagementApiDiagnosticOperationNameFormat? operationNameFormat,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? samplingPercentage,
    ApiManagementApiDiagnosticVerbosity? verbosity,
    ApiManagementApiDiagnosticBackendRequest? backendRequest,
    ApiManagementApiDiagnosticBackendResponse? backendResponse,
    ApiManagementApiDiagnosticFrontendRequest? frontendRequest,
    ApiManagementApiDiagnosticFrontendResponse? frontendResponse,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'always_log_errors': ?alwaysLogErrors,
           'api_management_logger_id': apiManagementLoggerId,
           'api_management_name': apiManagementName,
           'api_name': apiName,
           'http_correlation_protocol': ?httpCorrelationProtocol,
           'identifier': identifier,
           'log_client_ip': ?logClientIp,
           'metrics_enabled': ?metricsEnabled,
           'operation_name_format': ?operationNameFormat,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sampling_percentage': ?samplingPercentage,
           'verbosity': ?verbosity,
           if (backendRequest != null)
             'backend_request': TfArg.literal(backendRequest.encode()),
           if (backendResponse != null)
             'backend_response': TfArg.literal(backendResponse.encode()),
           if (frontendRequest != null)
             'frontend_request': TfArg.literal(frontendRequest.encode()),
           if (frontendResponse != null)
             'frontend_response': TfArg.literal(frontendResponse.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementApiDiagnosticSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementApiDiagnostic>`.
  RefTo<AzurermApiManagementApiDiagnostic> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `always_log_errors` attribute.
  TfRef<bool> get alwaysLogErrors =>
      TfRef.attribute<bool>(this, 'always_log_errors');

  /// Reference to `api_management_logger_id` attribute.
  TfRef<String> get apiManagementLoggerId =>
      TfRef.attribute<String>(this, 'api_management_logger_id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `api_name` attribute.
  TfRef<String> get apiName => TfRef.attribute<String>(this, 'api_name');

  /// Reference to `http_correlation_protocol` attribute.
  TfRef<String> get httpCorrelationProtocol =>
      TfRef.attribute<String>(this, 'http_correlation_protocol');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `log_client_ip` attribute.
  TfRef<bool> get logClientIp => TfRef.attribute<bool>(this, 'log_client_ip');

  /// Reference to `metrics_enabled` attribute.
  TfRef<bool> get metricsEnabled =>
      TfRef.attribute<bool>(this, 'metrics_enabled');

  /// Reference to `operation_name_format` attribute.
  TfRef<String> get operationNameFormat =>
      TfRef.attribute<String>(this, 'operation_name_format');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sampling_percentage` attribute.
  TfRef<num> get samplingPercentage =>
      TfRef.attribute<num>(this, 'sampling_percentage');

  /// Reference to `verbosity` attribute.
  TfRef<String> get verbosity => TfRef.attribute<String>(this, 'verbosity');
}

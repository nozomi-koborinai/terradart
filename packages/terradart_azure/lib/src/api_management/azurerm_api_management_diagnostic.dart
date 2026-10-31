// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_diagnostic`.
const Set<String> _azurermApiManagementDiagnosticSensitive = <String>{};

/// Api Management Diagnostic Http Correlation enum for `http_correlation_protocol`.
extension type const ApiManagementDiagnosticHttpCorrelationProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementDiagnosticHttpCorrelationProtocol.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementDiagnosticHttpCorrelationProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementDiagnosticHttpCorrelationProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const legacy = ApiManagementDiagnosticHttpCorrelationProtocol._(
    TfArgLiteral('Legacy'),
  );
  static const none = ApiManagementDiagnosticHttpCorrelationProtocol._(
    TfArgLiteral('None'),
  );
  static const w3c = ApiManagementDiagnosticHttpCorrelationProtocol._(
    TfArgLiteral('W3C'),
  );

  static const List<ApiManagementDiagnosticHttpCorrelationProtocol> values = [
    legacy,
    none,
    w3c,
  ];
}

/// Api Management Diagnostic enum for `identifier`.
extension type const ApiManagementDiagnosticIdentifier._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementDiagnosticIdentifier.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementDiagnosticIdentifier.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementDiagnosticIdentifier.arg(TfArg<String> arg) : this._(arg);

  static const applicationinsights = ApiManagementDiagnosticIdentifier._(
    TfArgLiteral('applicationinsights'),
  );
  static const azuremonitor = ApiManagementDiagnosticIdentifier._(
    TfArgLiteral('azuremonitor'),
  );

  static const List<ApiManagementDiagnosticIdentifier> values = [
    applicationinsights,
    azuremonitor,
  ];
}

/// Api Management Diagnostic Operation Name enum for `operation_name_format`.
extension type const ApiManagementDiagnosticOperationNameFormat._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementDiagnosticOperationNameFormat.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementDiagnosticOperationNameFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementDiagnosticOperationNameFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const name = ApiManagementDiagnosticOperationNameFormat._(
    TfArgLiteral('Name'),
  );
  static const url = ApiManagementDiagnosticOperationNameFormat._(
    TfArgLiteral('Url'),
  );

  static const List<ApiManagementDiagnosticOperationNameFormat> values = [
    name,
    url,
  ];
}

/// Api Management Diagnostic enum for `verbosity`.
extension type const ApiManagementDiagnosticVerbosity._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementDiagnosticVerbosity.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementDiagnosticVerbosity.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementDiagnosticVerbosity.arg(TfArg<String> arg) : this._(arg);

  static const error = ApiManagementDiagnosticVerbosity._(
    TfArgLiteral('error'),
  );
  static const information = ApiManagementDiagnosticVerbosity._(
    TfArgLiteral('information'),
  );
  static const verbose = ApiManagementDiagnosticVerbosity._(
    TfArgLiteral('verbose'),
  );

  static const List<ApiManagementDiagnosticVerbosity> values = [
    error,
    information,
    verbose,
  ];
}

/// Typed helper for the `backend_request` block of
/// `azurerm_api_management_diagnostic` (derived from provider schema).
@immutable
final class ApiManagementDiagnosticBackendRequest {
  const ApiManagementDiagnosticBackendRequest({
    this.bodyBytes,
    this.headersToLog,
    this.dataMasking,
  });

  final TfArg<num>? bodyBytes;

  final TfArg<List<String>>? headersToLog;

  final ApiManagementDiagnosticDataMasking? dataMasking;

  @internal
  Map<String, Object?> encode() => {
    'body_bytes': ?bodyBytes?.toTfJson(),
    'headers_to_log': ?headersToLog?.toTfJson(),
    'data_masking': ?dataMasking?.encode(),
  };
}

/// Typed helper for the `backend_request.data_masking` block of
/// `azurerm_api_management_diagnostic` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementDiagnosticDataMasking {
  const ApiManagementDiagnosticDataMasking({this.headers, this.queryParams});

  final List<ApiManagementDiagnosticHeaders>? headers;

  final List<ApiManagementDiagnosticQueryParams>? queryParams;

  @internal
  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (queryParams != null)
      'query_params': [for (final e in queryParams!) e.encode()],
  };
}

/// Typed helper for the `backend_request.data_masking.headers` block of
/// `azurerm_api_management_diagnostic` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementDiagnosticHeaders {
  const ApiManagementDiagnosticHeaders({
    required this.mode,
    required this.value,
  });

  final ApiManagementDiagnosticMode mode;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const ApiManagementDiagnosticMode._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementDiagnosticMode.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementDiagnosticMode.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementDiagnosticMode.arg(TfArg<String> arg) : this._(arg);

  static const hide = ApiManagementDiagnosticMode._(TfArgLiteral('Hide'));
  static const mask = ApiManagementDiagnosticMode._(TfArgLiteral('Mask'));

  static const List<ApiManagementDiagnosticMode> values = [hide, mask];
}

/// Typed helper for the `backend_request.data_masking.query_params` block of
/// `azurerm_api_management_diagnostic` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApiManagementDiagnosticQueryParams {
  const ApiManagementDiagnosticQueryParams({
    required this.mode,
    required this.value,
  });

  final ApiManagementDiagnosticMode mode;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `backend_response` block of
/// `azurerm_api_management_diagnostic` (derived from provider schema).
@immutable
final class ApiManagementDiagnosticBackendResponse {
  const ApiManagementDiagnosticBackendResponse({
    this.bodyBytes,
    this.headersToLog,
    this.dataMasking,
  });

  final TfArg<num>? bodyBytes;

  final TfArg<List<String>>? headersToLog;

  final ApiManagementDiagnosticDataMasking? dataMasking;

  @internal
  Map<String, Object?> encode() => {
    'body_bytes': ?bodyBytes?.toTfJson(),
    'headers_to_log': ?headersToLog?.toTfJson(),
    'data_masking': ?dataMasking?.encode(),
  };
}

/// Typed helper for the `frontend_request` block of
/// `azurerm_api_management_diagnostic` (derived from provider schema).
@immutable
final class ApiManagementDiagnosticFrontendRequest {
  const ApiManagementDiagnosticFrontendRequest({
    this.bodyBytes,
    this.headersToLog,
    this.dataMasking,
  });

  final TfArg<num>? bodyBytes;

  final TfArg<List<String>>? headersToLog;

  final ApiManagementDiagnosticDataMasking? dataMasking;

  @internal
  Map<String, Object?> encode() => {
    'body_bytes': ?bodyBytes?.toTfJson(),
    'headers_to_log': ?headersToLog?.toTfJson(),
    'data_masking': ?dataMasking?.encode(),
  };
}

/// Typed helper for the `frontend_response` block of
/// `azurerm_api_management_diagnostic` (derived from provider schema).
@immutable
final class ApiManagementDiagnosticFrontendResponse {
  const ApiManagementDiagnosticFrontendResponse({
    this.bodyBytes,
    this.headersToLog,
    this.dataMasking,
  });

  final TfArg<num>? bodyBytes;

  final TfArg<List<String>>? headersToLog;

  final ApiManagementDiagnosticDataMasking? dataMasking;

  @internal
  Map<String, Object?> encode() => {
    'body_bytes': ?bodyBytes?.toTfJson(),
    'headers_to_log': ?headersToLog?.toTfJson(),
    'data_masking': ?dataMasking?.encode(),
  };
}

/// Factory wrapper for `azurerm_api_management_diagnostic`.
final class AzurermApiManagementDiagnostic extends Resource {
  static const String tfType = 'azurerm_api_management_diagnostic';

  AzurermApiManagementDiagnostic(
    super.localName, {
    TfArg<bool>? alwaysLogErrors,
    required TfArg<String> apiManagementLoggerId,
    required TfArg<String> apiManagementName,
    ApiManagementDiagnosticHttpCorrelationProtocol? httpCorrelationProtocol,
    required ApiManagementDiagnosticIdentifier identifier,
    TfArg<bool>? logClientIp,
    TfArg<bool>? metricsEnabled,
    ApiManagementDiagnosticOperationNameFormat? operationNameFormat,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? samplingPercentage,
    ApiManagementDiagnosticVerbosity? verbosity,
    ApiManagementDiagnosticBackendRequest? backendRequest,
    ApiManagementDiagnosticBackendResponse? backendResponse,
    ApiManagementDiagnosticFrontendRequest? frontendRequest,
    ApiManagementDiagnosticFrontendResponse? frontendResponse,
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
  Set<String> get sensitiveFields => _azurermApiManagementDiagnosticSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementDiagnostic>`.
  RefTo<AzurermApiManagementDiagnostic> get ref => RefTo.of(this);

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

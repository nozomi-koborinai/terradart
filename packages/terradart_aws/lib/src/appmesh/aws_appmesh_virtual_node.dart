// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_virtual_node`.
const Set<String> _awsAppmeshVirtualNodeSensitive = <String>{};

/// Typed helper for the `spec` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpec {
  const AppmeshVirtualNodeSpec({
    this.backend,
    this.backendDefaults,
    this.listener,
    this.logging,
    this.serviceDiscovery,
  });

  final List<AppmeshVirtualNodeBackend>? backend;

  final AppmeshVirtualNodeBackendDefaults? backendDefaults;

  final List<AppmeshVirtualNodeListener>? listener;

  final AppmeshVirtualNodeLogging? logging;

  final AppmeshVirtualNodeServiceDiscovery? serviceDiscovery;

  @internal
  Map<String, Object?> encode() => {
    if (backend != null) 'backend': [for (final e in backend!) e.encode()],
    'backend_defaults': ?backendDefaults?.encode(),
    if (listener != null) 'listener': [for (final e in listener!) e.encode()],
    'logging': ?logging?.encode(),
    'service_discovery': ?serviceDiscovery?.encode(),
  };
}

/// Typed helper for the `spec.backend` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeBackend {
  const AppmeshVirtualNodeBackend({required this.virtualService});

  final AppmeshVirtualNodeVirtualService virtualService;

  @internal
  Map<String, Object?> encode() => {'virtual_service': virtualService.encode()};
}

/// Typed helper for the `spec.backend.virtual_service` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeVirtualService {
  const AppmeshVirtualNodeVirtualService({
    required this.virtualServiceName,
    this.clientPolicy,
  });

  final TfArg<String> virtualServiceName;

  final AppmeshVirtualNodeClientPolicy? clientPolicy;

  @internal
  Map<String, Object?> encode() => {
    'virtual_service_name': virtualServiceName.toTfJson(),
    'client_policy': ?clientPolicy?.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeClientPolicy {
  const AppmeshVirtualNodeClientPolicy({this.tls});

  final AppmeshVirtualNodeClientPolicyTls? tls;

  @internal
  Map<String, Object?> encode() => {'tls': ?tls?.encode()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeClientPolicyTls {
  const AppmeshVirtualNodeClientPolicyTls({
    this.enforce,
    this.ports,
    this.certificate,
    required this.validation,
  });

  final TfArg<bool>? enforce;

  final TfArg<List<num>>? ports;

  final AppmeshVirtualNodeTlsCertificate? certificate;

  final AppmeshVirtualNodeTlsValidation validation;

  @internal
  Map<String, Object?> encode() => {
    'enforce': ?enforce?.toTfJson(),
    'ports': ?ports?.toTfJson(),
    'certificate': ?certificate?.encode(),
    'validation': validation.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.certificate` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeTlsCertificate {
  const AppmeshVirtualNodeTlsCertificate({this.file, this.sds});

  final AppmeshVirtualNodeCertificateFile? file;

  final AppmeshVirtualNodeSds? sds;

  @internal
  Map<String, Object?> encode() => {
    'file': ?file?.encode(),
    'sds': ?sds?.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeCertificateFile {
  const AppmeshVirtualNodeCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  final TfArg<String> certificateChain;

  final TfArg<String> privateKey;

  @internal
  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
    'private_key': privateKey.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.sds` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeSds {
  const AppmeshVirtualNodeSds({required this.secretName});

  final TfArg<String> secretName;

  @internal
  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeTlsValidation {
  const AppmeshVirtualNodeTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualNodeSubjectAlternativeNames? subjectAlternativeNames;

  final AppmeshVirtualNodeValidationTrust trust;

  @internal
  Map<String, Object?> encode() => {
    'subject_alternative_names': ?subjectAlternativeNames?.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.subject_alternative_names` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeSubjectAlternativeNames {
  const AppmeshVirtualNodeSubjectAlternativeNames({required this.match});

  final AppmeshVirtualNodeMatch match;

  @internal
  Map<String, Object?> encode() => {'match': match.encode()};
}

/// Typed helper for the `spec.listener.tls.validation.subject_alternative_names.match` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeMatch {
  const AppmeshVirtualNodeMatch({required this.exact});

  final TfArg<List<String>> exact;

  @internal
  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeValidationTrust {
  const AppmeshVirtualNodeValidationTrust({this.acm, this.file, this.sds});

  final AppmeshVirtualNodeTrustAcm? acm;

  final AppmeshVirtualNodeTrustFile? file;

  final AppmeshVirtualNodeSds? sds;

  @internal
  Map<String, Object?> encode() => {
    'acm': ?acm?.encode(),
    'file': ?file?.encode(),
    'sds': ?sds?.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust.acm` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeTrustAcm {
  const AppmeshVirtualNodeTrustAcm({required this.certificateAuthorityArns});

  final TfArg<List<String>> certificateAuthorityArns;

  @internal
  Map<String, Object?> encode() => {
    'certificate_authority_arns': certificateAuthorityArns.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.trust.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeTrustFile {
  const AppmeshVirtualNodeTrustFile({required this.certificateChain});

  final TfArg<String> certificateChain;

  @internal
  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
  };
}

/// Typed helper for the `spec.backend_defaults` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeBackendDefaults {
  const AppmeshVirtualNodeBackendDefaults({this.clientPolicy});

  final AppmeshVirtualNodeClientPolicy? clientPolicy;

  @internal
  Map<String, Object?> encode() => {'client_policy': ?clientPolicy?.encode()};
}

/// Typed helper for the `spec.listener` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeListener {
  const AppmeshVirtualNodeListener({
    this.connectionPool,
    this.healthCheck,
    this.outlierDetection,
    required this.portMapping,
    this.timeout,
    this.tls,
  });

  final AppmeshVirtualNodeConnectionPool? connectionPool;

  final AppmeshVirtualNodeHealthCheck? healthCheck;

  final AppmeshVirtualNodeOutlierDetection? outlierDetection;

  final AppmeshVirtualNodePortMapping portMapping;

  final AppmeshVirtualNodeTimeout? timeout;

  final AppmeshVirtualNodeTls? tls;

  @internal
  Map<String, Object?> encode() => {
    'connection_pool': ?connectionPool?.encode(),
    'health_check': ?healthCheck?.encode(),
    'outlier_detection': ?outlierDetection?.encode(),
    'port_mapping': portMapping.encode(),
    'timeout': ?timeout?.encode(),
    'tls': ?tls?.encode(),
  };
}

/// Typed helper for the `spec.listener.connection_pool` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeConnectionPool {
  const AppmeshVirtualNodeConnectionPool({
    this.grpc,
    this.http,
    this.http2,
    this.tcp,
  });

  final AppmeshVirtualNodeConnectionPoolGrpc? grpc;

  final List<AppmeshVirtualNodeConnectionPoolHttp>? http;

  final List<AppmeshVirtualNodeConnectionPoolHttp2>? http2;

  final List<AppmeshVirtualNodeConnectionPoolTcp>? tcp;

  @internal
  Map<String, Object?> encode() => {
    'grpc': ?grpc?.encode(),
    if (http != null) 'http': [for (final e in http!) e.encode()],
    if (http2 != null) 'http2': [for (final e in http2!) e.encode()],
    if (tcp != null) 'tcp': [for (final e in tcp!) e.encode()],
  };
}

/// Typed helper for the `spec.listener.connection_pool.grpc` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeConnectionPoolGrpc {
  const AppmeshVirtualNodeConnectionPoolGrpc({required this.maxRequests});

  final TfArg<num> maxRequests;

  @internal
  Map<String, Object?> encode() => {'max_requests': maxRequests.toTfJson()};
}

/// Typed helper for the `spec.listener.connection_pool.http` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeConnectionPoolHttp {
  const AppmeshVirtualNodeConnectionPoolHttp({
    required this.maxConnections,
    this.maxPendingRequests,
  });

  final TfArg<num> maxConnections;

  final TfArg<num>? maxPendingRequests;

  @internal
  Map<String, Object?> encode() => {
    'max_connections': maxConnections.toTfJson(),
    'max_pending_requests': ?maxPendingRequests?.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.connection_pool.http2` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeConnectionPoolHttp2 {
  const AppmeshVirtualNodeConnectionPoolHttp2({required this.maxRequests});

  final TfArg<num> maxRequests;

  @internal
  Map<String, Object?> encode() => {'max_requests': maxRequests.toTfJson()};
}

/// Typed helper for the `spec.listener.connection_pool.tcp` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeConnectionPoolTcp {
  const AppmeshVirtualNodeConnectionPoolTcp({required this.maxConnections});

  final TfArg<num> maxConnections;

  @internal
  Map<String, Object?> encode() => {
    'max_connections': maxConnections.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.health_check` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeHealthCheck {
  const AppmeshVirtualNodeHealthCheck({
    required this.healthyThreshold,
    required this.intervalMillis,
    this.path,
    this.port,
    required this.protocol,
    required this.timeoutMillis,
    required this.unhealthyThreshold,
  });

  final TfArg<num> healthyThreshold;

  final TfArg<num> intervalMillis;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final AppmeshVirtualNodeProtocol protocol;

  final TfArg<num> timeoutMillis;

  final TfArg<num> unhealthyThreshold;

  @internal
  Map<String, Object?> encode() => {
    'healthy_threshold': healthyThreshold.toTfJson(),
    'interval_millis': intervalMillis.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'timeout_millis': timeoutMillis.toTfJson(),
    'unhealthy_threshold': unhealthyThreshold.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const AppmeshVirtualNodeProtocol._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshVirtualNodeProtocol.variable(String name)
    : this._(TfArg.variable(name));
  AppmeshVirtualNodeProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshVirtualNodeProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = AppmeshVirtualNodeProtocol._(TfArgLiteral('http'));
  static const tcp = AppmeshVirtualNodeProtocol._(TfArgLiteral('tcp'));
  static const http2 = AppmeshVirtualNodeProtocol._(TfArgLiteral('http2'));
  static const grpc = AppmeshVirtualNodeProtocol._(TfArgLiteral('grpc'));

  static const List<AppmeshVirtualNodeProtocol> values = [
    http,
    tcp,
    http2,
    grpc,
  ];
}

/// Typed helper for the `spec.listener.outlier_detection` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeOutlierDetection {
  const AppmeshVirtualNodeOutlierDetection({
    required this.maxEjectionPercent,
    required this.maxServerErrors,
    required this.baseEjectionDuration,
    required this.interval,
  });

  final TfArg<num> maxEjectionPercent;

  final TfArg<num> maxServerErrors;

  final AppmeshVirtualNodeBaseEjectionDuration baseEjectionDuration;

  final AppmeshVirtualNodeInterval interval;

  @internal
  Map<String, Object?> encode() => {
    'max_ejection_percent': maxEjectionPercent.toTfJson(),
    'max_server_errors': maxServerErrors.toTfJson(),
    'base_ejection_duration': baseEjectionDuration.encode(),
    'interval': interval.encode(),
  };
}

/// Typed helper for the `spec.listener.outlier_detection.base_ejection_duration` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeBaseEjectionDuration {
  const AppmeshVirtualNodeBaseEjectionDuration({
    required this.unit,
    required this.value,
  });

  final AppmeshVirtualNodeUnit unit;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
extension type const AppmeshVirtualNodeUnit._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshVirtualNodeUnit.variable(String name) : this._(TfArg.variable(name));
  AppmeshVirtualNodeUnit.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshVirtualNodeUnit.arg(TfArg<String> arg) : this._(arg);

  static const s = AppmeshVirtualNodeUnit._(TfArgLiteral('s'));
  static const ms = AppmeshVirtualNodeUnit._(TfArgLiteral('ms'));

  static const List<AppmeshVirtualNodeUnit> values = [s, ms];
}

/// Typed helper for the `spec.listener.outlier_detection.interval` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeInterval {
  const AppmeshVirtualNodeInterval({required this.unit, required this.value});

  final AppmeshVirtualNodeUnit unit;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.port_mapping` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodePortMapping {
  const AppmeshVirtualNodePortMapping({
    required this.port,
    required this.protocol,
  });

  final TfArg<num> port;

  final AppmeshVirtualNodeProtocol protocol;

  @internal
  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeTimeout {
  const AppmeshVirtualNodeTimeout({this.grpc, this.http, this.http2, this.tcp});

  final AppmeshVirtualNodeTimeoutGrpc? grpc;

  final AppmeshVirtualNodeTimeoutHttp? http;

  final AppmeshVirtualNodeTimeoutHttp2? http2;

  final AppmeshVirtualNodeTimeoutTcp? tcp;

  @internal
  Map<String, Object?> encode() => {
    'grpc': ?grpc?.encode(),
    'http': ?http?.encode(),
    'http2': ?http2?.encode(),
    'tcp': ?tcp?.encode(),
  };
}

/// Typed helper for the `spec.listener.timeout.grpc` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeTimeoutGrpc {
  const AppmeshVirtualNodeTimeoutGrpc({this.idle, this.perRequest});

  final AppmeshVirtualNodeIdle? idle;

  final AppmeshVirtualNodePerRequest? perRequest;

  @internal
  Map<String, Object?> encode() => {
    'idle': ?idle?.encode(),
    'per_request': ?perRequest?.encode(),
  };
}

/// Typed helper for the `spec.listener.timeout.grpc.idle` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodeIdle {
  const AppmeshVirtualNodeIdle({required this.unit, required this.value});

  final AppmeshVirtualNodeUnit unit;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout.grpc.per_request` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualNodePerRequest {
  const AppmeshVirtualNodePerRequest({required this.unit, required this.value});

  final AppmeshVirtualNodeUnit unit;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout.http` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeTimeoutHttp {
  const AppmeshVirtualNodeTimeoutHttp({this.idle, this.perRequest});

  final AppmeshVirtualNodeIdle? idle;

  final AppmeshVirtualNodePerRequest? perRequest;

  @internal
  Map<String, Object?> encode() => {
    'idle': ?idle?.encode(),
    'per_request': ?perRequest?.encode(),
  };
}

/// Typed helper for the `spec.listener.timeout.http2` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeTimeoutHttp2 {
  const AppmeshVirtualNodeTimeoutHttp2({this.idle, this.perRequest});

  final AppmeshVirtualNodeIdle? idle;

  final AppmeshVirtualNodePerRequest? perRequest;

  @internal
  Map<String, Object?> encode() => {
    'idle': ?idle?.encode(),
    'per_request': ?perRequest?.encode(),
  };
}

/// Typed helper for the `spec.listener.timeout.tcp` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeTimeoutTcp {
  const AppmeshVirtualNodeTimeoutTcp({this.idle});

  final AppmeshVirtualNodeIdle? idle;

  @internal
  Map<String, Object?> encode() => {'idle': ?idle?.encode()};
}

/// Typed helper for the `spec.listener.tls` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeTls {
  const AppmeshVirtualNodeTls({
    required this.mode,
    required this.certificate,
    this.validation,
  });

  final AppmeshVirtualNodeMode mode;

  final AppmeshVirtualNodeCertificate certificate;

  final AppmeshVirtualNodeValidation? validation;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'certificate': certificate.encode(),
    'validation': ?validation?.encode(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const AppmeshVirtualNodeMode._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshVirtualNodeMode.variable(String name) : this._(TfArg.variable(name));
  AppmeshVirtualNodeMode.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshVirtualNodeMode.arg(TfArg<String> arg) : this._(arg);

  static const strict = AppmeshVirtualNodeMode._(TfArgLiteral('STRICT'));
  static const permissive = AppmeshVirtualNodeMode._(
    TfArgLiteral('PERMISSIVE'),
  );
  static const disabled = AppmeshVirtualNodeMode._(TfArgLiteral('DISABLED'));

  static const List<AppmeshVirtualNodeMode> values = [
    strict,
    permissive,
    disabled,
  ];
}

/// Typed helper for the `spec.listener.tls.certificate` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeCertificate {
  const AppmeshVirtualNodeCertificate({this.acm, this.file, this.sds});

  final AppmeshVirtualNodeAcm? acm;

  final AppmeshVirtualNodeCertificateFile? file;

  final AppmeshVirtualNodeSds? sds;

  @internal
  Map<String, Object?> encode() => {
    'acm': ?acm?.encode(),
    'file': ?file?.encode(),
    'sds': ?sds?.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.acm` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeAcm {
  const AppmeshVirtualNodeAcm({required this.certificateArn});

  final TfArg<String> certificateArn;

  @internal
  Map<String, Object?> encode() => {
    'certificate_arn': certificateArn.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.validation` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeValidation {
  const AppmeshVirtualNodeValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualNodeSubjectAlternativeNames? subjectAlternativeNames;

  final AppmeshVirtualNodeTrust trust;

  @internal
  Map<String, Object?> encode() => {
    'subject_alternative_names': ?subjectAlternativeNames?.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.trust` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeTrust {
  const AppmeshVirtualNodeTrust({this.file, this.sds});

  final AppmeshVirtualNodeTrustFile? file;

  final AppmeshVirtualNodeSds? sds;

  @internal
  Map<String, Object?> encode() => {
    'file': ?file?.encode(),
    'sds': ?sds?.encode(),
  };
}

/// Typed helper for the `spec.logging` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeLogging {
  const AppmeshVirtualNodeLogging({this.accessLog});

  final AppmeshVirtualNodeAccessLog? accessLog;

  @internal
  Map<String, Object?> encode() => {'access_log': ?accessLog?.encode()};
}

/// Typed helper for the `spec.logging.access_log` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeAccessLog {
  const AppmeshVirtualNodeAccessLog({this.file});

  final AppmeshVirtualNodeFile? file;

  @internal
  Map<String, Object?> encode() => {'file': ?file?.encode()};
}

/// Typed helper for the `spec.logging.access_log.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeFile {
  const AppmeshVirtualNodeFile({required this.path, this.format});

  final TfArg<String> path;

  final AppmeshVirtualNodeFormat? format;

  @internal
  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'format': ?format?.encode(),
  };
}

/// Typed helper for the `spec.logging.access_log.file.format` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeFormat {
  const AppmeshVirtualNodeFormat({this.text, this.json});

  final TfArg<String>? text;

  final List<AppmeshVirtualNodeJson>? json;

  @internal
  Map<String, Object?> encode() => {
    'text': ?text?.toTfJson(),
    if (json != null) 'json': [for (final e in json!) e.encode()],
  };
}

/// Typed helper for the `spec.logging.access_log.file.format.json` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeJson {
  const AppmeshVirtualNodeJson({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// At most one of `aws_cloud_map`, `dns` on the `spec.service_discovery` block of `aws_appmesh_virtual_node`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.awsCloudMap(...)`.
sealed class AppmeshVirtualNodeServiceDiscovery {
  const AppmeshVirtualNodeServiceDiscovery();

  /// Sets `aws_cloud_map`.
  const factory AppmeshVirtualNodeServiceDiscovery.awsCloudMap(
    AppmeshVirtualNodeAwsCloudMap awsCloudMap,
  ) = AppmeshVirtualNodeServiceDiscoveryAwsCloudMap;

  /// Sets `dns`.
  const factory AppmeshVirtualNodeServiceDiscovery.dns(
    AppmeshVirtualNodeDns dns,
  ) = AppmeshVirtualNodeServiceDiscoveryDns;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AppmeshVirtualNodeServiceDiscovery.awsCloudMap] choice: sets `aws_cloud_map`.
final class AppmeshVirtualNodeServiceDiscoveryAwsCloudMap
    extends AppmeshVirtualNodeServiceDiscovery {
  const AppmeshVirtualNodeServiceDiscoveryAwsCloudMap(this.awsCloudMap);

  final AppmeshVirtualNodeAwsCloudMap awsCloudMap;

  @internal
  @override
  String get blockKey => 'aws_cloud_map';

  @internal
  @override
  Map<String, Object?> encode() => {'aws_cloud_map': awsCloudMap.encode()};
}

/// The [AppmeshVirtualNodeServiceDiscovery.dns] choice: sets `dns`.
final class AppmeshVirtualNodeServiceDiscoveryDns
    extends AppmeshVirtualNodeServiceDiscovery {
  const AppmeshVirtualNodeServiceDiscoveryDns(this.dns);

  final AppmeshVirtualNodeDns dns;

  @internal
  @override
  String get blockKey => 'dns';

  @internal
  @override
  Map<String, Object?> encode() => {'dns': dns.encode()};
}

/// Typed helper for the `spec.service_discovery.aws_cloud_map` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeAwsCloudMap {
  const AppmeshVirtualNodeAwsCloudMap({
    this.attributes,
    required this.namespaceName,
    required this.serviceName,
  });

  final TfArg<Map<String, String>>? attributes;

  final TfArg<String> namespaceName;

  final TfArg<String> serviceName;

  @internal
  Map<String, Object?> encode() => {
    'attributes': ?attributes?.toTfJson(),
    'namespace_name': namespaceName.toTfJson(),
    'service_name': serviceName.toTfJson(),
  };
}

/// Typed helper for the `spec.service_discovery.dns` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeDns {
  const AppmeshVirtualNodeDns({
    required this.hostname,
    this.ipPreference,
    this.responseType,
  });

  final TfArg<String> hostname;

  final AppmeshVirtualNodeIpPreference? ipPreference;

  final AppmeshVirtualNodeResponseType? responseType;

  @internal
  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'ip_preference': ?ipPreference?.toTfJson(),
    'response_type': ?responseType?.toTfJson(),
  };
}

/// `ip_preference` — derived from the provider schema description.
extension type const AppmeshVirtualNodeIpPreference._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshVirtualNodeIpPreference.variable(String name)
    : this._(TfArg.variable(name));
  AppmeshVirtualNodeIpPreference.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshVirtualNodeIpPreference.arg(TfArg<String> arg) : this._(arg);

  static const ipv6Preferred = AppmeshVirtualNodeIpPreference._(
    TfArgLiteral('IPv6_PREFERRED'),
  );
  static const ipv4Preferred = AppmeshVirtualNodeIpPreference._(
    TfArgLiteral('IPv4_PREFERRED'),
  );
  static const ipv4Only = AppmeshVirtualNodeIpPreference._(
    TfArgLiteral('IPv4_ONLY'),
  );
  static const ipv6Only = AppmeshVirtualNodeIpPreference._(
    TfArgLiteral('IPv6_ONLY'),
  );

  static const List<AppmeshVirtualNodeIpPreference> values = [
    ipv6Preferred,
    ipv4Preferred,
    ipv4Only,
    ipv6Only,
  ];
}

/// `response_type` — derived from the provider schema description.
extension type const AppmeshVirtualNodeResponseType._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshVirtualNodeResponseType.variable(String name)
    : this._(TfArg.variable(name));
  AppmeshVirtualNodeResponseType.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshVirtualNodeResponseType.arg(TfArg<String> arg) : this._(arg);

  static const loadbalancer = AppmeshVirtualNodeResponseType._(
    TfArgLiteral('LOADBALANCER'),
  );
  static const endpoints = AppmeshVirtualNodeResponseType._(
    TfArgLiteral('ENDPOINTS'),
  );

  static const List<AppmeshVirtualNodeResponseType> values = [
    loadbalancer,
    endpoints,
  ];
}

/// Factory wrapper for `aws_appmesh_virtual_node`.
final class AwsAppmeshVirtualNode extends Resource {
  static const String tfType = 'aws_appmesh_virtual_node';

  AwsAppmeshVirtualNode(
    super.localName, {
    required TfArg<String> meshName,
    TfArg<String>? meshOwner,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required AppmeshVirtualNodeSpec spec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mesh_name': meshName,
           'mesh_owner': ?meshOwner,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshVirtualNodeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppmeshVirtualNode>`.
  RefTo<AwsAppmeshVirtualNode> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `mesh_name` attribute.
  TfRef<String> get meshName => TfRef.attribute<String>(this, 'mesh_name');

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwner => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

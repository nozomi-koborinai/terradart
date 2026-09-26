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

  final List<AppmeshVirtualNodeSpecBackend>? backend;

  final AppmeshVirtualNodeSpecBackendDefaults? backendDefaults;

  final List<AppmeshVirtualNodeSpecListener>? listener;

  final AppmeshVirtualNodeSpecLogging? logging;

  final AppmeshVirtualNodeSpecServiceDiscovery? serviceDiscovery;

  Map<String, Object?> encode() => {
    if (backend != null) 'backend': [for (final e in backend!) e.encode()],
    if (backendDefaults != null) 'backend_defaults': backendDefaults!.encode(),
    if (listener != null) 'listener': [for (final e in listener!) e.encode()],
    if (logging != null) 'logging': logging!.encode(),
    if (serviceDiscovery != null)
      'service_discovery': serviceDiscovery!.encode(),
  };
}

/// Typed helper for the `spec.backend` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackend {
  const AppmeshVirtualNodeSpecBackend({required this.virtualService});

  final AppmeshVirtualNodeSpecBackendVirtualService virtualService;

  Map<String, Object?> encode() => {'virtual_service': virtualService.encode()};
}

/// Typed helper for the `spec.backend.virtual_service` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualService {
  const AppmeshVirtualNodeSpecBackendVirtualService({
    required this.virtualServiceName,
    this.clientPolicy,
  });

  final TfArg<String> virtualServiceName;

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicy? clientPolicy;

  Map<String, Object?> encode() => {
    'virtual_service_name': virtualServiceName.toTfJson(),
    if (clientPolicy != null) 'client_policy': clientPolicy!.encode(),
  };
}

/// Typed helper for the `spec.backend.virtual_service.client_policy` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicy {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicy({this.tls});

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTls? tls;

  Map<String, Object?> encode() => {if (tls != null) 'tls': tls!.encode()};
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTls {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTls({
    this.enforce,
    this.ports,
    this.certificate,
    required this.validation,
  });

  final TfArg<bool>? enforce;

  final TfArg<List<Object?>>? ports;

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate?
  certificate;

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation
  validation;

  Map<String, Object?> encode() => {
    if (enforce != null) 'enforce': enforce!.toTfJson(),
    if (ports != null) 'ports': ports!.toTfJson(),
    if (certificate != null) 'certificate': certificate!.encode(),
    'validation': validation.encode(),
  };
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.certificate` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate({
    this.file,
    this.sds,
  });

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile?
  file;

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds?
  sds;

  Map<String, Object?> encode() => {
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.certificate.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  final TfArg<String> certificateChain;

  final TfArg<String> privateKey;

  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
    'private_key': privateKey.toTfJson(),
  };
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.certificate.sds` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.validation` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames?
  subjectAlternativeNames;

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust
  trust;

  Map<String, Object?> encode() => {
    if (subjectAlternativeNames != null)
      'subject_alternative_names': subjectAlternativeNames!.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.validation.subject_alternative_names` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch
  match;

  Map<String, Object?> encode() => {'match': match.encode()};
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.validation.subject_alternative_names.match` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch({
    required this.exact,
  });

  final TfArg<List<Object?>> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.validation.trust` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust({
    this.acm,
    this.file,
    this.sds,
  });

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm?
  acm;

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile?
  file;

  final AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds?
  sds;

  Map<String, Object?> encode() => {
    if (acm != null) 'acm': acm!.encode(),
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.validation.trust.acm` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  final TfArg<List<Object?>> certificateAuthorityArns;

  Map<String, Object?> encode() => {
    'certificate_authority_arns': certificateAuthorityArns.toTfJson(),
  };
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.validation.trust.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile({
    required this.certificateChain,
  });

  final TfArg<String> certificateChain;

  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
  };
}

/// Typed helper for the `spec.backend.virtual_service.client_policy.tls.validation.trust.sds` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds {
  const AppmeshVirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.backend_defaults` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaults {
  const AppmeshVirtualNodeSpecBackendDefaults({this.clientPolicy});

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicy? clientPolicy;

  Map<String, Object?> encode() => {
    if (clientPolicy != null) 'client_policy': clientPolicy!.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicy {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicy({this.tls});

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTls? tls;

  Map<String, Object?> encode() => {if (tls != null) 'tls': tls!.encode()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTls {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTls({
    this.enforce,
    this.ports,
    this.certificate,
    required this.validation,
  });

  final TfArg<bool>? enforce;

  final TfArg<List<Object?>>? ports;

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate?
  certificate;

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidation
  validation;

  Map<String, Object?> encode() => {
    if (enforce != null) 'enforce': enforce!.toTfJson(),
    if (ports != null) 'ports': ports!.toTfJson(),
    if (certificate != null) 'certificate': certificate!.encode(),
    'validation': validation.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.certificate` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate({
    this.file,
    this.sds,
  });

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile?
  file;

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds? sds;

  Map<String, Object?> encode() => {
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.certificate.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  final TfArg<String> certificateChain;

  final TfArg<String> privateKey;

  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
    'private_key': privateKey.toTfJson(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.certificate.sds` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidation {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames?
  subjectAlternativeNames;

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust
  trust;

  Map<String, Object?> encode() => {
    if (subjectAlternativeNames != null)
      'subject_alternative_names': subjectAlternativeNames!.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.subject_alternative_names` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch
  match;

  Map<String, Object?> encode() => {'match': match.encode()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch({
    required this.exact,
  });

  final TfArg<List<Object?>> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust({
    this.acm,
    this.file,
    this.sds,
  });

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm?
  acm;

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile?
  file;

  final AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds?
  sds;

  Map<String, Object?> encode() => {
    if (acm != null) 'acm': acm!.encode(),
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust.acm` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  final TfArg<List<Object?>> certificateAuthorityArns;

  Map<String, Object?> encode() => {
    'certificate_authority_arns': certificateAuthorityArns.toTfJson(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile({
    required this.certificateChain,
  });

  final TfArg<String> certificateChain;

  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust.sds` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds {
  const AppmeshVirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.listener` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListener {
  const AppmeshVirtualNodeSpecListener({
    this.connectionPool,
    this.healthCheck,
    this.outlierDetection,
    required this.portMapping,
    this.timeout,
    this.tls,
  });

  final AppmeshVirtualNodeSpecListenerConnectionPool? connectionPool;

  final AppmeshVirtualNodeSpecListenerHealthCheck? healthCheck;

  final AppmeshVirtualNodeSpecListenerOutlierDetection? outlierDetection;

  final AppmeshVirtualNodeSpecListenerPortMapping portMapping;

  final AppmeshVirtualNodeSpecListenerTimeout? timeout;

  final AppmeshVirtualNodeSpecListenerTls? tls;

  Map<String, Object?> encode() => {
    if (connectionPool != null) 'connection_pool': connectionPool!.encode(),
    if (healthCheck != null) 'health_check': healthCheck!.encode(),
    if (outlierDetection != null)
      'outlier_detection': outlierDetection!.encode(),
    'port_mapping': portMapping.encode(),
    if (timeout != null) 'timeout': timeout!.encode(),
    if (tls != null) 'tls': tls!.encode(),
  };
}

/// Typed helper for the `spec.listener.connection_pool` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerConnectionPool {
  const AppmeshVirtualNodeSpecListenerConnectionPool({
    this.grpc,
    this.http,
    this.http2,
    this.tcp,
  });

  final AppmeshVirtualNodeSpecListenerConnectionPoolGrpc? grpc;

  final List<AppmeshVirtualNodeSpecListenerConnectionPoolHttp>? http;

  final List<AppmeshVirtualNodeSpecListenerConnectionPoolHttp2>? http2;

  final List<AppmeshVirtualNodeSpecListenerConnectionPoolTcp>? tcp;

  Map<String, Object?> encode() => {
    if (grpc != null) 'grpc': grpc!.encode(),
    if (http != null) 'http': [for (final e in http!) e.encode()],
    if (http2 != null) 'http2': [for (final e in http2!) e.encode()],
    if (tcp != null) 'tcp': [for (final e in tcp!) e.encode()],
  };
}

/// Typed helper for the `spec.listener.connection_pool.grpc` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerConnectionPoolGrpc {
  const AppmeshVirtualNodeSpecListenerConnectionPoolGrpc({
    required this.maxRequests,
  });

  final TfArg<num> maxRequests;

  Map<String, Object?> encode() => {'max_requests': maxRequests.toTfJson()};
}

/// Typed helper for the `spec.listener.connection_pool.http` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerConnectionPoolHttp {
  const AppmeshVirtualNodeSpecListenerConnectionPoolHttp({
    required this.maxConnections,
    this.maxPendingRequests,
  });

  final TfArg<num> maxConnections;

  final TfArg<num>? maxPendingRequests;

  Map<String, Object?> encode() => {
    'max_connections': maxConnections.toTfJson(),
    if (maxPendingRequests != null)
      'max_pending_requests': maxPendingRequests!.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.connection_pool.http2` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerConnectionPoolHttp2 {
  const AppmeshVirtualNodeSpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  final TfArg<num> maxRequests;

  Map<String, Object?> encode() => {'max_requests': maxRequests.toTfJson()};
}

/// Typed helper for the `spec.listener.connection_pool.tcp` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerConnectionPoolTcp {
  const AppmeshVirtualNodeSpecListenerConnectionPoolTcp({
    required this.maxConnections,
  });

  final TfArg<num> maxConnections;

  Map<String, Object?> encode() => {
    'max_connections': maxConnections.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.health_check` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerHealthCheck {
  const AppmeshVirtualNodeSpecListenerHealthCheck({
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

  final TfArg<String> protocol;

  final TfArg<num> timeoutMillis;

  final TfArg<num> unhealthyThreshold;

  Map<String, Object?> encode() => {
    'healthy_threshold': healthyThreshold.toTfJson(),
    'interval_millis': intervalMillis.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    'protocol': protocol.toTfJson(),
    'timeout_millis': timeoutMillis.toTfJson(),
    'unhealthy_threshold': unhealthyThreshold.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.outlier_detection` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerOutlierDetection {
  const AppmeshVirtualNodeSpecListenerOutlierDetection({
    required this.maxEjectionPercent,
    required this.maxServerErrors,
    required this.baseEjectionDuration,
    required this.interval,
  });

  final TfArg<num> maxEjectionPercent;

  final TfArg<num> maxServerErrors;

  final AppmeshVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration
  baseEjectionDuration;

  final AppmeshVirtualNodeSpecListenerOutlierDetectionInterval interval;

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
final class AppmeshVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration {
  const AppmeshVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.outlier_detection.interval` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerOutlierDetectionInterval {
  const AppmeshVirtualNodeSpecListenerOutlierDetectionInterval({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.port_mapping` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerPortMapping {
  const AppmeshVirtualNodeSpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  final TfArg<num> port;

  final TfArg<String> protocol;

  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeout {
  const AppmeshVirtualNodeSpecListenerTimeout({
    this.grpc,
    this.http,
    this.http2,
    this.tcp,
  });

  final AppmeshVirtualNodeSpecListenerTimeoutGrpc? grpc;

  final AppmeshVirtualNodeSpecListenerTimeoutHttp? http;

  final AppmeshVirtualNodeSpecListenerTimeoutHttp2? http2;

  final AppmeshVirtualNodeSpecListenerTimeoutTcp? tcp;

  Map<String, Object?> encode() => {
    if (grpc != null) 'grpc': grpc!.encode(),
    if (http != null) 'http': http!.encode(),
    if (http2 != null) 'http2': http2!.encode(),
    if (tcp != null) 'tcp': tcp!.encode(),
  };
}

/// Typed helper for the `spec.listener.timeout.grpc` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutGrpc {
  const AppmeshVirtualNodeSpecListenerTimeoutGrpc({this.idle, this.perRequest});

  final AppmeshVirtualNodeSpecListenerTimeoutGrpcIdle? idle;

  final AppmeshVirtualNodeSpecListenerTimeoutGrpcPerRequest? perRequest;

  Map<String, Object?> encode() => {
    if (idle != null) 'idle': idle!.encode(),
    if (perRequest != null) 'per_request': perRequest!.encode(),
  };
}

/// Typed helper for the `spec.listener.timeout.grpc.idle` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutGrpcIdle {
  const AppmeshVirtualNodeSpecListenerTimeoutGrpcIdle({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout.grpc.per_request` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutGrpcPerRequest {
  const AppmeshVirtualNodeSpecListenerTimeoutGrpcPerRequest({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout.http` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutHttp {
  const AppmeshVirtualNodeSpecListenerTimeoutHttp({this.idle, this.perRequest});

  final AppmeshVirtualNodeSpecListenerTimeoutHttpIdle? idle;

  final AppmeshVirtualNodeSpecListenerTimeoutHttpPerRequest? perRequest;

  Map<String, Object?> encode() => {
    if (idle != null) 'idle': idle!.encode(),
    if (perRequest != null) 'per_request': perRequest!.encode(),
  };
}

/// Typed helper for the `spec.listener.timeout.http.idle` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutHttpIdle {
  const AppmeshVirtualNodeSpecListenerTimeoutHttpIdle({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout.http.per_request` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutHttpPerRequest {
  const AppmeshVirtualNodeSpecListenerTimeoutHttpPerRequest({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout.http2` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutHttp2 {
  const AppmeshVirtualNodeSpecListenerTimeoutHttp2({
    this.idle,
    this.perRequest,
  });

  final AppmeshVirtualNodeSpecListenerTimeoutHttp2Idle? idle;

  final AppmeshVirtualNodeSpecListenerTimeoutHttp2PerRequest? perRequest;

  Map<String, Object?> encode() => {
    if (idle != null) 'idle': idle!.encode(),
    if (perRequest != null) 'per_request': perRequest!.encode(),
  };
}

/// Typed helper for the `spec.listener.timeout.http2.idle` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutHttp2Idle {
  const AppmeshVirtualNodeSpecListenerTimeoutHttp2Idle({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout.http2.per_request` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutHttp2PerRequest {
  const AppmeshVirtualNodeSpecListenerTimeoutHttp2PerRequest({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.timeout.tcp` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutTcp {
  const AppmeshVirtualNodeSpecListenerTimeoutTcp({this.idle});

  final AppmeshVirtualNodeSpecListenerTimeoutTcpIdle? idle;

  Map<String, Object?> encode() => {if (idle != null) 'idle': idle!.encode()};
}

/// Typed helper for the `spec.listener.timeout.tcp.idle` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTimeoutTcpIdle {
  const AppmeshVirtualNodeSpecListenerTimeoutTcpIdle({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTls {
  const AppmeshVirtualNodeSpecListenerTls({
    required this.mode,
    required this.certificate,
    this.validation,
  });

  final TfArg<String> mode;

  final AppmeshVirtualNodeSpecListenerTlsCertificate certificate;

  final AppmeshVirtualNodeSpecListenerTlsValidation? validation;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'certificate': certificate.encode(),
    if (validation != null) 'validation': validation!.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsCertificate {
  const AppmeshVirtualNodeSpecListenerTlsCertificate({
    this.acm,
    this.file,
    this.sds,
  });

  final AppmeshVirtualNodeSpecListenerTlsCertificateAcm? acm;

  final AppmeshVirtualNodeSpecListenerTlsCertificateFile? file;

  final AppmeshVirtualNodeSpecListenerTlsCertificateSds? sds;

  Map<String, Object?> encode() => {
    if (acm != null) 'acm': acm!.encode(),
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.acm` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsCertificateAcm {
  const AppmeshVirtualNodeSpecListenerTlsCertificateAcm({
    required this.certificateArn,
  });

  final TfArg<String> certificateArn;

  Map<String, Object?> encode() => {
    'certificate_arn': certificateArn.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsCertificateFile {
  const AppmeshVirtualNodeSpecListenerTlsCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  final TfArg<String> certificateChain;

  final TfArg<String> privateKey;

  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
    'private_key': privateKey.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.sds` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsCertificateSds {
  const AppmeshVirtualNodeSpecListenerTlsCertificateSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.listener.tls.validation` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsValidation {
  const AppmeshVirtualNodeSpecListenerTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualNodeSpecListenerTlsValidationSubjectAlternativeNames?
  subjectAlternativeNames;

  final AppmeshVirtualNodeSpecListenerTlsValidationTrust trust;

  Map<String, Object?> encode() => {
    if (subjectAlternativeNames != null)
      'subject_alternative_names': subjectAlternativeNames!.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.subject_alternative_names` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsValidationSubjectAlternativeNames {
  const AppmeshVirtualNodeSpecListenerTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  final AppmeshVirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch
  match;

  Map<String, Object?> encode() => {'match': match.encode()};
}

/// Typed helper for the `spec.listener.tls.validation.subject_alternative_names.match` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch {
  const AppmeshVirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch({
    required this.exact,
  });

  final TfArg<List<Object?>> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.listener.tls.validation.trust` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsValidationTrust {
  const AppmeshVirtualNodeSpecListenerTlsValidationTrust({this.file, this.sds});

  final AppmeshVirtualNodeSpecListenerTlsValidationTrustFile? file;

  final AppmeshVirtualNodeSpecListenerTlsValidationTrustSds? sds;

  Map<String, Object?> encode() => {
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.trust.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsValidationTrustFile {
  const AppmeshVirtualNodeSpecListenerTlsValidationTrustFile({
    required this.certificateChain,
  });

  final TfArg<String> certificateChain;

  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.trust.sds` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecListenerTlsValidationTrustSds {
  const AppmeshVirtualNodeSpecListenerTlsValidationTrustSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.logging` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecLogging {
  const AppmeshVirtualNodeSpecLogging({this.accessLog});

  final AppmeshVirtualNodeSpecLoggingAccessLog? accessLog;

  Map<String, Object?> encode() => {
    if (accessLog != null) 'access_log': accessLog!.encode(),
  };
}

/// Typed helper for the `spec.logging.access_log` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecLoggingAccessLog {
  const AppmeshVirtualNodeSpecLoggingAccessLog({this.file});

  final AppmeshVirtualNodeSpecLoggingAccessLogFile? file;

  Map<String, Object?> encode() => {if (file != null) 'file': file!.encode()};
}

/// Typed helper for the `spec.logging.access_log.file` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecLoggingAccessLogFile {
  const AppmeshVirtualNodeSpecLoggingAccessLogFile({
    required this.path,
    this.format,
  });

  final TfArg<String> path;

  final AppmeshVirtualNodeSpecLoggingAccessLogFileFormat? format;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    if (format != null) 'format': format!.encode(),
  };
}

/// Typed helper for the `spec.logging.access_log.file.format` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecLoggingAccessLogFileFormat {
  const AppmeshVirtualNodeSpecLoggingAccessLogFileFormat({
    this.text,
    this.json,
  });

  final TfArg<String>? text;

  final List<AppmeshVirtualNodeSpecLoggingAccessLogFileFormatJson>? json;

  Map<String, Object?> encode() => {
    if (text != null) 'text': text!.toTfJson(),
    if (json != null) 'json': [for (final e in json!) e.encode()],
  };
}

/// Typed helper for the `spec.logging.access_log.file.format.json` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecLoggingAccessLogFileFormatJson {
  const AppmeshVirtualNodeSpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.service_discovery` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecServiceDiscovery {
  const AppmeshVirtualNodeSpecServiceDiscovery({this.awsCloudMap, this.dns});

  final AppmeshVirtualNodeSpecServiceDiscoveryAwsCloudMap? awsCloudMap;

  final AppmeshVirtualNodeSpecServiceDiscoveryDns? dns;

  Map<String, Object?> encode() => {
    if (awsCloudMap != null) 'aws_cloud_map': awsCloudMap!.encode(),
    if (dns != null) 'dns': dns!.encode(),
  };
}

/// Typed helper for the `spec.service_discovery.aws_cloud_map` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecServiceDiscoveryAwsCloudMap {
  const AppmeshVirtualNodeSpecServiceDiscoveryAwsCloudMap({
    this.attributes,
    required this.namespaceName,
    required this.serviceName,
  });

  final TfArg<Map<String, String>>? attributes;

  final TfArg<String> namespaceName;

  final TfArg<String> serviceName;

  Map<String, Object?> encode() => {
    if (attributes != null) 'attributes': attributes!.toTfJson(),
    'namespace_name': namespaceName.toTfJson(),
    'service_name': serviceName.toTfJson(),
  };
}

/// Typed helper for the `spec.service_discovery.dns` block of
/// `aws_appmesh_virtual_node` (derived from provider schema).
@immutable
final class AppmeshVirtualNodeSpecServiceDiscoveryDns {
  const AppmeshVirtualNodeSpecServiceDiscoveryDns({
    required this.hostname,
    this.ipPreference,
    this.responseType,
  });

  final TfArg<String> hostname;

  final TfArg<String>? ipPreference;

  final TfArg<String>? responseType;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    if (ipPreference != null) 'ip_preference': ipPreference!.toTfJson(),
    if (responseType != null) 'response_type': responseType!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appmesh_virtual_node`.
final class AwsAppmeshVirtualNode extends Resource {
  static const String tfType = 'aws_appmesh_virtual_node';

  AwsAppmeshVirtualNode({
    required super.localName,
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
           if (meshOwner != null) 'mesh_owner': meshOwner,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshVirtualNodeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}

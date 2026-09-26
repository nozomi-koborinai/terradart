// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_virtual_gateway`.
const Set<String> _awsAppmeshVirtualGatewaySensitive = <String>{};

/// Typed helper for the `spec` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpec {
  const AppmeshVirtualGatewaySpec({
    this.backendDefaults,
    required this.listener,
    this.logging,
  });

  final AppmeshVirtualGatewaySpecBackendDefaults? backendDefaults;

  final List<AppmeshVirtualGatewaySpecListener> listener;

  final AppmeshVirtualGatewaySpecLogging? logging;

  Map<String, Object?> encode() => {
    if (backendDefaults != null) 'backend_defaults': backendDefaults!.encode(),
    'listener': [for (final e in listener) e.encode()],
    if (logging != null) 'logging': logging!.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaults {
  const AppmeshVirtualGatewaySpecBackendDefaults({this.clientPolicy});

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicy? clientPolicy;

  Map<String, Object?> encode() => {
    if (clientPolicy != null) 'client_policy': clientPolicy!.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicy {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicy({this.tls});

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTls? tls;

  Map<String, Object?> encode() => {if (tls != null) 'tls': tls!.encode()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTls {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTls({
    this.enforce,
    this.ports,
    this.certificate,
    required this.validation,
  });

  final TfArg<bool>? enforce;

  final TfArg<List<Object?>>? ports;

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate?
  certificate;

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation
  validation;

  Map<String, Object?> encode() => {
    if (enforce != null) 'enforce': enforce!.toTfJson(),
    if (ports != null) 'ports': ports!.toTfJson(),
    if (certificate != null) 'certificate': certificate!.encode(),
    'validation': validation.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.certificate` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate({
    this.file,
    this.sds,
  });

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile?
  file;

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds?
  sds;

  Map<String, Object?> encode() => {
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.certificate.file` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile({
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
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames?
  subjectAlternativeNames;

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust
  trust;

  Map<String, Object?> encode() => {
    if (subjectAlternativeNames != null)
      'subject_alternative_names': subjectAlternativeNames!.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.subject_alternative_names` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch
  match;

  Map<String, Object?> encode() => {'match': match.encode()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.subject_alternative_names.match` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch({
    required this.exact,
  });

  final TfArg<List<Object?>> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust({
    this.acm,
    this.file,
    this.sds,
  });

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm?
  acm;

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustFile?
  file;

  final AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds?
  sds;

  Map<String, Object?> encode() => {
    if (acm != null) 'acm': acm!.encode(),
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust.acm` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm({
    required this.certificateAuthorityArns,
  });

  final TfArg<List<Object?>> certificateAuthorityArns;

  Map<String, Object?> encode() => {
    'certificate_authority_arns': certificateAuthorityArns.toTfJson(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust.file` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustFile {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustFile({
    required this.certificateChain,
  });

  final TfArg<String> certificateChain;

  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
  };
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust.sds` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds {
  const AppmeshVirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.listener` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListener {
  const AppmeshVirtualGatewaySpecListener({
    this.connectionPool,
    this.healthCheck,
    required this.portMapping,
    this.tls,
  });

  final AppmeshVirtualGatewaySpecListenerConnectionPool? connectionPool;

  final AppmeshVirtualGatewaySpecListenerHealthCheck? healthCheck;

  final AppmeshVirtualGatewaySpecListenerPortMapping portMapping;

  final AppmeshVirtualGatewaySpecListenerTls? tls;

  Map<String, Object?> encode() => {
    if (connectionPool != null) 'connection_pool': connectionPool!.encode(),
    if (healthCheck != null) 'health_check': healthCheck!.encode(),
    'port_mapping': portMapping.encode(),
    if (tls != null) 'tls': tls!.encode(),
  };
}

/// Typed helper for the `spec.listener.connection_pool` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerConnectionPool {
  const AppmeshVirtualGatewaySpecListenerConnectionPool({
    this.grpc,
    this.http,
    this.http2,
  });

  final AppmeshVirtualGatewaySpecListenerConnectionPoolGrpc? grpc;

  final AppmeshVirtualGatewaySpecListenerConnectionPoolHttp? http;

  final AppmeshVirtualGatewaySpecListenerConnectionPoolHttp2? http2;

  Map<String, Object?> encode() => {
    if (grpc != null) 'grpc': grpc!.encode(),
    if (http != null) 'http': http!.encode(),
    if (http2 != null) 'http2': http2!.encode(),
  };
}

/// Typed helper for the `spec.listener.connection_pool.grpc` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerConnectionPoolGrpc {
  const AppmeshVirtualGatewaySpecListenerConnectionPoolGrpc({
    required this.maxRequests,
  });

  final TfArg<num> maxRequests;

  Map<String, Object?> encode() => {'max_requests': maxRequests.toTfJson()};
}

/// Typed helper for the `spec.listener.connection_pool.http` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerConnectionPoolHttp {
  const AppmeshVirtualGatewaySpecListenerConnectionPoolHttp({
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
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerConnectionPoolHttp2 {
  const AppmeshVirtualGatewaySpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  final TfArg<num> maxRequests;

  Map<String, Object?> encode() => {'max_requests': maxRequests.toTfJson()};
}

/// Typed helper for the `spec.listener.health_check` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerHealthCheck {
  const AppmeshVirtualGatewaySpecListenerHealthCheck({
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

/// Typed helper for the `spec.listener.port_mapping` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerPortMapping {
  const AppmeshVirtualGatewaySpecListenerPortMapping({
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

/// Typed helper for the `spec.listener.tls` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTls {
  const AppmeshVirtualGatewaySpecListenerTls({
    required this.mode,
    required this.certificate,
    this.validation,
  });

  final TfArg<String> mode;

  final AppmeshVirtualGatewaySpecListenerTlsCertificate certificate;

  final AppmeshVirtualGatewaySpecListenerTlsValidation? validation;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'certificate': certificate.encode(),
    if (validation != null) 'validation': validation!.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsCertificate {
  const AppmeshVirtualGatewaySpecListenerTlsCertificate({
    this.acm,
    this.file,
    this.sds,
  });

  final AppmeshVirtualGatewaySpecListenerTlsCertificateAcm? acm;

  final AppmeshVirtualGatewaySpecListenerTlsCertificateFile? file;

  final AppmeshVirtualGatewaySpecListenerTlsCertificateSds? sds;

  Map<String, Object?> encode() => {
    if (acm != null) 'acm': acm!.encode(),
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.acm` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsCertificateAcm {
  const AppmeshVirtualGatewaySpecListenerTlsCertificateAcm({
    required this.certificateArn,
  });

  final TfArg<String> certificateArn;

  Map<String, Object?> encode() => {
    'certificate_arn': certificateArn.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.file` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsCertificateFile {
  const AppmeshVirtualGatewaySpecListenerTlsCertificateFile({
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
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsCertificateSds {
  const AppmeshVirtualGatewaySpecListenerTlsCertificateSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.listener.tls.validation` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsValidation {
  const AppmeshVirtualGatewaySpecListenerTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames?
  subjectAlternativeNames;

  final AppmeshVirtualGatewaySpecListenerTlsValidationTrust trust;

  Map<String, Object?> encode() => {
    if (subjectAlternativeNames != null)
      'subject_alternative_names': subjectAlternativeNames!.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.subject_alternative_names` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames {
  const AppmeshVirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  final AppmeshVirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch
  match;

  Map<String, Object?> encode() => {'match': match.encode()};
}

/// Typed helper for the `spec.listener.tls.validation.subject_alternative_names.match` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch {
  const AppmeshVirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch({
    required this.exact,
  });

  final TfArg<List<Object?>> exact;

  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Typed helper for the `spec.listener.tls.validation.trust` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsValidationTrust {
  const AppmeshVirtualGatewaySpecListenerTlsValidationTrust({
    this.file,
    this.sds,
  });

  final AppmeshVirtualGatewaySpecListenerTlsValidationTrustFile? file;

  final AppmeshVirtualGatewaySpecListenerTlsValidationTrustSds? sds;

  Map<String, Object?> encode() => {
    if (file != null) 'file': file!.encode(),
    if (sds != null) 'sds': sds!.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.trust.file` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsValidationTrustFile {
  const AppmeshVirtualGatewaySpecListenerTlsValidationTrustFile({
    required this.certificateChain,
  });

  final TfArg<String> certificateChain;

  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.trust.sds` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecListenerTlsValidationTrustSds {
  const AppmeshVirtualGatewaySpecListenerTlsValidationTrustSds({
    required this.secretName,
  });

  final TfArg<String> secretName;

  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.logging` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecLogging {
  const AppmeshVirtualGatewaySpecLogging({this.accessLog});

  final AppmeshVirtualGatewaySpecLoggingAccessLog? accessLog;

  Map<String, Object?> encode() => {
    if (accessLog != null) 'access_log': accessLog!.encode(),
  };
}

/// Typed helper for the `spec.logging.access_log` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecLoggingAccessLog {
  const AppmeshVirtualGatewaySpecLoggingAccessLog({this.file});

  final AppmeshVirtualGatewaySpecLoggingAccessLogFile? file;

  Map<String, Object?> encode() => {if (file != null) 'file': file!.encode()};
}

/// Typed helper for the `spec.logging.access_log.file` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecLoggingAccessLogFile {
  const AppmeshVirtualGatewaySpecLoggingAccessLogFile({
    required this.path,
    this.format,
  });

  final TfArg<String> path;

  final AppmeshVirtualGatewaySpecLoggingAccessLogFileFormat? format;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    if (format != null) 'format': format!.encode(),
  };
}

/// Typed helper for the `spec.logging.access_log.file.format` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecLoggingAccessLogFileFormat {
  const AppmeshVirtualGatewaySpecLoggingAccessLogFileFormat({
    this.text,
    this.json,
  });

  final TfArg<String>? text;

  final List<AppmeshVirtualGatewaySpecLoggingAccessLogFileFormatJson>? json;

  Map<String, Object?> encode() => {
    if (text != null) 'text': text!.toTfJson(),
    if (json != null) 'json': [for (final e in json!) e.encode()],
  };
}

/// Typed helper for the `spec.logging.access_log.file.format.json` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpecLoggingAccessLogFileFormatJson {
  const AppmeshVirtualGatewaySpecLoggingAccessLogFileFormatJson({
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

/// Factory wrapper for `aws_appmesh_virtual_gateway`.
final class AwsAppmeshVirtualGateway extends Resource {
  static const String tfType = 'aws_appmesh_virtual_gateway';

  AwsAppmeshVirtualGateway({
    required super.localName,
    required TfArg<String> meshName,
    TfArg<String>? meshOwner,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required AppmeshVirtualGatewaySpec spec,
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
  Set<String> get sensitiveFields => _awsAppmeshVirtualGatewaySensitive;

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
